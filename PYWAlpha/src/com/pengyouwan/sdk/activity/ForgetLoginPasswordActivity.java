
package com.pengyouwan.sdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

import com.pengyouwan.framework.v4.FragmentTransaction;
import com.pengyouwan.sdk.base.BaseCommonTitleFragmentActivity;
import com.pengyouwan.sdk.interfaces.ChangeFragmentCallback;
import com.pengyouwan.sdk.ui.dialog.LoginDialog;
import com.pengyouwan.sdk.ui.fragment.CommonCodeFragment;
import com.pengyouwan.sdk.ui.fragment.CommonPhoneFragment;
import com.pengyouwan.sdk.ui.fragment.ForgetLoginPwdFragment;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

/**
 * 描述:忘记密码
 * 
 * @author zhj
 * @since 2015年9月25日 上午11:52:54
 */
public class ForgetLoginPasswordActivity extends BaseCommonTitleFragmentActivity {

    public static final int GETPSW_PAGE_FIRST = 0xA000;

    public static final int GETPSW_PAGE_SEC = 0xA001;

    public static final int GETPSW_PAGE_THR = 0xA002;

    public int currentPage = GETPSW_PAGE_FIRST;

    private int contentId;

    private CommonPhoneFragment phoneFragment;//输入号码页

    private CommonCodeFragment codeFragment;//验证码页

    private ForgetLoginPwdFragment pwdFragment;//密码页

    private Bundle mData;

    private int[] stack = new int[3];

    private int top = 0;

    private static Activity mLoginActivity;//登录框传入的activity
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(ResIdManager.getLayoutId(ForgetLoginPasswordActivity.this,
                Rx.layout.pyw_activity_forgetpassword));
        initTitle();
        initFragment();
    }

    public static Intent createIntent(Activity activity){
        Intent intent = new Intent(activity, ForgetLoginPasswordActivity.class);
        mLoginActivity = activity;
        return intent;
    }
    
    // 初始化界面标题
    private void initTitle() {
        setCommonTitle("验证绑定手机");
    }

    private void initFragment() {
        mData = new Bundle();
        contentId = ResIdManager.getId(ForgetLoginPasswordActivity.this, Rx.id.pyw_layout_fragments);
        chageFragmentByCode(GETPSW_PAGE_FIRST);
    }

    // 切换fragment
    private void chageFragmentByCode(int fragmentCode) {
        currentPage = fragmentCode;
        push(fragmentCode);
        FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
        hideFragments(transaction);
        switch (fragmentCode) {
            case GETPSW_PAGE_FIRST:
                setCommonTitle("验证密保手机");
                if (phoneFragment == null) {
                    mData.putInt("TAG", CommonPhoneFragment.TAG_FROM_FINDBACK_LOGIN_PWD);
                    phoneFragment = CommonPhoneFragment.getInstance(mData);
                    phoneFragment.setOnFragmentChangeCallback(mCallback);
                    transaction.add(contentId, phoneFragment);
                }
                transaction.show(phoneFragment);
                break;
            case GETPSW_PAGE_SEC:
                setCommonTitle("填写验证码");
                if (codeFragment == null) {
                    codeFragment = CommonCodeFragment.getInstance(mData);
                    codeFragment.setOnFragmentChangeCallback(mCallback);
                    transaction.add(contentId, codeFragment);
                }
                transaction.show(codeFragment);
                break;
            case GETPSW_PAGE_THR:
                setCommonTitle("重置密码");
                if (pwdFragment == null) {
                    pwdFragment = ForgetLoginPwdFragment.getInstance(mData);
                    transaction.add(contentId, pwdFragment);
                }
                transaction.show(pwdFragment);
                break;
        }
    }

    private void hideFragments(FragmentTransaction transaction) {
        if (transaction != null) {
            if (phoneFragment != null) {
                transaction.hide(phoneFragment);
            }
            if (codeFragment != null) {
                transaction.hide(codeFragment);
            }
            if (pwdFragment != null) {
                transaction.hide(pwdFragment);
            }
            transaction.commitAllowingStateLoss();
        }
    }

    private ChangeFragmentCallback mCallback = new ChangeFragmentCallback() {
        @Override
        public void changeFragment(int fragmentCode) {
            chageFragmentByCode(fragmentCode);
        }
    };

    @Override
    public void onBackPressed() {
        if (stack != null) {
            int code = pop();
            if (code > 0) {
                chageFragmentByCode(code);
            } else {
                finish();
                new LoginDialog(mLoginActivity).show();
            }
        } else {
            finish();
            new LoginDialog(mLoginActivity).show();
        }
    };

    private void push(int code) {

        stack[top++] = code;
    }

    private int pop() {
        if (top >= 2) {
            top -= 2;
            return stack[top];
        } else {
            return -1;
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        stack = null;
    }

    @Override
    protected void onLeftBtnClick() {
        onBackPressed();
    }

}
