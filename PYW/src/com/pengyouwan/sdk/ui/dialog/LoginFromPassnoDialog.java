package com.pengyouwan.sdk.ui.dialog;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.base.BaseDialog;
import com.pengyouwan.sdk.activity.ForgetLoginPasswordActivity;
import com.pengyouwan.sdk.activity.IDCardInfomationActivity;
import com.pengyouwan.sdk.activity.RegisterActivity;
import com.pengyouwan.sdk.db.UserOperator;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.manager.SDKEventDispatcher;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.open.ISDKEventCode;
import com.pengyouwan.sdk.open.ISDKEventExtraKey;
import com.pengyouwan.sdk.protocol.AccountRegisterTask;
import com.pengyouwan.sdk.protocol.LoginNoPwdTask;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.StaticsHelper;
import com.pengyouwan.sdk.utils.ToastUtil;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;

import java.lang.ref.WeakReference;
import java.util.ArrayList;

/**
 * 描述:通行证登录后弹出框
 * 
 * @author CJ
 * @since 2016-4-7 下午5:35:25
 */
public class LoginFromPassnoDialog extends BaseDialog {

	private Button switchBtn, enterGameBtn;

	private View selectAccount, back;

	private Activity mActivity;

	private LinearLayout userNameLayout;

	private EditText userNameEditText;

	private PopupWindow mPopupWinodw;

	private ListView mListview;

	private BaseAdapter adapter;

	private SDKUser user;

	private ArrayList<SDKUser> mUsers;

	private TextView tvPassNo;

	private String mSelectUser;

	private Handler mHandler;

	private final int MSG_LOGIN_REQUEST = 0x1001;

	private final int MSG_LOGIN_START = 0x1002;

	private final int MSG_LOGIN_SUCCESS = 0x1003;

	private final int MSG_LOGIN_FAIL = 0x1004;

	private final int MSG_REG_START = 0x1005;

	private final int MSG_REG_SUCCESS = 0x1006;

	private final int MSG_REG_FAIL = 0x1007;

	private CustomProgressDialog mDialog;

	@Override
	public void onAttachedToWindow() {
		super.onAttachedToWindow();
		if (mUsers == null || mUsers.size() == 0) {
			doRegister();
		}
	}

	public LoginFromPassnoDialog(Activity activity) {
		super(activity, ResIdManager.getStyleId(activity, Rx.style.PYWTheme_Widget_Dialog));
		mActivity = activity;
		setCancelable(false);
		initView();
	}

