
package com.pengyouwan.sdk.ui.fragment;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import com.pengyouwan.framework.base.BaseWorkerFragment;
import com.pengyouwan.sdk.activity.RegisterActivity;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.interfaces.ChangeFragmentCallback;
import com.pengyouwan.sdk.ui.dialog.LoginDialog;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

/**
 * 注册界面--已注册
 * 
 * @author CJ
 * @since 2016-3-31下午6:13:55
 */
public class RegisterLoginFragment extends BaseWorkerFragment {
    private Context mContext;

    private ChangeFragmentCallback mCallback;

    private Button btnOther, btnLogin;

    private String phone;

    private Bundle mBundle;

    public static RegisterLoginFragment getInstance(Bundle bundle) {
        RegisterLoginFragment loginFragment = new RegisterLoginFragment();
        loginFragment.setArguments(bundle);
        return loginFragment;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view;
        mContext = getActivity();
        if (AppUtil.isScreenLandscape(mContext)) {
            view = inflater.inflate(ResIdManager.getLayoutId(getActivity(),
                    Rx.layout.pyw_fragment_register_login_landscape), null);
        } else {
            view = inflater.inflate(ResIdManager.getLayoutId(getActivity(),
                    Rx.layout.pyw_fragment_register_login_portrait), null);
        }
        initView(view);
        return view;
    }

    private void initView(View view) {
        btnOther = (Button) view.findViewById(ResIdManager.getId(mContext,
                Rx.id.pyw_btn_register_ohter));
        btnLogin = (Button) view.findViewById(ResIdManager.getId(mContext, Rx.id.pyw_btn_login));
        btnOther.setOnClickListener(mClickListener);
        btnLogin.setOnClickListener(mClickListener);
        mBundle = getArguments();
        phone = mBundle.getString("phone");
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (!hidden) {
            String tempPhone = mBundle.getString("phone");
            if (!TextUtils.isEmpty(tempPhone) && !phone.equals(tempPhone)) {// 防止来回切换
                phone = tempPhone;
            }
        }
    }

    private View.OnClickListener mClickListener = new View.OnClickListener() {

        public void onClick(View v) {
            if (v == btnLogin) {
                // getActivity().finish();// 回到登录页 销毁界面 回填数据
                SDKUser user = new SDKUser();
                user.setUserName(phone);
                user.setPwd("");
                new LoginDialog(getActivity(), user).show();// 显示登录框，传输手机号过去
            } else if (v == btnOther) {// 换其他账号登录
                mCallback.changeFragment(RegisterActivity.REGISTER_PAGE_FIRST);
            }
        }

    };

    public void setOnFragmentChangeCallback(ChangeFragmentCallback c) {
        mCallback = c;
    }

}
