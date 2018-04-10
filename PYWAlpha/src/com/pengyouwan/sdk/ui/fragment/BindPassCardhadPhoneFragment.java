package com.pengyouwan.sdk.ui.fragment;

import android.graphics.Color;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

import com.pengyouwan.framework.base.BaseWorkerFragment;
import com.pengyouwan.sdk.activity.BindMobilePhoneActivity;
import com.pengyouwan.sdk.interfaces.ChangeFragmentCallback;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

/**
 * 描述：绑定通行证--已存在绑定手机
 * @author Hanson
 * @since 创建时间：2016-6-30 下午7:07:25
 * 
 */
public class BindPassCardhadPhoneFragment extends BaseWorkerFragment {

	private ChangeFragmentCallback mCallback;
	
    private TextView bindPhoneText;

    private Button bindBtn;

	public static BindPassCardhadPhoneFragment getInstance(Bundle bundle) {
		BindPassCardhadPhoneFragment codeFragment = new BindPassCardhadPhoneFragment();
		codeFragment.setArguments(bundle);
		return codeFragment;
	}

	public void setChangeFragmentCallback(ChangeFragmentCallback c) {
		mCallback = c;
	}
	
	 @Override
	    public View onCreateView(LayoutInflater inflater, ViewGroup container,
	            Bundle savedInstanceState) {
	        View view = inflater.inflate(
	                ResIdManager.getLayoutId(getActivity(), Rx.layout.pyw_fragment_bindpasscard_type),
	                null);
	        if (AppUtil.isScreenLandscape(getActivity())) {
	            int size = AppUtil.dip2px(getActivity(), 78);
	            view.setPadding(size, 0, size, 0);
	        } else {
	            int size = AppUtil.dip2px(getActivity(), 12);
	            view.setPadding(size, 0, size, 0);
	        }
	        initView(view);
	        return view;
	    }

	    private void initView(View view) {
	        bindPhoneText = (TextView) view
	                .findViewById(ResIdManager.getId(getActivity(), Rx.id.pyw_tv_bindphone));
	        bindBtn = (Button) view
	                .findViewById(ResIdManager.getId(getActivity(), Rx.id.pyw_btn_login));
	        Bundle data = getArguments();
	        if (data != null) {
	            String phone = data.getString(BindMobilePhoneActivity.PHONE_NUM);
	            bindPhoneText.setText(getSpan(phone));
	        }
	        bindBtn.setOnClickListener(new View.OnClickListener() {

	            @Override
	            public void onClick(View v) {
	                if (mCallback != null) {
	                    mCallback.changeFragment(BindMobilePhoneActivity.FRAGMENT_GET_CODE);
	                }
	            }
	        });
	    }

	    private SpannableString getSpan(String phone) {
	        SpannableString ss = new SpannableString("您的游戏账号已绑定" + phone);
	        ss.setSpan(new ForegroundColorSpan(Color.parseColor("#ee970f")), 9, ss.length(),
	                Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
	        return ss;
	    }

}
