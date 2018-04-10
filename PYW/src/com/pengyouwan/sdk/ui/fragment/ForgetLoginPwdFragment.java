
package com.pengyouwan.sdk.ui.fragment;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.base.BaseWorkerFragment;
import com.pengyouwan.sdk.activity.ResetLoginPasswordActivity;
import com.pengyouwan.sdk.entity.Constants.CodeConstants;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.protocol.ResetLoginPwdTask;
import com.pengyouwan.sdk.ui.dialog.CustomProgressDialog;
import com.pengyouwan.sdk.ui.dialog.LoginDialog;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.ToastUtil;

import android.graphics.Color;
import android.os.Bundle;
import android.os.Message;
import android.text.Editable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

/**
 * 描述:忘记密码--重置登陆密码
 * 
 * @author CJ
 * @since 2016-4-11 下午10:02:55
 */
public class ForgetLoginPwdFragment extends BaseWorkerFragment {

    private View confirmBtn;

    private EditText pwdEditext;

    private TextView tvTips;

    private Bundle data;

    private String account, pwd;

    private String isCheck;// 是否验证通过

    private String code;

    private int accountNum;// 账号总和

    private final int MSG_CONFIRM_REQUEST = 0x1000;

    private final int MSG_CONFIRM_START = 0x1001;

    private final int MSG_CONFIRM_SUCCESS = 0x1002;

    private final int MSG_CONFIRM_FAIL = 0x1003;

    private CustomProgressDialog mDialog;

    private TextWatcher pwdTextWatcher;

    private ImageView mPwdVisible;

    private boolean mIsVisible = true;

