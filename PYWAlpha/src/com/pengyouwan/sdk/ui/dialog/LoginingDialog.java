package com.pengyouwan.sdk.ui.dialog;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.base.BaseDialog;
import com.pengyouwan.sdk.activity.ForgetLoginPasswordActivity;
import com.pengyouwan.sdk.activity.IDCardInfomationActivity;
import com.pengyouwan.sdk.activity.RegisterActivity;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.manager.SDKEventDispatcher;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.open.ISDKEventCode;
import com.pengyouwan.sdk.open.ISDKEventExtraKey;
import com.pengyouwan.sdk.protocol.LoginNoPwdTask;
import com.pengyouwan.sdk.utils.BindPhoneTipsDialogUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.StaticsHelper;
import com.pengyouwan.sdk.utils.ToastUtil;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;

import java.lang.ref.WeakReference;

/**
 * 描述:登录中倒计时弹窗
 * 
 * @author CJ
 * @since 2016-7-1 下午2:52:55
 */
public class LoginingDialog extends BaseDialog {

	private Activity mActivity;

	private TextView accountText;

	public final static int CHANGE_TO_LOGIN = 0xA004;// 切换账号回到登录页面

	public final static int CHANGE_TO_LOGIN_FOR_NOPASS = 0xA005;// 切换账号去免登录页面

	private final int MSG_UI_LOGIN_START = 0xA001;

	private final int MSG_UI_LOGIN_SUCCESS = 0xA003;

	private SDKUser mUser, currentUser;

	private Handler mHandler;

	private static int CHANGE_TO = 0;// 界面跳转

	private boolean isGoLogin = false;// 是否需要登录

	private boolean isLoginable = true;// 是否允许登录

	private Button switchBtn;

	private CustomProgressDialog progressDialog;

	/**
	 * @param activity
	 * @param user
	 *            登录账号
	 * @param isGoLogin
	 *            是否需要登录（缓存登录直接倒计时后放行）
	 * @param changeTo
	 *            切换账号之后的界面跳转
	 */
	public LoginingDialog(Activity activity, SDKUser user, boolean isGoLogin,
			int changeTo) {
		super(activity, ResIdManager.getStyleId(activity,
				Rx.style.PYWTheme_Widget_Dialog));
		setContentView(ResIdManager.getLayoutId(getContext(),
				Rx.layout.pyw_dialog_logining));
		setCancelable(false);
		mHandler = new MyHandler(this);
		mActivity = activity;
		mUser = user;
		CHANGE_TO = changeTo;
		this.isGoLogin = isGoLogin;
		initView();
	}

	private static class MyHandler extends Handler {
		private WeakReference<LoginingDialog> mDialog;

		public MyHandler(LoginingDialog dialog) {
			mDialog = new WeakReference<LoginingDialog>(dialog);
		}

		@Override
		public void handleMessage(Message msg) {
			if (mDialog.get() != null) {
				mDialog.get().handleMessage(msg);
			}
		}
	}

	private void initView() {
		// 顶部显示
		getWindow().setGravity(Gravity.TOP);
		// 去掉padding值 dialog可全屏
		getWindow().getDecorView().setPadding(0, 0, 0, 0);
		// 设置动画
		getWindow().setWindowAnimations(
				ResIdManager.getStyleId(mActivity,
						Rx.style.PYWThem_LoginningDialog_Anim));
		// 手动设置满屏
		WindowManager.LayoutParams lp = getWindow().getAttributes();
		lp.width = WindowManager.LayoutParams.FILL_PARENT;
		lp.height = WindowManager.LayoutParams.WRAP_CONTENT;
		getWindow().setAttributes(lp);
		switchBtn = (Button) findViewById((ResIdManager.getId(getContext(),
				Rx.id.pyw_btn_dialog_switch)));
		accountText = (TextView) findViewById(ResIdManager.getId(getContext(),
				Rx.id.pyw_tv_account_name));
		switchBtn.setOnClickListener(mClickListener);
		// 显示规则
		currentUser = UserManager.getInstance().getCurrentUserForSDK();
		if (currentUser.getAccountType() == 1) {// 通行证登录
			if (TextUtils.isEmpty(currentUser.getNickName())) {// 昵称为空显示用户名
				if (!TextUtils.isEmpty(currentUser.getPhoneNo())) {
					accountText.setText("欢迎登录，" + currentUser.getPhoneNo());
				} else {
					accountText.setText("欢迎登录，" + mUser.getUserName());
				}
			} else {// 不为空显示昵称
				accountText.setText("欢迎登录，" + currentUser.getNickName());
			}
		} else {
			accountText.setText("欢迎登录，" + mUser.getUserName());
		}

		switchBtn.setOnClickListener(mClickListener);
		countDown();// 开始倒计时
	}

