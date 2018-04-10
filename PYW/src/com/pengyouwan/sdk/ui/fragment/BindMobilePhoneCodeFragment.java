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
import com.pengyouwan.sdk.activity.BindMobilePhoneActivity;
import com.pengyouwan.sdk.activity.ResetAccountPwdUnBindAccountActivity;
import com.pengyouwan.sdk.entity.Constants.CodeConstants;
import com.pengyouwan.sdk.interfaces.ChangeFragmentCallback;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.protocol.CheckSmsAndBindTask;
import com.pengyouwan.sdk.protocol.CheckSmsCodeTask;
import com.pengyouwan.sdk.protocol.GetSmsCodeTask;
import com.pengyouwan.sdk.ui.dialog.CustomProgressDialog;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.BehavioralHelper;
import com.pengyouwan.sdk.utils.NetWorkUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.StringUtil;
import com.pengyouwan.sdk.utils.ToastUtil;
import com.pyw.common.BehaviorConstants;

/**
 * 描述：注册界面2--验证码
 * 
 * @author Hanson
 * @since 创建时间：2016-6-30 下午7:08:59
 * 
 */
public class BindMobilePhoneCodeFragment extends BaseWorkerFragment {

	private Context mContext;

	private Bundle mBundle;

	private EditText edCode;

	private TextView tvGetCode, tvSendPhoneTips, tvOtherTips;

	private Button btnNext;

	private String phone;

	private MyCountTime countTime;

	private final int MSG_CODE_REQUEST = 0x1110;

	private final int MSG_CODE_FAILE = 0x1112;

	private final int MSG_CHECK_REQUEST = 0x1113;

	private final int MSG_CHECK_START = 0x1114;

	private final int MSG_CHECK_SUCCESS = 0x1115;

	private final int MSG_CHECK_FAILE = 0x1116;
	
	private final int MSG_BIND_FAILE = 0x1117;
	
	private final int MSG_BIND_SUCCESS = 0x1118;

	private ChangeFragmentCallback mCallback;

	private int currentFrom;

	private CustomProgressDialog mDialog;

	public static BindMobilePhoneCodeFragment getInstance(Bundle bundle) {
		BindMobilePhoneCodeFragment codeFragment = new BindMobilePhoneCodeFragment();
		codeFragment.setArguments(bundle);
		return codeFragment;
	}

