package com.pengyouwan.sdk.activity;

import java.util.ArrayList;

import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.sdk.adapter.AccountGridAdapter;
import com.pengyouwan.sdk.base.BaseCommonTitleFragmentActivity;
import com.pengyouwan.sdk.db.UserOperator;
import com.pengyouwan.sdk.entity.Account;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.protocol.GetAccountListTask;
import com.pengyouwan.sdk.protocol.UserCenterCreateAccountTask;
import com.pengyouwan.sdk.protocol.DeleteAccountTask;
import com.pengyouwan.sdk.ui.dialog.AccountManagerDialog;
import com.pengyouwan.sdk.ui.dialog.CustomProgressDialog;
import com.pengyouwan.sdk.ui.dialog.LogoutDialog;
import com.pengyouwan.sdk.ui.fragment.ResetAccountPwdFragment;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.ToastUtil;
import com.pengyouwan.sdk.interfaces.AccountManagerCallback;
import com.pengyouwan.sdk.interfaces.LogOutCallback;

/**
 * 描述：账号管理页面
 * 
 * @author Hanson
 * @since 创建时间：2016-7-1 上午11:45:34
 * 
 */
public class AccountManagerActivity extends BaseCommonTitleFragmentActivity
		implements OnItemClickListener {
	private CustomProgressDialog progress;

	private GridView grid;

	private AccountGridAdapter<Account> mAdapter;

	private AccountManagerDialog mDialog, mCreateAccountDialog,mCurAccountDialog;

	private final int MSG_UI_SHOW_PROGRESS = 0x2000;

	private final int MSG_UI_HIDE_PROGRESS = 0x2003;

	private final int MSG_UI_GET_LIST_SUCCESS = 0x2004;

	private final int MSG_BACK_DO_NET_WORK = 0x2005;

	private final int MSG_BACK_REGIEST = 0x2006;

	public static final int RESULT_CHANGE_ACCOUNT = 0xAA10;
	
	private ArrayList<Account> userList;

	private String account;
	
	private LogoutDialog mLogoutdialog,mDeleteDialog;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(ResIdManager.getLayoutId(this,
				Rx.layout.pyw_activity_account_manager));
		initView();
	}

	// 初始化
	private void initView() {
		setCommonTitle("游戏账号管理");
		grid = (GridView) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_view_grid));
		// 根据横竖屏状态选择gridview列数 横屏4个，竖屏2个
		if (AppUtil.isScreenLandscape(this)) {
			grid.setNumColumns(4);
		} else {
			grid.setNumColumns(2);
		}
		mAdapter = new AccountGridAdapter<Account>(this, null, 1);
		grid.setAdapter(mAdapter);
		grid.setOnItemClickListener(this);
		sendEmptyBackgroundMessage(MSG_BACK_DO_NET_WORK);
	}

	@Override
	public void handleUiMessage(Message msg) {
		switch (msg.what) {
		case MSG_UI_SHOW_PROGRESS:
			if (progress == null) {
				progress = new CustomProgressDialog(
						AccountManagerActivity.this, "请稍后...");
			}
			progress.show();
			break;
		case MSG_UI_HIDE_PROGRESS:
			hideProgresss();
			break;
		case MSG_UI_GET_LIST_SUCCESS:
			hideProgresss();
			mAdapter.setDatas(userList);
			mAdapter.notifyDataSetChanged();
			break;
		}
	}

	@Override
	public void handleBackgroundMessage(Message msg) {
		String pass = UserManager.getInstance().getCurrentUserForSDK()
				.getPhoneNo();
		String token = UserManager.getInstance().getCurrentUserForSDK()
				.getPhoneNoToken();
		if (TextUtils.isEmpty(pass)) {
			ToastUtil.showMsg("没获取到当前账号的通信证");
			return;
		}
		switch (msg.what) {
		case MSG_BACK_DO_NET_WORK:
			doNetWork(pass,token);
			break;
		case MSG_BACK_REGIEST:
			doRegiest(pass,token);
			break;
		}
	}

	//获取账号列表
	private void doNetWork(String pass,String passnotoken) {
		sendEmptyUiMessage(MSG_UI_SHOW_PROGRESS);
		GetAccountListTask task = new GetAccountListTask() {
			@Override
			public void callback(HttpResponse httpResponse) {
				GetAccountResponse response = (GetAccountResponse) httpResponse;
				if (response != null && response.isOk()) {
					userList = (ArrayList<Account>) response.getStrings();
					if (userList != null && userList.size() > 0) {
						sendEmptyUiMessage(MSG_UI_GET_LIST_SUCCESS);
					} else {
						sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);
						ToastUtil.showMsg(response.getErrorMsg() != null ? response.getErrorMsg()
                                : "获取账号列表失败");
					}
				} else {
					sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);
				}
			}
		};
		try {
			task.request(pass,passnotoken);
		} catch (AppException e) {
			sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			e.printStackTrace();
		}
	}

	private void hideProgresss() {
		if (progress != null) {
			progress.dismiss();
		}
	}

	@Override
	public void onItemClick(AdapterView<?> parent, View view, int position,
			long id) {
		if (mAdapter != null) {
			Account obj = mAdapter.getItem(position);
			if (obj == null) {
				// 点击的是创建账号
				showCreateAccountDialog();
			} else {
				// 此处obj肯定不为空
				SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
				account = obj.getUsername();
				if(obj.getIsFreeze()== 1){
					return;
				}
				if (user.getUserName().equals(account)) {
					showCurDialog();// 点击了当前登录的账号
				}else{
					showDialog();
				}
			}
		}
	}
	
	// 账号管理dialog
	private void showDialog() {
		if (mDialog == null) {
			mDialog = new AccountManagerDialog(AccountManagerActivity.this);
			mDialog.setCallback(new AccountManagerCallback() {
				@Override
				public void onItemClick(int position) {
					mDialog.dismiss();
					switch (position) {
					case 0:
						showLogoutDialog();
						break;
					case 1:
						Intent intent = ResetAccountPwdUnBindAccountActivity
								.createPwdIntent(AccountManagerActivity.this,
										account);
						startActivity(intent);
						break;
					case 2:
						Intent intent1 = ResetAccountPwdUnBindAccountActivity
								.createUnbindIntent(
										AccountManagerActivity.this, account);
						startActivityForResult(intent1, 0x11);
						break;
					case 3:
						showDeleteDialog();
						break;

					}
				}
			});
		}
		mDialog.show();
	}
	
	// 账号管理dialog
		private void showCurDialog() {
			if (mCurAccountDialog == null) {
				mCurAccountDialog = new AccountManagerDialog(AccountManagerActivity.this,-1,1);
				mCurAccountDialog.setCallback(new AccountManagerCallback() {
					@Override
					public void onItemClick(int position) {
						mCurAccountDialog.dismiss();
						switch (position) {
						case 0:
							Intent intent = ResetAccountPwdUnBindAccountActivity.createPwdIntent(AccountManagerActivity.this,account);
							startActivity(intent);
							break;
						case 1:
							Intent intent1 = ResetAccountPwdUnBindAccountActivity.createPwdIntent(AccountManagerActivity.this,account);
							startActivity(intent1);
							break;
						case 2:
							Intent intent2 = ResetAccountPwdUnBindAccountActivity.createUnbindIntent(AccountManagerActivity.this, account);
							startActivityForResult(intent2, 0x11);
							break;
						}
					}
				});
			}
			mCurAccountDialog.show();
		}

	// 创建账号dialog
	private void showCreateAccountDialog() {
		if (mCreateAccountDialog == null) {
			mCreateAccountDialog = new AccountManagerDialog(
					AccountManagerActivity.this, 1, -1);
			mCreateAccountDialog.setCallback(new AccountManagerCallback() {

				@Override
				public void onItemClick(int position) {
					mCreateAccountDialog.dismiss();
					switch (position) {
					case 0:
						sendEmptyBackgroundMessage(MSG_BACK_REGIEST);
						break;
					case 2:
						Intent intent = new Intent(AccountManagerActivity.this,
								BindAccountActivity.class);
						startActivityForResult(intent, 0x11);
						break;
					}
				}
			});
		}
		mCreateAccountDialog.show();
	}
	
	//删除账号
	private void doDeleteAccount(){
		DeleteAccountTask task = new DeleteAccountTask() {
			@Override
			public void callback(HttpResponse httpResponse) {
				deleteAccountResponse response = (deleteAccountResponse)httpResponse;
				if (response != null) {
					if (response.isOk()) {
						ToastUtil.showMsg("删除账号成功");
						sendEmptyBackgroundMessage(MSG_BACK_DO_NET_WORK);
					} else {
						sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);
						ToastUtil.showMsg(response.getErrorMsg() != null ? response
										.getErrorMsg() : "删除账号失败");
					}
				}
			}
		};
		try {
			task.request(account);
		} catch (AppException e) {
			sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			e.printStackTrace();
		}
	}

	//新建账号
	private void doRegiest(String passNo,String token) {
		UserCenterCreateAccountTask task = new UserCenterCreateAccountTask() {
			@Override
			public void callback(HttpResponse httpResponse) {
				UserCenterCreateResponse response = (UserCenterCreateResponse) httpResponse;
				if (response != null) {
					if (response.isOk()) {
						ToastUtil.showMsg("新建账号成功");
						sendEmptyBackgroundMessage(MSG_BACK_DO_NET_WORK);
					} else {
						sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);
						ToastUtil
								.showMsg(response.getErrorMsg() != null ? response
										.getErrorMsg() : "创建账号失败");
					}
				}
			}
		};
		try {
			task.request(passNo,token);
		} catch (AppException e) {
			sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			e.printStackTrace();
		}

	}


	private void showLogoutDialog() {
		if (mLogoutdialog == null) {
			mLogoutdialog = new LogoutDialog(AccountManagerActivity.this,-1);
			mLogoutdialog.setOnLogoutCallback(new LogOutCallback() {
				@Override
				public void onLogout() {
					UserOperator.getInstance().updateChangeAccountInfo(
							UserManager.getInstance().getCurrentUserForSDK()
									.getPhoneNo(), account);
					mLogoutdialog.dismiss();
					setResult(RESULT_CHANGE_ACCOUNT);
					finish();
				}
			});
		}
		mLogoutdialog.show();
	}
	
	private void showDeleteDialog() {
		if (mDeleteDialog == null) {
			mDeleteDialog = new LogoutDialog(AccountManagerActivity.this,1);
			mDeleteDialog.setOnLogoutCallback(new LogOutCallback() {
				@Override
				public void onLogout() {
					doDeleteAccount();
					mDeleteDialog.dismiss();
				}
			});
		}
		mDeleteDialog.show();
	}
	


	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		super.onActivityResult(requestCode, resultCode, data);
		if (requestCode == UserCenterActivity.REQUEST_CODE) {
			if (resultCode == ResetAccountPwdFragment.FINISH_CURRENT_PAGE) {
				finish();
			} else {
				sendEmptyBackgroundMessage(MSG_BACK_DO_NET_WORK);
			}
		}
	}
}
