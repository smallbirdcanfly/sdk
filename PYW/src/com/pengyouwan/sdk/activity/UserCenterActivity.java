package com.pengyouwan.sdk.activity;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Message;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.sdk.base.BaseCommonTitleFragmentActivity;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.entity.UserCenter;
import com.pengyouwan.sdk.interfaces.LogOutCallback;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.open.PYWPlatform;
import com.pengyouwan.sdk.protocol.UserCenterTask;
import com.pengyouwan.sdk.ui.dialog.LogoutDialog;
import com.pengyouwan.sdk.ui.widget.TipsLayout;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.NetWorkUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.ToastUtil;

/**
 * 描述：个人中心页面
 * 
 * @author Hanson
 * @since 创建时间：2016-6-30 下午3:12:19
 * 
 */
public class UserCenterActivity extends BaseCommonTitleFragmentActivity
		implements OnClickListener {

	public static final int REQUEST_CODE = 0x11;
	// 重新加载数据
	protected final int MSG_BACK_LOAD_DATA = 0x2000;
	// 开始加载
	private final int MSG_UI_START_LOADING = 0x1000;
	// 加载成功
	private final int MSG_UI_LOAD_SUCCESS = 0x1001;
	// 加载失败
	private final int MSG_UI_LOAD_FAILE = 0x1002;
	// token失效
	private final int MSG_UI_TOKEN_FAILE = 0x1003;

	public static final int CODE_RETURN_MODIFYPWD = 0x1003;
	// 加载界面控件
	private TipsLayout mTipsLayout;

	private LinearLayout payPassword, voucher, back, loginPassword,
			bottomLandscape, bottomPortrait;

	private TextView account, payPasswordState, hasMoneyText, promptText,version_code;

	private View switchAccount, contact;

	private Button manageAccount;

	private UserCenter userCenter;

	private LogoutDialog mLogoutdialog;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(ResIdManager.getLayoutId(UserCenterActivity.this,
				Rx.layout.pyw_activity_usercenter_portrait));
		switchAccount = findViewById(ResIdManager.getId(this,
				Rx.id.pyw_btn_change_account));
		bottomLandscape = (LinearLayout) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_layout_bottom_landscape));
		bottomPortrait = (LinearLayout) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_layout_bottom_portrait));
		if (AppUtil.isScreenLandscape(UserCenterActivity.this)) {// 判断是否是横屏状态，调整界面布局
			bottomLandscape.setVisibility(View.VISIBLE);
			bottomPortrait.setVisibility(View.GONE);
			contact = bottomLandscape.findViewById(ResIdManager.getId(
					UserCenterActivity.this, Rx.id.pyw_layout_contacts));
			version_code = (TextView) bottomLandscape.findViewById(ResIdManager.getId(
					UserCenterActivity.this, Rx.id.pyw_version_codes));
		} else {
			bottomLandscape.setVisibility(View.GONE);
			bottomPortrait.setVisibility(View.VISIBLE);
			contact = bottomPortrait.findViewById(ResIdManager.getId(
					UserCenterActivity.this, Rx.id.pyw_layout_contact));
			version_code = (TextView) bottomPortrait.findViewById(ResIdManager.getId(
					UserCenterActivity.this, Rx.id.pyw_version_code));
		}
		initViews();
	}

	@Override
	protected void onResume() {
		super.onResume();
		if (NetWorkUtil.isNetworkAvailable(this)) {
			sendEmptyBackgroundMessage(MSG_BACK_LOAD_DATA);
		} else {
			sendEmptyUiMessage(MSG_UI_LOAD_FAILE);
		}
	}

	private void initViews() {
		back = (LinearLayout) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_layout_common_title_bar_back));
		voucher = (LinearLayout) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_layout_voucher));
		account = (TextView) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_tv_account));
		loginPassword = (LinearLayout) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_layout_loginpassword));
		payPassword = (LinearLayout) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_layout_paypassword));
		payPasswordState = (TextView) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_tv_modify_pay));
		manageAccount = (Button) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_btn_manage_account));
		hasMoneyText = (TextView) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_tv_usemoney));
		promptText = (TextView) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_txt_usercenter_prompt));
		contact.setOnClickListener(this);
		loginPassword.setOnClickListener(this);
		payPassword.setOnClickListener(this);
		back.setOnClickListener(this);
		switchAccount.setOnClickListener(this);
		voucher.setOnClickListener(this);
		manageAccount.setOnClickListener(this);
		version_code.setText("版本号：" + PYWPlatform.VERSION_NAME);
		setCommonTitle(ResIdManager.getStringId(this, Rx.string.pyw_usercenter));
		/**
		 * 获取我的代金券可用金额
		 */
		mTipsLayout = (TipsLayout) findViewById(ResIdManager.getId(
				UserCenterActivity.this, Rx.id.pyw_layout_tips));

		mTipsLayout.setOnRefreshButtonClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				if (!NetWorkUtil.isNetworkAvailable(UserCenterActivity.this)) {
					ToastUtil.showMsg(getString(ResIdManager.getStringId(
							UserCenterActivity.this,
							Rx.string.pyw_networkunavilable)));
					return;
				}
				sendEmptyBackgroundMessage(MSG_BACK_LOAD_DATA);
			}
		});
	}

	/**
	 * 获取数据成功后改变页面内容显示
	 */
	private void changeContent() {
		String passNo = userCenter.getPhoneNo();
		int type = userCenter.getType();
		String name = userCenter.getAccount();
		manageAccount.setVisibility(View.VISIBLE);
		String verifyStr = userCenter.isVerify() == true ? " 已认证" : "";
		if (type == 1) {// 判断是否通行证1为通行证、2为游戏账号
			manageAccount.setText("游戏账号管理");
			String nickName = userCenter.getNickname();
			if (!TextUtils.isEmpty(nickName)) {
				account.setText(getSpan("欢迎您，", nickName + verifyStr, false));
			} else {
				account.setText(getSpan("欢迎您，", passNo + verifyStr, true));
			}
			if (!userCenter.isHave_pay_pwd()) {
				payPasswordState.setText("未设置");
			} else {
				payPasswordState.setText("");
			}
			promptText.setVisibility(View.INVISIBLE);// 通行证登录不显示提示
		} else {
			if (TextUtils.isEmpty(userCenter.getPhoneNo())) {
				payPasswordState.setText("不可用");
			} else {
				if (!userCenter.isHave_pay_pwd()) {
					payPasswordState.setText("未设置");
				} else {
					payPasswordState.setText("");
				}
			}

			if (TextUtils.isEmpty(passNo)) {
				manageAccount.setText("绑定手机");
			} else {
				manageAccount.setVisibility(View.GONE);
			}
			account.setText(getSpan("欢迎您，", name + verifyStr, false));
			promptText.setVisibility(View.VISIBLE);
		}
		if (userCenter.getCoupon_count() != 0) {
			hasMoneyText.setText(userCenter.getCoupon_count() + "张可用");
		} else {
			hasMoneyText.setText("无可用代金券");
		}
	}

	/**
	 * @param str1
	 * @param phone
	 * @param isPhone
	 *            是否号码
	 * @return
	 */
	private SpannableString getSpan(String str1, String phone, boolean isPhone) {
		SpannableString ss = new SpannableString(str1 + phone);
		ss.setSpan(new ForegroundColorSpan(Color.parseColor("#ffaa00")),
				str1.length(), ss.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		ss.setSpan(new StyleSpan(Typeface.BOLD), str1.length(), ss.length(),
				Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		return ss;
	}

	@Override
	public void onClick(View v) {
		if (manageAccount == v) {
			String passNo = userCenter.getPhoneNo();
			int type = userCenter.getType();
			if (type == 1) {// 1为通行证账号，2为游戏账号
				Intent intent = new Intent(UserCenterActivity.this,
						AccountManagerActivity.class);
				startActivityForResult(intent, REQUEST_CODE);
			} else {
				if (TextUtils.isEmpty(passNo)) {// 游戏账号登录下，如果未绑定手机点击按钮跳到绑定手机页面
					Intent intent = new Intent(UserCenterActivity.this,
							BindMobilePhoneActivity.class);
					startActivity(intent);
				}
			}
		} else if (v == switchAccount) {
			showLogoutDialog();
		} else if (v == voucher) {
			Intent intent = new Intent(UserCenterActivity.this,
					MyVoucherActivity.class);
			startActivity(intent);
		} else if (v == back) {
			finish();
		} else if (v == loginPassword) {
			Intent intent = new Intent(UserCenterActivity.this,
					ResetLoginPasswordActivity.class);
			startActivityForResult(intent, REQUEST_CODE);
		} else if (v == payPassword) {
			if (!TextUtils.isEmpty(userCenter.getPhoneNo())) {// 通行证都进入设置交易密码
				if (userCenter.getType() == 1) {
					if (userCenter.isHave_pay_pwd()) {
						Intent intent = SetPayPasswordActivity
								.createSetPayPasswordActivity(
										UserCenterActivity.this,
										userCenter,
										SetPayPasswordActivity.FRAGMENT_FORGETFIND);
						startActivity(intent);
					} else {
						Intent intent = SetPayPasswordActivity
								.createSetPayPasswordActivity(
										UserCenterActivity.this, userCenter,
										SetPayPasswordActivity.FRAGMENT_SETPAY);
						startActivity(intent);
					}
				} else {
					ToastUtil.showMsg("请使用手机账号登录！！");
				}
			} else {
				ToastUtil.showMsg("请先绑定手机！！");
			}
		} else if (contact == v) {
			AppUtil.callPhone(UserCenterActivity.this);
		}
	}

	private void showLogoutDialog() {
		if (mLogoutdialog == null) {
			mLogoutdialog = new LogoutDialog(UserCenterActivity.this, -1);
			mLogoutdialog.setOnLogoutCallback(new LogOutCallback() {
				@Override
				public void onLogout() {
					mLogoutdialog.dismiss();
					doLogout(false);
				}
			});
		}
		mLogoutdialog.show();
	}

	// 执行登出操作并发送回调事件 isAccountMangerChange --是否用户管理切换账号
	private void doLogout(boolean isAccountMangerChange) {
		UserManager manager = UserManager.getInstance();
		if (isAccountMangerChange) {
			manager.setChangeAccoutType(UserManager.CHANGE_ACCOUNT_OHTHER);
		} else {
			manager.setChangeAccount(true);
		}
		UserManager.getInstance().logout();
		finish();
	}

	@Override
	public void handleBackgroundMessage(Message msg) {
		super.handleBackgroundMessage(msg);
		switch (msg.what) {
		case MSG_BACK_LOAD_DATA:
			loadData();
			break;
		}
	}

	// 加载数据
	private void loadData() {
		sendEmptyUiMessage(MSG_UI_START_LOADING);
		UserCenterTask mTask = new UserCenterTask() {
			@Override
			public void callback(HttpResponse httpResponse) {
				UserCenterResponse mResponse = (UserCenterResponse) httpResponse;
				if (mResponse != null) {
					if (mResponse.isOk()) {
						userCenter = mResponse.getUserCenter();
						sendEmptyUiMessage(MSG_UI_LOAD_SUCCESS);
					} else if (mResponse.isTokenError()) {
						sendEmptyUiMessage(MSG_UI_TOKEN_FAILE);
					} else {
						sendEmptyUiMessage(MSG_UI_LOAD_FAILE);
					}
				}

			}
		};
		try {
			SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
			if (user.getAccountType() == 1) {// 1为通行证账号，2为游戏账号
				mTask.request(user.getPhoneNo(), user.getUserName(),
						user.getPhoneNoToken(), user.getAccountType());
			} else {
				mTask.request("", user.getUserName(), user.getToken(),
						user.getAccountType());
			}
		} catch (AppException e) {
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			sendEmptyUiMessage(MSG_UI_LOAD_FAILE);
			e.printStackTrace();
		}
	}

	@Override
	public void handleUiMessage(Message msg) {
		super.handleUiMessage(msg);
		switch (msg.what) {
		case MSG_UI_START_LOADING:
			mTipsLayout.show(TipsLayout.TYPE_LOADING);
			break;
		case MSG_UI_LOAD_SUCCESS:
			changeContent();
			mTipsLayout.hide();
			break;
		case MSG_UI_LOAD_FAILE:
			mTipsLayout.show(TipsLayout.TYPE_FAILE);
			break;
		case MSG_UI_TOKEN_FAILE:
			AppUtil.tokenErrorLogout(UserCenterActivity.this);
			break;
		}
	}

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		super.onActivityResult(requestCode, resultCode, data);
		if (requestCode == REQUEST_CODE
				&& resultCode == AccountManagerActivity.RESULT_CHANGE_ACCOUNT) {
			doLogout(true);
		} else if (requestCode == REQUEST_CODE
				&& resultCode == CODE_RETURN_MODIFYPWD) {
			doLogout(false);
		}
	}

}
