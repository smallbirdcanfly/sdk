package com.pengyouwan.sdk.ui.fragment;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Message;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.base.BaseWorkerFragment;
import com.pengyouwan.sdk.activity.ForgetLoginPasswordActivity;
import com.pengyouwan.sdk.activity.RegisterActivity;
import com.pengyouwan.sdk.entity.Constants.CodeConstants;
import com.pengyouwan.sdk.interfaces.ChangeFragmentCallback;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.protocol.CheckSmsCodeTask;
import com.pengyouwan.sdk.protocol.GetSmsCodeTask;
import com.pengyouwan.sdk.ui.dialog.CustomProgressDialog;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.BehavioralHelper;
import com.pengyouwan.sdk.utils.NetWorkUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.ToastUtil;
import com.pyw.common.BehaviorConstants;

/**
 * 描述:验证码共用frgament
 * 
 * @author CJ
 * @since 2016-7-4 下午12:04:15
 */
public class CommonCodeFragment extends BaseWorkerFragment {
	private Context mContext;

	private Bundle mBundle;

	private EditText edCode;

	private TextView tvGetCode, tvSendPhoneTips;

	private Button btnNext;

	private String phone;

	private String isCheckCode;// 验证码校验 1-成功 0-失败

	private int accountNum;// 账号总量

	private MyCountTime countTime;

	private final int MSG_CODE_REQUEST = 0x1110;

	private final int MSG_CODE_FAILE = 0x1112;

	private final int MSG_CHECK_REQUEST = 0x1113;

	private final int MSG_CHECK_START = 0x1114;

	private final int MSG_CHECK_SUCCESS = 0x1115;

	private final int MSG_CHECK_FAILE = 0x1116;

	private ChangeFragmentCallback mCallback;

	private int currentFrom;

	private CustomProgressDialog mDialog;

	public static CommonCodeFragment getInstance(Bundle bundle) {
		CommonCodeFragment codeFragment = new CommonCodeFragment();
		codeFragment.setArguments(bundle);
		return codeFragment;
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		View view;
		if (AppUtil.isScreenLandscape(getActivity())) {
			view = inflater.inflate(ResIdManager.getLayoutId(getActivity(),
					Rx.layout.pyw_fragment_common_code_landscape), null);
		} else {
			view = inflater.inflate(ResIdManager.getLayoutId(getActivity(),
					Rx.layout.pyw_fragment_common_code_portrait), null);
		}
		mContext = getActivity();
		mBundle = getArguments();
		initView(view);
		return view;
	}

