package com.pengyouwan.sdk.ui.fragment;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.base.BaseWorkerFragment;
import com.pengyouwan.sdk.activity.IDCardInfomationActivity;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.entity.Constants.CodeConstants;
import com.pengyouwan.sdk.manager.SDKEventDispatcher;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.open.ISDKEventCode;
import com.pengyouwan.sdk.open.ISDKEventExtraKey;
import com.pengyouwan.sdk.open.User;
import com.pengyouwan.sdk.protocol.PassportRegisterTask;
import com.pengyouwan.sdk.ui.dialog.CustomProgressDialog;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.BehavioralHelper;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.StaticsHelper;
import com.pengyouwan.sdk.utils.ToastUtil;
import com.pyw.common.BehaviorConstants;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;

/**
 * 注册界面3--密码
 * 
 * @author CJ
 * @since 2016-3-31下午6:13:55
 */
public class RegisterPwdFragment extends BaseWorkerFragment {

	private Context mContext;

	private Bundle mBundle;

	private EditText edPwd;

	private String code;

	private String isCheck;// 是否验证通过

	private Button btnRegLogin;

	private final int MSG_REG_REQUEST = 0x1110;

	private final int MSG_REG_START = 0x1111;

	private final int MSG_REG_SUCCESS = 0x1112;

	private final int MSG_REG_FAILE = 0x1113;

	private String phone;

	private CustomProgressDialog mDialog;

	private ImageView mPwdVisible;

	private boolean mIsVisible = true;

	public static RegisterPwdFragment getInstance(Bundle bundle) {
		RegisterPwdFragment pwdFragment = new RegisterPwdFragment();
		pwdFragment.setArguments(bundle);
		return pwdFragment;
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		View view;
		mContext = getActivity();
		if (AppUtil.isScreenLandscape(mContext)) {
			view = inflater.inflate(ResIdManager.getLayoutId(getActivity(),
					Rx.layout.pyw_fragment_register_pwd_landscape), null);
		} else {
			view = inflater.inflate(ResIdManager.getLayoutId(getActivity(),
					Rx.layout.pyw_fragment_register_pwd_portrait), null);
		}
		initView(view);
		return view;
	}

	private void initView(View view) {
		mBundle = getArguments();
		phone = mBundle.getString("phone");
		code = mBundle.getString("code");
		isCheck = mBundle.getString("is_check");
		edPwd = (EditText) view.findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_et_register_pwd));
		btnRegLogin = (Button) view.findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_btn_login));
		mPwdVisible = (ImageView) view.findViewById(ResIdManager.getId(
				mContext, Rx.id.pyw_pwd_visible_img));
		mPwdVisible.setOnClickListener(mClickListener);
		btnRegLogin.setOnClickListener(mClickListener);
	}

	@Override
	public void onHiddenChanged(boolean hidden) {
		super.onHiddenChanged(hidden);
		if (!hidden) {
			String tempPhone = mBundle.getString("phone");
			String tempCode = mBundle.getString("code");
			String tempCheck = mBundle.getString("is_check");
			if (!TextUtils.isEmpty(tempPhone) && !phone.equals(tempPhone)) {// 防止来回切换
				phone = tempPhone;
			}
			if (!TextUtils.isEmpty(tempCode) && !code.equals(tempCode)) {// 防止来回切换
				code = tempCode;
			}
			if (!TextUtils.isEmpty(tempCheck) && !isCheck.equals(tempCheck)) {
				isCheck = tempCheck;
			}
		}
	}

	private View.OnClickListener mClickListener = new View.OnClickListener() {

		public void onClick(View v) {
			if (v == btnRegLogin) {
				// 往数据库写入行为操作数据
				BehavioralHelper.getInstance().saveBehavior(
						BehaviorConstants.PAGE.PHONE_REGISTRATION_3,
						BehaviorConstants.BEHAVIORA.REGISTRATION_AND_LOGIN,
						BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
				if (checkInfo()) {
					sendEmptyBackgroundMessage(MSG_REG_REQUEST);
				}
			} else if (v == mPwdVisible) {
				mIsVisible = AppUtil.changePwdVisible(edPwd, mPwdVisible,
						mIsVisible, mContext);
			}
		}
	};

	public void handleUiMessage(Message msg) {
		super.handleUiMessage(msg);
		switch (msg.what) {
		case MSG_REG_START:
			if (mDialog == null) {
				mDialog = new CustomProgressDialog(getActivity(), "请稍后...");
			}
			mDialog.show();
			break;
		case MSG_REG_SUCCESS:
			if (mDialog != null && mDialog.isShowing()) {
				mDialog.dismiss();
			}
			SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
			if (user.isVerify()) {
				Intent intent = new Intent();
				intent.setClass(mContext, IDCardInfomationActivity.class);
				// 此种方式注册activityresult，返回的result只会在acitivity中收到
				// modify by:zhj 2017-06-22
				// ((Activity)mContext).startActivityForResult(intent, 0);
				startActivityForResult(intent, 0);
			} else {
				dispatchSDKCallback();
			}
			break;
		case MSG_REG_FAILE:
			if (mDialog != null && mDialog.isShowing()) {
				mDialog.dismiss();
			}
			break;
		default:
			break;
		}
	}

	public void handleBackgroundMessage(Message msg) {
		super.handleBackgroundMessage(msg);
		switch (msg.what) {
		case MSG_REG_REQUEST:
			doRegister();
			break;
		default:
			break;
		}
	}

	/**
	 * 检测输入信息是否正确
	 * 
	 * @return
	 */
	private boolean checkInfo() {
		String pwd = edPwd.getText().toString();
		if (TextUtils.isEmpty(pwd)) {
			ToastUtil.showMsg("密码不能为空");
			return false;
		} else {
			if (pwd.length() < 6) {
				ToastUtil.showMsg("密码长度须大于6位");
				return false;
			}
		}
		return true;
	}

	/**
	 * 注册请求（包含登录、新建）
	 */
	private void doRegister() {
		sendEmptyUiMessage(MSG_REG_START);
		try {
			PassportRegisterTask regTask = new PassportRegisterTask() {
				@Override
				public void callback(HttpResponse httpResponse) {
					PassportRegisterResponse response = (PassportRegisterResponse) httpResponse;
					if (response != null) {
						if (response.isOk()) {
							sendEmptyUiMessage(MSG_REG_SUCCESS);
						} else {
							sendEmptyUiMessage(MSG_REG_FAILE);
							ToastUtil
									.showMsg(response.getErrorMsg() != null ? response
											.getErrorMsg() : "注册失败");
						}
					}
				}
			};
			String pwd = edPwd.getText().toString();
			regTask.request(phone, pwd, CodeConstants.CODE_REGISTER, isCheck);
		} catch (AppException e) {
			sendEmptyUiMessage(MSG_REG_FAILE);
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			e.printStackTrace();
		}
	}

	/**
	 * 发送回调
	 */
	private void dispatchSDKCallback() {
		User user = UserManager.getInstance().getCurrentUser();
		Bundle data = new Bundle();
		data.putSerializable(ISDKEventExtraKey.EXTRA_USER, user);
		int code = ISDKEventCode.CODE_LOGIN_SUCCESS;
		SDKEventDispatcher.sendEventNow(code, data);
		// 更新登录时长信息
		StaticsHelper.getInstance().accountChange();
		getActivity().finish();// 销毁界面 -- 进入游戏主界面
	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		if (requestCode == 0 && resultCode == 0) {
			dispatchSDKCallback();
		} else {
			ToastUtil.showMsg("注册失败，未实名制验证。");
		}
	}

}
