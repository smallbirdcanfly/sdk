package com.pengyouwan.sdk.ui.fragment;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.base.BaseWorkerFragment;
import com.pengyouwan.sdk.activity.BindMobilePhoneActivity;
import com.pengyouwan.sdk.interfaces.ChangeFragmentCallback;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.protocol.BindPhoneTask;
import com.pengyouwan.sdk.ui.dialog.CustomProgressDialog;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.BehavioralHelper;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.ToastUtil;
import com.pyw.common.BehaviorConstants;

/**
 * 描述：绑定新手机设置登陆密码界面
 * 
 * @author Hanson
 * @since 创建时间：2016-6-30 下午7:08:17
 * 
 */
public class BindPasscardPwdFragment extends BaseWorkerFragment {

	private ChangeFragmentCallback mCallback;

	private CustomProgressDialog progress;

	private final int MSG_UI_SHOW_PROGRESS = 0x2000;

	private final int MSG_UI_HIDE_PROGRESS = 0x2003;

	private final int MSG_UI_MODIFY_PSW_SUCCESS = 0x2004;

	private final int MSG_BACK_DO_NET_WORK = 0x2005;

	private EditText edPhone;

	private Button btnGetcode;

	private Context mContext;

	private String mPassword;
	
	private Bundle data;
	
	private ImageView mPwdVisible;
	
	private boolean mIsVisible = true;

	public static BindPasscardPwdFragment getInstance(Bundle bundle) {
		BindPasscardPwdFragment codeFragment = new BindPasscardPwdFragment();
		codeFragment.setArguments(bundle);
		return codeFragment;
	}

	public void setChangeFragmentCallback(ChangeFragmentCallback c) {
		mCallback = c;
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		View view;
		view = inflater.inflate(ResIdManager.getLayoutId(getActivity(),
				Rx.layout.pyw_fragment_bindpasscard_pwd), null);
		if (AppUtil.isScreenLandscape(getActivity())) {
			int size = AppUtil.dip2px(getActivity(), 78);
			view.setPadding(size, 0, size, 0);
		} else {
			int size = AppUtil.dip2px(getActivity(), 12);
			view.setPadding(size, 0, size, 0);
		}
		mContext = getActivity();
		initView(view);
		return view;
	}

	private void initView(View view) {
		data = getArguments();
		edPhone = (EditText) view.findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_et_register_account));
		btnGetcode = (Button) view.findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_btn_getcode));
		mPwdVisible = (ImageView) view.findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_pwd_visible_img));
		mPwdVisible.setOnClickListener(mClickListener);
		btnGetcode.setOnClickListener(mClickListener);
	}

	public void setOnFragmentChangeCallback(ChangeFragmentCallback c) {
		mCallback = c;
	}

	private View.OnClickListener mClickListener = new View.OnClickListener() {

		public void onClick(View v) {
			if(v==btnGetcode){
				// 往数据库写入行为操作数据
				BehavioralHelper.getInstance().saveBehavior(
						BehaviorConstants.PAGE.BIND_PHONE_PAGE_SET_PASSWORD,
						BehaviorConstants.BEHAVIORA.DETERMINE,
						BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
				mPassword = edPhone.getText().toString().trim();
				if (checkInfo(mPassword)) {
					sendEmptyBackgroundMessage(MSG_BACK_DO_NET_WORK);
				}
			}else if(v==mPwdVisible){
				mIsVisible = AppUtil.changePwdVisible(edPhone, mPwdVisible, mIsVisible, mContext);
			}
		}
	};

	// 检测输入信息是否正确
	private boolean checkInfo(String pwd) {
		if (TextUtils.isEmpty(pwd)) {
			ToastUtil.showMsg("密码不能为空");
			return false;
		} else if (pwd.length() < 6 || pwd.length() > 12) {
			ToastUtil.showMsg("密码长度须为6~12位");
			return false;
		}
		return true;
	}

	public void handleBackgroundMessage(Message msg) {
		switch (msg.what) {
		case MSG_BACK_DO_NET_WORK:
			bindAndSetPwd();
			break;

		}
	}

	/**
	 * 绑定并设置登陆密码
	 */
	private void bindAndSetPwd() {
		sendEmptyUiMessage(MSG_UI_SHOW_PROGRESS);
		BindPhoneTask bindPassportTask = new BindPhoneTask() {
			@Override
			public void callback(HttpResponse httpResponse) {
				BindPhoneResponse bindPassportResponse = (BindPhoneResponse) httpResponse;
				if (bindPassportResponse != null) {
					if (bindPassportResponse.isOk()) {
						sendEmptyUiMessage(MSG_UI_MODIFY_PSW_SUCCESS);
					} else {
						sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);
						ToastUtil.showMsg(bindPassportResponse.getErrorMsg() != null ? bindPassportResponse.getErrorMsg() : "绑定失败");
					}
				}
			}
		};
		try {
			bindPassportTask.request(mPassword, data.getString(BindMobilePhoneActivity.PHONE_NUM), UserManager.getInstance().getCurrentUserForSDK().getUserName());
		} catch (AppException e) {
			sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			e.printStackTrace();
		}

	};

	@Override
	public void handleUiMessage(Message msg) {
		switch (msg.what) {
		case MSG_UI_SHOW_PROGRESS:
			if (progress == null) {
				progress = new CustomProgressDialog(getActivity(), "请稍后...");
			}
			progress.show();
			break;
		case MSG_UI_HIDE_PROGRESS:
			hideProgresss();
			break;
		case MSG_UI_MODIFY_PSW_SUCCESS:
			hideProgresss();
			if (mCallback != null) {
				mCallback.changeFragment(BindMobilePhoneActivity.FRAGMENT_BIND_SUCCESS);
			}
			break;
		}
	}

	private void hideProgresss() {
		if (progress != null) {
			progress.dismiss();
		}
	}

}
