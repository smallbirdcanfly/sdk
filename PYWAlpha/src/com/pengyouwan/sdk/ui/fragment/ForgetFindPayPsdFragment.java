/**
 * 
 */

package com.pengyouwan.sdk.ui.fragment;

import com.pengyouwan.framework.base.BaseWorkerFragment;
import com.pengyouwan.sdk.activity.H5Activity;
import com.pengyouwan.sdk.activity.SetPayPasswordActivity;
import com.pengyouwan.sdk.entity.UserCenter;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.StringUtil;
import com.pengyouwan.sdk.utils.ToastUtil;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;

/**
 * @ClassName: ForgetFindPayPsdFragment 描述：
 * @author: Hanson
 * @since 2016-6-2 下午1:54:09
 */
public class ForgetFindPayPsdFragment extends BaseWorkerFragment implements OnClickListener {

    private LinearLayout mFindLinearLayout;

    private LinearLayout mChangeLinearLayout;

    private Bundle data;

    private UserCenter mUserCenter;

    public static ForgetFindPayPsdFragment getInstance(Bundle data) {
        ForgetFindPayPsdFragment f = new ForgetFindPayPsdFragment();
        f.setArguments(data);
        return f;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(
                ResIdManager.getLayoutId(getActivity(), Rx.layout.pyw_fragment_paypsd_forgetfind),
                null);
        initView(view);
        return view;
    }

    private void initView(View view) {
        data = getArguments();
        if (data != null) {
            mUserCenter = (UserCenter) data.getSerializable(SetPayPasswordActivity.URL_DATA);
        }
        mChangeLinearLayout = (LinearLayout) view.findViewById(ResIdManager.getId(getActivity(),
                Rx.id.pyw_layout_change_paypsd));
        mFindLinearLayout = (LinearLayout) view.findViewById(ResIdManager.getId(getActivity(),
                Rx.id.pyw_layout_find_paypsd));

        mChangeLinearLayout.setOnClickListener(this);
        mFindLinearLayout.setOnClickListener(this);
    }

    /*
     * (non-Javadoc)
     * @see android.view.View.OnClickListener#onClick(android.view.View)
     */
    @Override
    public void onClick(View arg0) {
        if (arg0 == mChangeLinearLayout) {
            if (StringUtil.isEmpty(mUserCenter.getModifyPwdUrl())) {
                ToastUtil.showMsg("跳转链接失败！");
            } else {
                Intent intent = H5Activity.createIntentByTitle(getActivity(),
                        mUserCenter.getModifyPwdUrl(), H5Activity.H5_PAYPASSNO, null);
                startActivity(intent);
            }
        } else if (arg0 == mFindLinearLayout) {
            if (StringUtil.isEmpty(mUserCenter.getForgetPwdUrl())) {
                ToastUtil.showMsg("跳转链接失败！");
            } else {
                Intent intent = H5Activity.createIntentByTitle(getActivity(),
                        mUserCenter.getForgetPwdUrl(), H5Activity.H5_PAYPASSNO, null);
                startActivity(intent);
            }
        }

    }

}
