
package com.pengyouwan.sdk.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import com.pengyouwan.framework.v4.FragmentTransaction;
import com.pengyouwan.sdk.base.BaseCommonTitleFragmentActivity;
import com.pengyouwan.sdk.entity.UserCenter;
import com.pengyouwan.sdk.ui.fragment.ForgetFindPayPsdFragment;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.StringUtil;
import com.pengyouwan.sdk.utils.ToastUtil;

/**
 * 描述：设置交易密码
 * 
 * @author Hanson
 * @since 创建时间：2016-6-30 下午8:39:23
 */
public class SetPayPasswordActivity extends BaseCommonTitleFragmentActivity {

    private int contentId;

    public final static int FRAGMENT_SETPAY = 0xE001;

    public final static int FRAGMENT_FORGETFIND = 0xE002;

    public static final int REQUEST_CODE = 0xE003;

    public static final int RESULT_CODE = 0xE004;

    public static final String LOGIN_TYPE = "tag";

    public static final String URL_DATA = "data";

    private ForgetFindPayPsdFragment mForgetFindPayPsdFragment;

    private Bundle data;

    private UserCenter mUserCenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(ResIdManager.getLayoutId(SetPayPasswordActivity.this,
                Rx.layout.pyw_activity_framelayout));

        initView();
    }

    private void initView() {
        setCommonTitle("交易密码");
        mUserCenter = (UserCenter) getIntent().getSerializableExtra(URL_DATA);
        data = new Bundle();
        data.putSerializable(URL_DATA, mUserCenter);

        contentId = ResIdManager.getId(SetPayPasswordActivity.this, Rx.id.pyw_layout_fragments);
        int code = getIntent().getIntExtra(LOGIN_TYPE, FRAGMENT_SETPAY);
        changeFragmentByCode(code);
    }

    public static Intent createSetPayPasswordActivity(Context context, UserCenter userCenter,
            int isSetPsd) {
        Intent intent = new Intent(context, SetPayPasswordActivity.class);
        intent.putExtra(LOGIN_TYPE, isSetPsd);
        intent.putExtra(URL_DATA, userCenter);
        return intent;
    }

    private void changeFragmentByCode(int code) {
        FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
        hideFragments(transaction);
        switch (code) {
            case FRAGMENT_SETPAY:
                if (StringUtil.isEmpty(mUserCenter.getSetPwdUrl())) {
                    ToastUtil.showMsg("跳转链接失败！");
                } else {
                    Intent intent = H5Activity.createIntentByTitle(this,
                            mUserCenter.getSetPwdUrl(), H5Activity.H5_PAYPASSNO, null);
                    startActivityForResult(intent, SetPayPasswordActivity.REQUEST_CODE);
                }
                break;
            case FRAGMENT_FORGETFIND:
                if (mForgetFindPayPsdFragment == null) {
                    mForgetFindPayPsdFragment = ForgetFindPayPsdFragment.getInstance(data);
                    transaction.add(contentId, mForgetFindPayPsdFragment);
                }
                transaction.show(mForgetFindPayPsdFragment);
                break;
        }
    }

    private void hideFragments(FragmentTransaction transaction) {
        if (transaction != null) {
            if (mForgetFindPayPsdFragment != null) {
                transaction.hide(mForgetFindPayPsdFragment);
            }
            transaction.commitAllowingStateLoss();
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == REQUEST_CODE) {
            finish();
        }
    }

}
