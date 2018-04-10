package com.pengyouwan.sdk.ui.fragment;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.InputType;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.base.BaseWorkerFragment;
import com.pengyouwan.sdk.activity.ForgetLoginPasswordActivity;
import com.pengyouwan.sdk.activity.MianzeActivity;
import com.pengyouwan.sdk.activity.RegisterActivity;
import com.pengyouwan.sdk.entity.Constants.CodeConstants;
import com.pengyouwan.sdk.interfaces.ChangeFragmentCallback;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.protocol.GetSmsCodeTask;
import com.pengyouwan.sdk.ui.dialog.CustomProgressDialog;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.BehavioralHelper;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.ToastUtil;
import com.pyw.common.BehaviorConstants;

/**
 * 描述:输入手机界面
 * 
 * @author CJ
 * @since 2016-7-4 下午2:04:22
 */
public class CommonPhoneFragment extends BaseWorkerFragment {

	private ChangeFragmentCallback mCallback;

	private EditText edPhone;

	private Button btnGetcode;

	private Context mContext;

	private Bundle mBundle;

	private String phone;

	private TextView textMianze;

	private CheckBox cbMianze;

	private TextView tvOtherTips;// 适应底部有文字界面

	private View layoutMianze;

	public static final int TAG_FROM_REGISTER = 0x1000;

	public static final int TAG_FROM_FINDBACK_LOGIN_PWD = 0x1001;

	private int currentFrom;

	private boolean isReg = false;// 是否注册

	private CustomProgressDialog dialog;

	public static CommonPhoneFragment getInstance(Bundle bundle) {
		CommonPhoneFragment phoneFragment = new CommonPhoneFragment();
		phoneFragment.setArguments(bundle);
		return phoneFragment;
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		View view;
		mContext = getActivity();
		if (AppUtil.isScreenLandscape(mContext)) {
			view = inflater.inflate(ResIdManager.getLayoutId(getActivity(),
					Rx.layout.pyw_fragment_common_phone_landscape), null);
		} else {
			view = inflater.inflate(ResIdManager.getLayoutId(getActivity(),
					Rx.layout.pyw_fragment_common_phone_portrait), null);
		}
		mBundle = getArguments();
		initView(view);
		return view;
	}