	public void handleMessage(Message msg) {
		switch (msg.what) {
		case MSG_UI_LOGIN_START:
			showProgress();
			break;
		case MSG_UI_LOGIN_SUCCESS:
			dismissProgress();
			if (isShowing()) {
				dismiss();
			}
			loginSuccess();
			break;
		default:
			break;
		}
	}

	private View.OnClickListener mClickListener = new View.OnClickListener() {

		public void onClick(View v) {
			if (v == switchBtn) {// 切换账号按钮
				cancleLogin();
				if (CHANGE_TO == CHANGE_TO_LOGIN) {
					new LoginDialog(mActivity).show();
					if (isShowing()) {
						dismiss();
					}
				} else if (CHANGE_TO == CHANGE_TO_LOGIN_FOR_NOPASS) {
					new LoginFromPassnoDialog(mActivity).show();
					if (isShowing()) {
						dismiss();
					}
				}
			}
		}

	};

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
			if (TextUtils.isEmpty(user.getPhoneNo())) {// 无绑定手机
				if (BindPhoneTipsDialogUtil.isToShowDialog()) {// 如果到钟弹框
					new BindPassNoTipsDialog(mActivity).show();
					BindPhoneTipsDialogUtil.setDialogTime();// 记录当前时间
				} else {
					if (mActivity.getClass() == ForgetLoginPasswordActivity.class
							|| mActivity.getClass() == RegisterActivity.class) {
					}
					sendSuccessCallBack();
				}
			} else {
				if (mActivity.getClass() == ForgetLoginPasswordActivity.class
						|| mActivity.getClass() == RegisterActivity.class) {
					SDKControler.finishActivities();
					// mActivity.finish();
				}
				sendSuccessCallBack();
			}
		}
		// 免登录成功的话清除账户列表
		UserManager.getInstance().cleanUserList();
	}

	/**
	 * 发送成功回调
	 */
	private void sendSuccessCallBack() {
		Bundle data = new Bundle();
		data.putSerializable(ISDKEventExtraKey.EXTRA_USER, UserManager
				.getInstance().getCurrentUser());
		int code = ISDKEventCode.CODE_LOGIN_SUCCESS;
		SDKEventDispatcher.sendEventNow(code, data);
        //更新登录时长信息
        StaticsHelper.getInstance().accountChange();
		UserManager.getInstance().setChangeAccount(false);
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

	private void showProgress() {
		if (progressDialog == null) {
			progressDialog = new CustomProgressDialog(mActivity, "请稍后...");
		}
		progressDialog.show();
	}

	private void dismissProgress() {
		if (progressDialog != null && progressDialog.isShowing()) {
			progressDialog.dismiss();
		}
	}

	private void cancleLogin() {
		isLoginable = false;
		mHandler.removeMessages(MSG_UI_LOGIN_START);
		if (progressDialog != null) {
			progressDialog.dismiss();
		}
	}

	/**
	 * 登陆倒计时
	 */
	private void countDown() {
		Thread countThread = new Thread(new Runnable() {
			public void run() {
				int i = 3;
				while (i > 0) {
					i--;
					try {
						Thread.sleep(1000);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
				if (isLoginable) {
					if (isGoLogin) {// 需要登录 则请求登录
						doLogin();
					} else {// 不需要登录 则直接登陆成功放行
						mHandler.sendEmptyMessage(MSG_UI_LOGIN_SUCCESS);
					}
				}
			}
		});
		countThread.start();
	}

	/**
	 * 正常登录方法
	 */
	private void doLogin() {
		mHandler.sendEmptyMessage(MSG_UI_LOGIN_START);
		SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
		try {
			LoginNoPwdTask task = new LoginNoPwdTask() {

				@Override
				public void callback(HttpResponse httpResponse) {
					LoginNoPwdResponse response = (LoginNoPwdResponse) httpResponse;
					if (response != null) {
						if (response.isOk()) {// 登录成功
							mHandler.sendEmptyMessage(MSG_UI_LOGIN_SUCCESS);
						} else {// 登录失败
							ToastUtil
									.showMsg(response.getErrorMsg() != null ? response
											.getErrorMsg() : "登录失败");
							dismissProgress();
							loginFail(response.getErrorMsg() != null ? response
									.getErrorMsg() : "登录失败");
						}
					}
				}
			};
			task.request(user.getPhoneNo(), mUser.getUserName(),
					user.getPhoneNoToken());
		} catch (AppException e) {
			e.printStackTrace();
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			loginFail("错误类型:" + e.getType() + ",code:" + e.getCode());
		}
	}

}
