package com.pengyouwan.sdk.ui.fragment;

import com.pengyouwan.framework.base.BaseWorkerFragment;
import com.pengyouwan.sdk.activity.BindMobilePhoneActivity;
import com.pengyouwan.sdk.interfaces.ChangeFragmentCallback;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.BehavioralHelper;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.ToastUtil;
import com.pyw.common.BehaviorConstants;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;

/**
 * 描述：绑定通行证--输入手机号
 * 
 * @author Hanson
 * @since 创建时间：2016-6-30 下午7:07:51
 * 
 */
public class BindPasscardPhoneFragment extends BaseWorkerFragment {

	private ChangeFragmentCallback mCallback;
	
    private EditText edPhone;

    private Button btnGetcode;

    private Context mContext;

    private String phone;

    private Bundle data;

	public static BindPasscardPhoneFragment getInstance(Bundle bundle) {
		BindPasscardPhoneFragment codeFragment = new BindPasscardPhoneFragment();
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
	        view = inflater.inflate(
	                ResIdManager.getLayoutId(getActivity(), Rx.layout.pyw_fragment_bindpasscard_phone),
	                null);
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
	        edPhone = (EditText) view
	                .findViewById(ResIdManager.getId(mContext, Rx.id.pyw_et_register_account));
	        btnGetcode = (Button) view
	                .findViewById(ResIdManager.getId(mContext, Rx.id.pyw_btn_getcode));
	        btnGetcode.setOnClickListener(mClickListener);

	    }

	    private View.OnClickListener mClickListener = new View.OnClickListener() {

	        public void onClick(View v) {
	            phone = edPhone.getText().toString();
	         // 往数据库写入行为操作数据
				BehavioralHelper.getInstance().saveBehavior(
						BehaviorConstants.PAGE.BIND_PHONE_PAGE_BIND_PHONE,
						BehaviorConstants.BEHAVIORA.GET_VERIFICATION_CODE,
						BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
	            if (AppUtil.isMobile(phone)) {
	                data.putString(BindMobilePhoneActivity.PHONE_NUM, phone);
	                mCallback.changeFragment(BindMobilePhoneActivity.FRAGMENT_GET_CODE);
	            } else {
	                ToastUtil.showMsg("您输入的手机号码不正确");
	            }
	        }
	    };


}