	private void initView(View view) {
		layoutMianze = view.findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_layout_mianze));
		cbMianze = (CheckBox) view.findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_cb_mianze));
		textMianze = (TextView) view.findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_tv_mianze));
		edPhone = (EditText) view.findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_et_register_account));
		btnGetcode = (Button) view.findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_btn_getcode));
		btnGetcode.setOnClickListener(mClickListener);
		textMianze.setOnClickListener(mClickListener);
		tvOtherTips = (TextView) view.findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_tv_other_tips));
		tvOtherTips.setText("");
		currentFrom = mBundle.getInt("TAG");
		switch (mBundle.getInt("TAG")) {
		case TAG_FROM_REGISTER:// 注册
			tvOtherTips.setText("");
			edPhone.setInputType(InputType.TYPE_CLASS_PHONE);
			layoutMianze.setVisibility(View.VISIBLE);
			break;
		case TAG_FROM_FINDBACK_LOGIN_PWD:// 忘记密码
			// edPhone.setHint("请输入游戏账号/手机号");
			edPhone.setHint("请输入游戏账号/手机号");
			// edPhone.setInputType(InputType.TYPE_TEXT_VARIATION_EMAIL_ADDRESS);//
			// 忘记密码输入类型不作限制
			tvOtherTips.setText(getSpan("温馨提示：如游戏账号未绑定手机，请联系客服申诉"));
			tvOtherTips.setOnClickListener(mClickListener);
			layoutMianze.setVisibility(View.GONE);
			break;
		default:
			break;
		}
	}

	/**
	 * 修改样式
	 * 
	 * @param text
	 * @return
	 */
	private SpannableString getSpan(String text) {
		SpannableString ss = new SpannableString(text);
		ss.setSpan(new ForegroundColorSpan(Color.parseColor("#007eff")), 17,
				17 + 4, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		ss.setSpan(new UnderlineSpan(), 17, 17 + 4,
				Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		return ss;
	}

	public void setOnFragmentChangeCallback(ChangeFragmentCallback c) {
		mCallback = c;
	}

	private View.OnClickListener mClickListener = new View.OnClickListener() {

		public void onClick(View v) {
			if (v == btnGetcode) {
				// 往数据库写入行为操作数据
				BehavioralHelper.getInstance().saveBehavior(
						BehaviorConstants.PAGE.PHONE_REGISTRATION_1,
						BehaviorConstants.BEHAVIORA.GET_VERIFICATION_CODE,
						BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
				if (cbMianze.isChecked()) {
					phone = edPhone.getText().toString();
					if (mBundle.getInt("TAG") == TAG_FROM_FINDBACK_LOGIN_PWD) {
						// 忘记密码处不做处理
						if (!TextUtils.isEmpty(phone)) {
							doRequestMessageCode();// 发送验证码
						} else {
							ToastUtil.showMsg("游戏账号/手机号不能为空");
						}
					} else {
						if (AppUtil.isMobile(phone)) {
							doRequestMessageCode();// 发送验证码
						} else {
							ToastUtil.showMsg("您输入的手机号码不正确");
						}
					}
				} else {
					ToastUtil.showMsg("请先阅读免责声明");
				}
			} else if (v == tvOtherTips) {
				AppUtil.callPhone(mContext);
			} else if (v == textMianze) {
				// TODO 跳转到免责页面
				startActivity(new Intent(getActivity(), MianzeActivity.class));
				cbMianze.setChecked(true);
			}
		}

	};

	/**
	 * 获取验证码
	 */
	private void doRequestMessageCode() {
		if (dialog == null) {
			dialog = new CustomProgressDialog(getActivity(), "获取验证码...");
		}
		dialog.show();
		try {
			// 请求获取验证码
			GetSmsCodeTask messageCodeTask = new GetSmsCodeTask() {

				@Override
				public void callback(HttpResponse httpResponse) {
					dialog.dismiss();
					GetSmsCodeResponse mResponse = (GetSmsCodeResponse) httpResponse;
					if (mResponse != null) {
						if (mResponse.isOk()) {// 发送验证码成功
							// 判断是否注册过
							if (mResponse.getIsReg() == CodeConstants.USER_IS_REG) {
								isReg = true;
							} else {
								isReg = false;
							}
							// 如果有返回号码
							if (!TextUtils.isEmpty(mResponse.getPassport())) {
								phone = mResponse.getPassport();
							}
							doCallBack();
						} else {
							ToastUtil
									.showMsg(mResponse.getErroMsg() != null ? mResponse
											.getErroMsg() : "获取验证码失败");
						}
					}
				}
			};
			if (currentFrom == TAG_FROM_REGISTER) {// 判断是注册类型，传相应类型变量
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
			dialog.dismiss();
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			e.printStackTrace();
		}
	}

	/**
	 * 切换对应界面
	 */
	protected void doCallBack() {
		mBundle.putString("phone", phone);
		if (currentFrom == TAG_FROM_REGISTER) {
			if (isReg) {// 已注册
				mCallback.changeFragment(RegisterActivity.REGISTER_PAGE_FOUR);
			} else {
				mCallback.changeFragment(RegisterActivity.REGISTER_PAGE_SEC);
			}
		} else if (currentFrom == TAG_FROM_FINDBACK_LOGIN_PWD) {
			if (!isReg) {// 未注册
				ToastUtil.showMsg("用户未注册！");
			} else {
				mCallback
						.changeFragment(ForgetLoginPasswordActivity.GETPSW_PAGE_SEC);
			}
		}
		hideSoftInput(mContext);
	}

}