	public void setOnFragmentChangeCallback(ChangeFragmentCallback c) {
		mCallback = c;
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		View view;
		if (AppUtil.isScreenLandscape(getActivity())) {
			view = inflater.inflate(ResIdManager.getLayoutId(getActivity(),
					Rx.layout.pyw_fragment_bindmobilephone_code_landscape),
					null);
		} else {
			view = inflater.inflate(ResIdManager.getLayoutId(getActivity(),Rx.layout.pyw_fragment_bindmobilephone_code_portrait),null);
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
		tvOtherTips = (TextView) view.findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_tv_other_tips));
		btnNext = (Button) view.findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_btn_next));
		btnNext.setOnClickListener(mClickListener);
		countTime = new MyCountTime(60100, 1000);
		currentFrom = mBundle.getInt("TAG");
		if (currentFrom == ResetAccountPwdUnBindAccountActivity.FRAGMENT_CODE) {// 解绑账号
			tvOtherTips.setText("");
		}
		phone = mBundle.getString("phone");
		tvSendPhoneTips.setText(getSpan("已经向", phone));
		sendEmptyBackgroundMessage(MSG_CODE_REQUEST);
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
						BehaviorConstants.PAGE.BIND_PHONE_PAGE_VERIFY_PHONE,
						BehaviorConstants.BEHAVIORA.GET_VERIFICATION_CODE_AGAIN,
						BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
				if (!NetWorkUtil.isNetworkAvailable(mContext)) {
					ToastUtil.showMsg(getString(ResIdManager.getStringId(
							mContext, Rx.string.pyw_networkunavilable)));
					return;
				}
				countTime.start();
				// 不能设置为45000，不然倒计时第一秒看不到
				tvGetCode.setClickable(false);
				// 请求验证码
				sendEmptyBackgroundMessage(MSG_CODE_REQUEST);
			} else if (v == btnNext) {
				// 往数据库写入行为操作数据
				BehavioralHelper.getInstance().saveBehavior(
						BehaviorConstants.PAGE.BIND_PHONE_PAGE_VERIFY_PHONE,
						BehaviorConstants.BEHAVIORA.NEXT_STEP,
						BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
				String codeStr = edCode.getText().toString();
				if (TextUtils.isEmpty(codeStr)) {
					ToastUtil.showMsg("验证码不能为空");
					return;
				}
				if (mCallback == null) {
					ToastUtil.showMsg("回调为空..");
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
			if (currentFrom == ResetAccountPwdUnBindAccountActivity.FRAGMENT_CODE) {// 判断是解绑账号，传相应类型变量
				checkSmsCode();
			} else {
				checkAndBind();
			}
			break;
		}
	}

	/**
	 * 校验验证码，当已经是通行证时后台直接调用绑定接口，如果不是通行证就根据返回码判断校验成功或校验失败
	 */
	private void checkAndBind() {
		String sms = edCode.getText().toString();
		if(StringUtil.isEmpty(sms)){
			ToastUtil.showMsg("验证码不能为空！");
		}
		sendEmptyUiMessage(MSG_CHECK_START);
		CheckSmsAndBindTask checkSmsAndBindTask = new CheckSmsAndBindTask() {

			@Override
			public void callback(HttpResponse httpResponse) {
				CheckSmsAndBindResponse response = (CheckSmsAndBindResponse) httpResponse;
				if (response != null) {
					if (response.isOk()) {// 发送验证码成功
						sendEmptyUiMessage(MSG_CHECK_FAILE);
						switch (response.getCode()) {
						case CheckSmsAndBindResponse.RESULT_CODE_BIND_CHECKSMS_FAIL:
							ToastUtil.showMsg(response.getErrorMsg() != null ? response.getErrorMsg() : "验证码错误");
							break;
						case CheckSmsAndBindResponse.RESULT_CODE_BIND_SUCCESS:
							sendEmptyUiMessage(MSG_BIND_SUCCESS);
							break;
						case CheckSmsAndBindResponse.RESULT_CODE_BIND_FAIL:
							ToastUtil.showMsg(response.getErrorMsg() != null ? response.getErrorMsg() : "绑定失败");
							break;
						case CheckSmsAndBindResponse.RESULT_CODE_CHECKSMS_SUCCESS:
							sendEmptyUiMessage(MSG_CHECK_SUCCESS);
							break;
						default:
							break;
						}
					} else {
						sendEmptyUiMessage(MSG_CHECK_FAILE);
						ToastUtil.showMsg(response.getErrorMsg() != null ? response.getErrorMsg() : "获取验证码失败");
					}
				}
			}
		};
		try {
			checkSmsAndBindTask.request(sms, CodeConstants.CODE_BIND_PHONE, mBundle.getString(BindMobilePhoneActivity.PHONE_NUM));
		} catch (AppException e) {
			sendEmptyUiMessage(MSG_CHECK_FAILE);
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			e.printStackTrace();
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
			if (mDialog != null) {
				mDialog.dismiss();
			}
			if (currentFrom == ResetAccountPwdUnBindAccountActivity.FRAGMENT_CODE) {// 判断是解绑账号，传相应类型变量
				mCallback.changeFragment(ResetAccountPwdUnBindAccountActivity.FRAGMENT_CODE);
			}else{
				mCallback.changeFragment(BindMobilePhoneActivity.FRAMGENT_SET_PWD);
			}
			break;
		case MSG_CHECK_FAILE:
			if (mDialog != null) {
				mDialog.dismiss();
			}
			if(edCode.getText().length()>0){//错误时候清除验证码
                edCode.setText("");
            }
			break;
		case MSG_BIND_FAILE:
			if (mDialog != null) {
				mDialog.dismiss();
			}
			break;
		case MSG_BIND_SUCCESS:
			if (mDialog != null) {
				mDialog.dismiss();
			}
			mCallback.changeFragment(BindMobilePhoneActivity.FRAGMENT_BIND_SUCCESS);
			break;
		default:
			break;
		}
	}

	// 执行获取验证码
	private void doRequestMessageCode() {
		GetSmsCodeTask messageCodeTask = new GetSmsCodeTask() {
			@Override
			public void callback(HttpResponse httpResponse) {
				GetSmsCodeResponse mResponse = (GetSmsCodeResponse) httpResponse;
				if (mResponse != null) {
					if (mResponse.isOk()) {// 发送验证码成功

					} else {
						sendEmptyUiMessage(MSG_CODE_FAILE);
						ToastUtil.showMsg(mResponse.getErroMsg() != null ? mResponse.getErroMsg() : "获取验证码失败");
					}
				}
			}
		};
		try {
			if (currentFrom == ResetAccountPwdUnBindAccountActivity.FRAGMENT_CODE) {// 判断是解绑账号，传相应类型变量
				messageCodeTask.request(phone, CodeConstants.CODE_UNBIND_PHONE);
			} else {
				messageCodeTask.request(phone, CodeConstants.CODE_BIND_PHONE);
			}

		} catch (AppException e) {
			sendEmptyUiMessage(MSG_CODE_FAILE);
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			e.printStackTrace();
		}
	}

	/**
	 * 检查验证码
	 */
	private void checkSmsCode() {
		String code = edCode.getText().toString().trim();
		if(StringUtil.isEmpty(code)){
			ToastUtil.showMsg("验证码不能为空！");
		}
		sendEmptyUiMessage(MSG_CHECK_START);
		CheckSmsCodeTask messageCodeTask = new CheckSmsCodeTask() {

			@Override
			public void callback(HttpResponse httpResponse) {
				CheckSmsCodeResponse mResponse = (CheckSmsCodeResponse) httpResponse;
				if (mResponse != null) {
					if (mResponse.isOk()) {// 验证码正确
						sendEmptyUiMessage(MSG_CHECK_SUCCESS);
					} else {
						sendEmptyUiMessage(MSG_CHECK_FAILE);
						ToastUtil
								.showMsg(mResponse.getErroMsg() != null ? mResponse
										.getErroMsg() : "检查验证码失败");
					}
				}
			}
		};
		try {
			if (currentFrom == ResetAccountPwdUnBindAccountActivity.FRAGMENT_CODE) {// 判断是解绑账号，传相应类型变量
				messageCodeTask.request(phone, code,CodeConstants.CODE_UNBIND_PHONE);
			} else {
				messageCodeTask.request(phone, code,
						CodeConstants.CODE_BIND_PHONE);
			}

		} catch (AppException e) {
			sendEmptyUiMessage(MSG_CHECK_FAILE);
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			e.printStackTrace();
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

}