	private void initView() {
		setContentView(ResIdManager.getLayoutId(getContext(), Rx.layout.pyw_dialog_login_passno));
		mHandler = new MyHandler(this);
		switchBtn = (Button) findViewById((ResIdManager.getId(getContext(), Rx.id.pyw_btn_dialog_switch)));
		enterGameBtn = (Button) findViewById((ResIdManager.getId(getContext(), Rx.id.pyw_btn_entergame)));
		enterGameBtn.setOnClickListener(mClickListener);
		switchBtn.setOnClickListener(mClickListener);
		tvPassNo = (TextView) findViewById((ResIdManager.getId(getContext(), Rx.id.pyw_tv_login_passno)));
		userNameEditText = (EditText) findViewById((ResIdManager.getId(getContext(), Rx.id.pyw_et_login_account)));
		userNameLayout = (LinearLayout) findViewById(
				(ResIdManager.getId(getContext(), Rx.id.pyw_layout_login_account)));
		selectAccount = findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_layout_select_account));
		if (SDKControler.getSDKType().equals("5")) {// 疯趣
			back = findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_btn_back_game));
		} else {
			back = findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_iv_back));
		}
		selectAccount.setOnClickListener(mClickListener);
		back.setOnClickListener(mClickListener);
		// 显示规则
		if (user == null) {
			user = UserManager.getInstance().getCurrentUserForSDK();
		}
		if (!TextUtils.isEmpty(user.getNickName())) {
			tvPassNo.setText("欢迎登录，" + user.getNickName() + "，请选择游戏账号");
		} else {
			tvPassNo.setText("欢迎登录，" + user.getPhoneNo() + "，请选择游戏账号");
		}
		initPopupWindow();
	}

	private static class MyHandler extends Handler {
		private WeakReference<LoginFromPassnoDialog> mDialog;

		public MyHandler(LoginFromPassnoDialog dialog) {
			mDialog = new WeakReference<LoginFromPassnoDialog>(dialog);
		}

		public void handleMessage(Message msg) {
			if (mDialog.get() != null) {
				mDialog.get().handleMessage(msg);
			}
		}
	}

	public void handleMessage(Message msg) {
		switch (msg.what) {
		case MSG_LOGIN_REQUEST:
			doLogin();
			break;
		case MSG_LOGIN_START:
			if (mDialog == null) {
				mDialog = new CustomProgressDialog(mActivity, "正在登录...");
			}
			mDialog.show();
			break;
		case MSG_LOGIN_SUCCESS:
			if (mDialog != null && mDialog.isShowing()) {
				mDialog.dismiss();
			}
			loginSuccess();
			break;
		case MSG_LOGIN_FAIL:
			if (mDialog != null && mDialog.isShowing()) {
				mDialog.dismiss();
			}
			break;
		case MSG_REG_START:
			if (mDialog == null) {
				mDialog = new CustomProgressDialog(mActivity, "正在注册...");
			}
			mDialog.show();
			break;
		case MSG_REG_SUCCESS:
			if (mDialog != null && mDialog.isShowing()) {
				mDialog.dismiss();
			}
			loginSuccess();
			break;
		case MSG_REG_FAIL:
			if (mDialog != null && mDialog.isShowing()) {
				mDialog.dismiss();
			}
			break;
		}
	}

	/**
	 * 初始化子账号列表
	 */
	private void initPopupWindow() {
		View view = getLayoutInflater().inflate(ResIdManager.getLayoutId(getContext(), Rx.layout.pyw_view_account_list),
				null);
		mPopupWinodw = new PopupWindow(view, AppUtil.dip2px(getContext(), 280), LayoutParams.WRAP_CONTENT, true);
		mPopupWinodw.setOutsideTouchable(true);
		mPopupWinodw.setBackgroundDrawable(new BitmapDrawable());
		mListview = (ListView) view.findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_list_accounts));
		initUsers();
		adapter = new MyListAdapter(getContext(), mUsers);
		mListview.setAdapter(adapter);
		mListview.setOnItemClickListener(new OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
				SDKUser user = (SDKUser) adapter.getItem(position);
				if (user != null) {
					mSelectUser = user.getUserName();
					userNameEditText.setText(mSelectUser);
					mPopupWinodw.dismiss();
				}
			}
		});

	}

	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		if (keyCode == KeyEvent.KEYCODE_BACK) {
			backPresses();
		}
		return super.onKeyDown(keyCode, event);
	}

	/**
	 * 初始化账号列表
	 */
	private void initUsers() {
		mUsers = new ArrayList<SDKUser>();
		JSONArray jsonArray = UserManager.getInstance().getUserList();
		if (jsonArray != null) {
			for (int i = 0; i < jsonArray.length(); i++) {
				try {
					JSONObject jobj = (JSONObject) jsonArray.get(i);
					SDKUser user = new SDKUser();
					user.setUserName(jobj.getString("account"));
					mUsers.add(user);
				} catch (JSONException e) {
					e.printStackTrace();
				}
			}
		}
		if (UserManager.getInstance().getChangeAccountType() == UserManager.CHANGE_ACCOUNT_OHTHER) {// 如果是游戏管理登录子账号
			userNameEditText.setText(UserOperator.getInstance().getChangeAccountInfo());
		} else {
			if (mUsers.size() > 0) {
				userNameEditText.setText(mUsers.get(0).getUserName());
			} else {
				userNameEditText.setText("");
			}
		}
	}

	private View.OnClickListener mClickListener = new View.OnClickListener() {
		@Override
		public void onClick(View v) {
			if (v == selectAccount) {
				if (mPopupWinodw != null) {
					if (adapter != null && adapter.getCount() > 0) {
						mPopupWinodw.showAsDropDown(userNameLayout, 0, -8);
					} else {
						ToastUtil.showMsg("没有缓存账号");
					}
				}
			} else if (v == switchBtn) {
				doRegister();
			} else if (v == enterGameBtn) {
				if (TextUtils.isEmpty(userNameEditText.getText().toString())) {
					ToastUtil.showMsg("账号不能为空");
				} else {
					mHandler.sendEmptyMessage(MSG_LOGIN_REQUEST);
				}
			} else if (v == back) {
				backPresses();
			}
		}
	};

	/**
	 * 返回去关闭窗口 显示登录框 清除user
	 */
	private void backPresses() {
		UserManager.getInstance().cleanCurrenUser();
		UserManager.getInstance().setChangeAccount(true);
		LoginDialog mDialog = new LoginDialog(getOwnerActivity());
		mDialog.show();
		// 隐藏当前窗口
		dismiss();
	}

	/**
	 * 发送成功回调
	 */
	private void loginSuccess() {
		if (isShowing()) {
			dismiss();
		}
		SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
		if (user.isVerify()) {// 无身份证验证
			Intent intent = new Intent();
			intent.setClass(mActivity, IDCardInfomationActivity.class);
			mActivity.startActivity(intent);
		} else {// 已验证
			if (mActivity.getClass() == ForgetLoginPasswordActivity.class
					|| mActivity.getClass() == RegisterActivity.class) {
				// mActivity.finish();
				SDKControler.finishActivities();
			}
			// 免登录成功的话清除账户列表
			UserManager.getInstance().cleanUserList();
			Bundle data = new Bundle();
			data.putSerializable(ISDKEventExtraKey.EXTRA_USER, UserManager.getInstance().getCurrentUser());
			int code = ISDKEventCode.CODE_LOGIN_SUCCESS;
			SDKEventDispatcher.sendEventNow(code, data);
			// 更新登录时长信息
			StaticsHelper.getInstance().accountChange();
			UserManager.getInstance().setChangeAccount(false);
		}
	}

	/**
	 * 发送失败回调
	 */
	private void loginFail(String errorMsg) {
		// 登录失败清除缓存
		UserManager.getInstance().cleanCurrenUser();
		if (isShowing()) {
			dismiss();
		}
		Bundle bundle = new Bundle();
		bundle.putString(ISDKEventExtraKey.EXTRA_ERRO, errorMsg);
		SDKEventDispatcher.sendEventNow(ISDKEventCode.CODE_LOGIN_FAILD, bundle);
	}

	private class MyListAdapter extends BaseAdapter {

		private Context context;

		private ArrayList<SDKUser> list;

		public MyListAdapter(Context context, ArrayList<SDKUser> lis) {
			this.context = context;
			this.list = lis;
		}

		@Override
		public int getCount() {
			if (list != null) {
				return list.size();
			}
			return 0;
		}

		@Override
		public Object getItem(int position) {
			if (list != null && list.size() > position) {
				return list.get(position);
			}
			return null;
		}

		@Override
		public long getItemId(int position) {
			return position;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			if (convertView == null) {
				LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
				convertView = inflater.inflate(ResIdManager.getLayoutId(context, Rx.layout.pyw_item_account), null);
			}
			ImageView delIv = (ImageView) convertView.findViewById(ResIdManager.getId(context, Rx.id.pyw_iv_delect));
			delIv.setVisibility(View.INVISIBLE);
			TextView text = (TextView) convertView.findViewById(ResIdManager.getId(context, Rx.id.pyw_tv_accountname));
			SDKUser user = list.get(position);
			if (user != null) {
				text.setText(user.getUserName());
			}
			return convertView;
		}

	}

	/**
	 * 免密码登录
	 */
	private void doLogin() {
		mHandler.sendEmptyMessage(MSG_LOGIN_START);
		SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
		try {
			LoginNoPwdTask task = new LoginNoPwdTask() {
				@Override
				public void callback(HttpResponse httpResponse) {
					LoginNoPwdResponse response = (LoginNoPwdResponse) httpResponse;
					if (response != null) {
						if (response.isOk()) {// 登录成功
							mHandler.sendEmptyMessage(MSG_LOGIN_SUCCESS);
						} else {// 登录失败
							mHandler.sendEmptyMessage(MSG_LOGIN_FAIL);
							ToastUtil.showMsg(response.getErrorMsg() != null ? response.getErrorMsg() : "登录失败");
						}
					}
				}
			};
			task.request(user.getPhoneNo(), userNameEditText.getText().toString().trim(), user.getPhoneNoToken());
		} catch (AppException e) {
			e.printStackTrace();
			mHandler.sendEmptyMessage(MSG_LOGIN_FAIL);
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
		}
	}

	/**
	 * 执行注册账号操作
	 */
	private void doRegister() {
		mHandler.sendEmptyMessage(MSG_REG_START);
		try {
			AccountRegisterTask task = new AccountRegisterTask() {

				@Override
				public void callback(HttpResponse httpResponse) {
					AccountRegisterResponse response = (AccountRegisterResponse) httpResponse;
					if (response != null) {
						if (response.isOk()) {
							mHandler.sendEmptyMessage(MSG_REG_SUCCESS);
						} else {
							ToastUtil.showMsg(response.getErrorMsg() != null ? response.getErrorMsg() : "注册失败");
							mHandler.sendEmptyMessage(MSG_REG_FAIL);
						}
					}
				}
			};
			task.request(user.getPhoneNo());
		} catch (AppException e) {
			e.printStackTrace();
			mHandler.sendEmptyMessage(MSG_REG_FAIL);
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
		}
	}
}
