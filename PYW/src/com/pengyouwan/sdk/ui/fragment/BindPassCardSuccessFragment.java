package com.pengyouwan.sdk.ui.fragment;

import android.graphics.Color;
import android.os.Bundle;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.pengyouwan.framework.base.BaseWorkerFragment;
import com.pengyouwan.sdk.activity.BindMobilePhoneActivity;
import com.pengyouwan.sdk.interfaces.ChangeFragmentCallback;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

/**
 * 描述：绑定通行证成功界面
 * @author Hanson
 * @since 创建时间：2016-6-30 下午7:08:36
 * 
 */
public class BindPassCardSuccessFragment extends BaseWorkerFragment {

	private ChangeFragmentCallback mCallback;
	
    private View btn;

    private TextView tips, bindPhone;

	public static BindPassCardSuccessFragment getInstance(Bundle bundle) {
		BindPassCardSuccessFragment codeFragment = new BindPassCardSuccessFragment();
		codeFragment.setArguments(bundle);
		return codeFragment;
	}

	public void setChangeFragmentCallback(ChangeFragmentCallback c) {
		mCallback = c;
	}
	
	  @Override
	    public View onCreateView(LayoutInflater inflater, ViewGroup container,
	            Bundle savedInstanceState) {
	        View view = null;
	        if (AppUtil.isScreenLandscape(getActivity())) {
	            view = inflater.inflate(ResIdManager.getLayoutId(getActivity(),
	                    Rx.layout.pyw_fragment_bind_passno_success_landscape), null);
	        } else {
	            view = inflater.inflate(ResIdManager.getLayoutId(getActivity(),
	                    Rx.layout.pyw_fragment_bind_passno_success_portrait), null);
	        }
	        initView(view);
	        return view;
	    }

	    private void initView(View view) {
	        btn = view.findViewById(ResIdManager.getId(getActivity(), Rx.id.pyw_btn_back_usercenter));
	        tips = (TextView) view.findViewById(ResIdManager.getId(getActivity(), Rx.id.pyw_tv_tips));
	        bindPhone = (TextView) view
	                .findViewById(ResIdManager.getId(getActivity(), Rx.id.pyw_tv_passcard));
	        Bundle data = getArguments();
	        if (data != null) {
	            bindPhone.setText(getPassprotSpanna(data.getString(BindMobilePhoneActivity.PHONE_NUM)));
	        }
	        tips.setText(getSpannableTips());
	        btn.setOnClickListener(new View.OnClickListener() {

	            @Override
	            public void onClick(View v) {
	                if (mCallback != null) {
	                    mCallback.changeFragment(0);
	                }
	            }
	        });
	    }

	    private SpannableString getSpannableTips() {
	        SpannableString ss = new SpannableString("您可以使用手机号登录朋友玩和所有游戏");
	        ss.setSpan(new ForegroundColorSpan(Color.parseColor("#FFBC00")), 10, 13,
	                Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
	        ss.setSpan(new ForegroundColorSpan(Color.parseColor("#FFBC00")), 14, ss.length(),
	                Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
	        return ss;
	    }

	    private SpannableString getPassprotSpanna(String phone) {
	        SpannableString ss = new SpannableString("您的手机号:" + phone);
	        ss.setSpan(new ForegroundColorSpan(Color.parseColor("#FFBC00")), 6, ss.length(),
	                Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
	        return ss;
	    }


}