    public static ForgetLoginPwdFragment getInstance(Bundle data) {
        ForgetLoginPwdFragment mf = new ForgetLoginPwdFragment();
        mf.setArguments(data);
        return mf;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(
                ResIdManager.getLayoutId(getActivity(), Rx.layout.pyw_fragment_findback_resetpwd),
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
        confirmBtn = view.findViewById(ResIdManager.getId(getActivity(), Rx.id.pyw_btn_login));
        pwdEditext = (EditText) view.findViewById(ResIdManager.getId(getActivity(),
                Rx.id.pyw_et_register_account));
        pwdEditext.addTextChangedListener(getPwdTextWatcher());
        mPwdVisible = (ImageView) view.findViewById(ResIdManager.getId(getActivity(),
                Rx.id.pyw_pwd_visible_img));
        tvTips = (TextView) view.findViewById(ResIdManager.getId(getActivity(),
                Rx.id.pyw_tv_reset_tips));
        mPwdVisible.setOnClickListener(mListener);
        confirmBtn.setOnClickListener(mListener);
        data = getArguments();
        account = data.getString("phone");
        code = data.getString("code");
        isCheck = data.getString("is_check");
        accountNum = data.getInt("accountNum");
        if (accountNum > 0) {
            tvTips.setText(getSpan("登录手机：" + account + "(已绑定" + accountNum + "个账号)"));
        } else {
            tvTips.setText(getSpan("登录手机：" + account));
        }
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (!hidden) {
            String tempAccount = data.getString("phone");// 更改号码发送验证码的时候更换号码
            String tempCode = data.getString("code");
            String tempCheck = data.getString("is_check");
            int tempNum = data.getInt("accountNum");
            if (!TextUtils.isEmpty(tempAccount) && !account.equals(tempAccount)) {
                account = tempAccount;
            }
            if (!TextUtils.isEmpty(tempCode) && !code.equals(tempCode)) {
                code = tempCode;
            }
            if (!TextUtils.isEmpty(tempCheck) && !isCheck.equals(tempCheck)) {
                isCheck = tempCheck;
            }
            if (tempNum != accountNum) {
                accountNum = tempNum;
                if (accountNum > 0) {
                    tvTips.setText(getSpan("登录手机：" + account + "(已绑定" + accountNum + "个账号)"));
                } else {
                    tvTips.setText(getSpan("登录手机：" + account));
                }
            }
        }
    }

    private SpannableString getSpan(String str) {
        SpannableString ss = new SpannableString(str);
        ss.setSpan(new ForegroundColorSpan(Color.parseColor("#ffaa00")), 5, 5 + 11,
                Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        return ss;
    }

    @Override
    public void handleUiMessage(Message msg) {
        super.handleUiMessage(msg);
        switch (msg.what) {
            case MSG_CONFIRM_START:
                if (mDialog == null) {
                    mDialog = new CustomProgressDialog(getActivity(), "请稍后...");
                }
                mDialog.show();
                break;
            case MSG_CONFIRM_SUCCESS:
                setGo();
                break;
            case MSG_CONFIRM_FAIL:
                if (mDialog != null && mDialog.isShowing()) {
                    mDialog.dismiss();
                }
                break;
            default:
                break;
        }
    }

    @Override
    public void handleBackgroundMessage(Message msg) {
        super.handleBackgroundMessage(msg);
        switch (msg.what) {
            case MSG_CONFIRM_REQUEST:
                doResetRequest();
                break;
            default:
                break;
        }
    }

    /**
     * 根据状态做成功后的操作
     */
    private void setGo() {
        if (mDialog != null && mDialog.isShowing()) {
            mDialog.dismiss();
        }
        ToastUtil.showMsg("重置成功，请重新登录");
        // 未登录的情况直接finish回到登录框
        if (UserManager.getInstance().getCurrentUserForSDK() == null) {
            SDKUser user = new SDKUser();
            user.setUserName(account);
            user.setPwd("");
            new LoginDialog(getActivity(), user).show();// 显示登录框，传输手机号过去
        } else {// 已经登录的情况发注销回调
            getActivity().setResult(ResetLoginPasswordActivity.CODE_FORGET_PWD_SUCCESS);
            getActivity().finish();// 清除当前界面 --主界面会触发注销
            // UserManager.getInstance().logout();
            // UserManager.getInstance().setChangeAccount(true);
        }
    }

    // 检测输入信息是否正确
    private boolean checkInfo() {
        String passwordstr = pwdEditext.getText().toString().trim();
        if (TextUtils.isEmpty(passwordstr)) {
            ToastUtil.showMsg("密码不能为空");
            return false;
        } else if (passwordstr.length() < 6) {
            ToastUtil.showMsg("密码长度须大于6位");
            return false;
        }
        return true;
    }

    private View.OnClickListener mListener = new View.OnClickListener() {

        @Override
        public void onClick(View v) {
            if (v == confirmBtn) {
                if (checkInfo()) {
                    sendEmptyBackgroundMessage(MSG_CONFIRM_REQUEST);
                }
            } else if (v == mPwdVisible) {
                mIsVisible = AppUtil.changePwdVisible(pwdEditext, mPwdVisible, mIsVisible,
                        getActivity());
            }
        }
    };

    // 重设密码
    private void doResetRequest() {
        sendEmptyUiMessage(MSG_CONFIRM_START);
        try {
            pwd = pwdEditext.getText().toString();
            ResetLoginPwdTask task = new ResetLoginPwdTask() {

                @Override
                public void callback(HttpResponse httpResponse) {
                    ResetLoginPwdResponse mResponse = (ResetLoginPwdResponse) httpResponse;
                    if (mResponse != null) {
                        if (mResponse.isOk()) {
                            sendEmptyUiMessage(MSG_CONFIRM_SUCCESS);
                        } else {
                            sendEmptyUiMessage(MSG_CONFIRM_FAIL);
                            ToastUtil.showMsg(mResponse.getErrorMsg() != null ? mResponse
                                    .getErrorMsg() : "重设失败");
                        }
                    }
                }
            };
            SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
            if (user != null) {// 登录情况
                task.requet(account, user.getPhoneNoToken(), pwd,
                        CodeConstants.CODE_FORGET_PWD_LOGIN, isCheck);
            } else {
                task.requet(account, "", pwd, CodeConstants.CODE_FORGET_PWD_NOLOGIN, isCheck);
            }
        } catch (AppException e) {
            sendEmptyUiMessage(MSG_CONFIRM_FAIL);
            e.printStackTrace();
            ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
        }
    }

    private TextWatcher getPwdTextWatcher() {
        if (pwdTextWatcher == null) {
            pwdTextWatcher = new TextWatcher() {
                private CharSequence charSequence;

                private int editStart;

                private int editEnd;

                @Override
                public void onTextChanged(CharSequence s, int start, int before, int count) {
                    charSequence = s;
                }

                @Override
                public void beforeTextChanged(CharSequence s, int start, int count, int after) {

                }

                @Override
                public void afterTextChanged(Editable s) {
                    // 输入的时候，只有一个光标，这两个值相等
                    editStart = pwdEditext.getSelectionStart();
                    editEnd = pwdEditext.getSelectionEnd();
                    // 限定EditText只能输入12个字符
                    if (charSequence.length() > 12) {
                        // 默认光标在最前端，所以当输入第13个数字的时候，删掉（光标位置从13-1到12）的数字，这样就无法输入超过12个以后的数字
                        s.delete(editStart - 1, editEnd);
                    }
                }
            };
        }
        return pwdTextWatcher;
    }
}