	private void initView(View view) {
		edCode = (EditText) view.findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_et_register_code));
		tvGetCode = (TextView) view.findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_tv_getcode));
		tvGetCode.setOnClickListener(mClickListener);
		tvSendPhoneTips = (TextView) view.findViewById(ResIdManager.getId(
				mContext, Rx.id.pyw_tv_send_phone));
		btnNext = (Button) view.findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_btn_next));
		btnNext.setOnClickListener(mClickListener);
		countTime = new MyCountTime(60100, 1000);
		currentFrom = mBundle.getInt("TAG");
		if (currentFrom == CommonPhoneFragment.TAG_FROM_FINDBACK_LOGIN_PWD) {// 忘记密码

		}
		phone = mBundle.getString("phone");
		tvSendPhoneTips.setText(getSpan("已经向", phone));
		countTime.start();
		tvGetCode.setClickable(false);
	}

	private SpannableString getSpan(String str1, String phone) {
		SpannableString ss = new SpannableString(str1 + phone + "发送验证码");
		ss.setSpan(new ForegroundColorSpan(Color.parseColor("#ffaa00")),
				str1.length(), ss.length() - 5,
				Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		return ss;
	}

	@Override
	public void onHiddenChanged(boolean hidden) {
		super.onHiddenChanged(hidden);
		if (hidden) {
			countTime.cancel();
			tvGetCode.setText("重新获取");
			tvGetCode.setTextColor(Color.BLACK);
			tvGetCode.setClickable(true);
		} else {
			currentFrom = mBundle.getInt("TAG");
			String tempPhone = mBundle.getString("phone");// 更改号码发送验证码的时候更换号码
			if (!TextUtils.isEmpty(tempPhone) && !phone.equals(tempPhone)) {
				phone = tempPhone;
				tvSendPhoneTips.setText(getSpan("已经向", phone));
			}
			tvSendPhoneTips.setText(getSpan("已经向", phone));
			countTime.start();
			tvGetCode.setClickable(false);
		}
	}

	@Override
	public void onDestroy() {
		super.onDestroy();
		countTime.cancel();
	}

	private View.OnClickListener mClickListener = new View.OnClickListener() {

		public void onClick(View v) {
			if (v == tvGetCode) {
				// 往数据库写入行为操作数据
				BehavioralHelper.getInstance().saveBehavior(
						BehaviorConstants.PAGE.PHONE_REGISTRATION_2,
						BehaviorConstants.BEHAVIORA.GET_VERIFICATION_CODE_AGAIN,
						BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
				if (!NetWorkUtil.isNetworkAvailable(mContext)) {
					ToastUtil.showMsg(getString(ResIdManager.getStringId(
							mContext, Rx.string.pyw_networkunavilable)));
					return;
				}
				countTime.start();
				tvGetCode.setClickable(false);
				// 请求验证码
				sendEmptyBackgroundMessage(MSG_CODE_REQUEST);
			} else if (v == btnNext) {
				// 往数据库写入行为操作数据
				BehavioralHelper.getInstance().saveBehavior(
						BehaviorConstants.PAGE.PHONE_REGISTRATION_2,
						BehaviorConstants.BEHAVIORA.NEXT_STEP,
						BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
				String codeStr = edCode.getText().toString();
				if (TextUtils.isEmpty(codeStr)) {
					ToastUtil.showMsg("验证码不能为空");
					return;
				}
				if (mCallback == null) {
					ToastUtil.showMsg("校验出错，请重试");
					return;
				}
				sendEmptyBackgroundMessage(MSG_CHECK_REQUEST);
			}

		}

	};

	@Override
	public void handleBackgroundMessage(Message msg) {
		super.handleBackgroundMessage(msg);
		switch (msg.what) {
		case MSG_CODE_REQUEST:
			doRequestMessageCode();
			break;
		case MSG_CHECK_REQUEST:
			checkSmsCode();
			break;
		}
	}

	@Override
	public void handleUiMessage(Message msg) {
		super.handleUiMessage(msg);
		switch (msg.what) {
		case MSG_CODE_FAILE:
			countTime.cancel();
			tvGetCode.setText("重新获取");
			tvGetCode.setTextColor(Color.BLACK);
			tvGetCode.setClickable(true);
			break;
		case MSG_CHECK_START:
			if (mDialog == null) {
				mDialog = new CustomProgressDialog(getActivity(), "请稍后...");
			}
			mDialog.show();
			break;
		case MSG_CHECK_SUCCESS:
			if (mDialog != null && mDialog.isShowing()) {
				mDialog.dismiss();
			}
			doCallback();
			break;
		case MSG_CHECK_FAILE:
			if (mDialog != null && mDialog.isShowing()) {
				mDialog.dismiss();
			}
			if (edCode.getText().length() > 0) {// 错误时候清除验证码
				edCode.setText("");
			}
			break;
		default:
			break;
		}
	}

	/**
	 * 获取验证码
	 */
	private void doRequestMessageCode() {
		try {
			// 请求获取验证码
			GetSmsCodeTask messageCodeTask = new GetSmsCodeTask() {

				@Override
				public void callback(HttpResponse httpResponse) {
					GetSmsCodeResponse mResponse = (GetSmsCodeResponse) httpResponse;
					if (mResponse != null) {
						if (!mResponse.isOk()) {// 发送验证码成功无需处理
							sendEmptyUiMessage(MSG_CODE_FAILE);
							ToastUtil
									.showMsg(mResponse.getErroMsg() != null ? mResponse
											.getErroMsg() : "获取验证码失败");
						}
					}
				}
			};
			if (currentFrom == CommonPhoneFragment.TAG_FROM_REGISTER) {// 判断是注册类型，传相应类型变量
				messageCodeTask.request(phone, CodeConstants.CODE_REGISTER);
			} else {
				if (UserManager.getInstance().getCurrentUserForSDK() != null) {// 登录情况下的忘记密码
					messageCodeTask.request(phone,
							CodeConstants.CODE_FORGET_PWD_LOGIN);
				} else {
					messageCodeTask.request(phone,
							CodeConstants.CODE_FORGET_PWD_NOLOGIN);
				}
			}
		} catch (AppException e) {
			sendEmptyUiMessage(MSG_CODE_FAILE);
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			e.printStackTrace();
		}

	}

	public void setOnFragmentChangeCallback(ChangeFragmentCallback c) {
		mCallback = c;
	}

	/**
	 * 切换
	 */
	private void doCallback() {
		countTime.cancel();
		hideSoftInput(mContext);
		String mCode = edCode.getText().toString();
		mBundle.putString("code", mCode == null ? "" : mCode);
		mBundle.putString("is_check", isCheckCode);
		if (currentFrom == CommonPhoneFragment.TAG_FROM_REGISTER) {
			// 前面已经检测是否注册过
			mCallback.changeFragment(RegisterActivity.REGISTER_PAGE_THR);
		} else if (currentFrom == CommonPhoneFragment.TAG_FROM_FINDBACK_LOGIN_PWD) {// 忘记密码
			mBundle.putInt("accountNum", accountNum);
			mCallback
					.changeFragment(ForgetLoginPasswordActivity.GETPSW_PAGE_THR);
		}
	}

	/**
	 * 倒计时
	 */
	class MyCountTime extends CountDownTimer {

		public MyCountTime(long millisInFuture, long countDownInterval) {
			super(millisInFuture, countDownInterval);
		}

		@Override
		public void onTick(long millisUntilFinished) {
			tvGetCode.setText("" + millisUntilFinished / 1000 + "秒后重发");
			tvGetCode.setTextColor(ResIdManager.getColorId(getActivity(),
					Rx.color.pyw_common_hint_color));
		}

		@Override
		public void onFinish() {
			tvGetCode.setText(getString(ResIdManager.getStringId(mContext,
					Rx.string.pyw_bindphone_getcode)));
			tvGetCode.setTextColor(Color.BLACK);
			tvGetCode.setClickable(true);
		}
	}

	/**
	 * 检查验证码
	 */
	private void checkSmsCode() {
		sendEmptyUiMessage(MSG_CHECK_START);
		String code = edCode.getText().toString().trim();
		try {
			CheckSmsCodeTask messageCodeTask = new CheckSmsCodeTask() {

				@Override
				public void callback(HttpResponse httpResponse) {
					CheckSmsCodeResponse mResponse = (CheckSmsCodeResponse) httpResponse;
					if (mResponse != null) {
						if (mResponse.isOk()) {// 验证码正确
							sendEmptyUiMessage(MSG_CHECK_SUCCESS);
							isCheckCode = mResponse.getIsCheckCode();// 成功 返回1
							accountNum = mResponse.getAccountNum();// 返回账号总量
						} else {
							sendEmptyUiMessage(MSG_CHECK_FAILE);
							ToastUtil
									.showMsg(mResponse.getErroMsg() != null ? mResponse
											.getErroMsg() : "检查验证码失败");
						}
					}
				}
			};
			if (currentFrom == CommonPhoneFragment.TAG_FROM_REGISTER) {// 判断是注册类型，传相应类型变量
				messageCodeTask.request(phone, code,
						CodeConstants.CODE_REGISTER);
			} else {
				if (UserManager.getInstance().getCurrentUserForSDK() != null) {// 登录情况下的忘记密码
					messageCodeTask.request(phone, code,
							CodeConstants.CODE_FORGET_PWD_LOGIN);
				} else {
					messageCodeTask.request(phone, code,
							CodeConstants.CODE_FORGET_PWD_NOLOGIN);
				}
			}
		} catch (AppException e) {
			sendEmptyUiMessage(MSG_CHECK_FAILE);
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			e.printStackTrace();
		}
	}
}
