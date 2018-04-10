
package com.pengyouwan.sdk.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.sdk.base.BaseCommonTitleFragmentActivity;
import com.pengyouwan.sdk.db.UserOperator;
import com.pengyouwan.sdk.entity.Constants.UserContants;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.protocol.SetLoginPasswordTask;
import com.pengyouwan.sdk.ui.dialog.CustomProgressDialog;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.NetWorkUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.StringUtil;
import com.pengyouwan.sdk.utils.ToastUtil;

/**
 * 描述：重设登陆密码页面
 * 
 * @author Hanson
 * @since 创建时间：2016-7-1 下午6:07:08
 */
public class ResetLoginPasswordActivity extends BaseCommonTitleFragmentActivity

implements OnClickListener {
    // 原密码
    private EditText oldPassword;

    // 新密码
    private EditText newPassword;

    // 忘记密码
    private TextView tvForgetPwd;

    // 确定修改
    private Button modify;

    private Context context;

    private final int MSG_UI_MODIFY_START = 2;

    private final int MSG_UI_MODIFY_SUCCESS = 3;

    private final int MSG_UI_MODIFY_FAIL = 4;

    // 忘记密码入口
    private final int CODE_FORGET_PWD = 0x1001;

    // 忘记密码修改成功
    public static final int CODE_FORGET_PWD_SUCCESS = 0x1002;

    private CustomProgressDialog confirmDialog;

    private boolean shouldSendCallBack = true;

    private ImageView mPwdVisible;

    private boolean mIsVisible = true;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (AppUtil.isScreenLandscape(ResetLoginPasswordActivity.this)) {
            setContentView(ResIdManager.getLayoutId(this,
                    Rx.layout.pyw_activity_reset_loginpassword_landscape));
        } else {
            setContentView(ResIdManager.getLayoutId(this,
                    Rx.layout.pyw_activity_reset_loginpassword_portrait));
        }
        context = this;
        initView();
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return super.onKeyDown(keyCode, event);
    }

    @Override
    protected void onDestroy() {
        InputMethodManager imm = (InputMethodManager) ResetLoginPasswordActivity.this
                .getSystemService(Context.INPUT_METHOD_SERVICE);
        getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN);
        super.onDestroy();
    };

    private void initView() {
        setCommonTitle(getString(ResIdManager.getStringId(this.getApplicationContext(),
                Rx.string.pyw_reset_pwd_title)));
        oldPassword = (EditText) findViewById(ResIdManager.getId(context, Rx.id.pyw_et_reset_old));
        newPassword = (EditText) findViewById(ResIdManager.getId(context, Rx.id.pyw_et_reset_new));
        tvForgetPwd = (TextView) findViewById(ResIdManager.getId(context, Rx.id.pyw_tv_forget_pwd));
        modify = (Button) findViewById(ResIdManager.getId(context, Rx.id.pyw_btn_reset_modify));
        mPwdVisible = (ImageView) findViewById(ResIdManager.getId(context,
                Rx.id.pyw_pwd_visible_img));
        mPwdVisible.setOnClickListener(this);
        modify.setOnClickListener(this);
        tvForgetPwd.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        if (v == modify) {
            if (!NetWorkUtil.isNetworkAvailable(this)) {
                ToastUtil.showMsg(getString(ResIdManager.getStringId(context,
                        Rx.string.pyw_networkunavilable)));
                return;
            }
            String oldText = oldPassword.getText().toString();
            String newText = newPassword.getText().toString();
            if (StringUtil.isEmpty(oldText)) {
                ToastUtil.showMsg("请输入旧密码");
            }
            if (StringUtil.isEmpty(newText)) {
                ToastUtil.showMsg("请输入新密码");
            }
            if (oldText.length() >= 6 && newText.length() >= 6) {
                modifyPassWord(oldText, newText);// 调用修改密码接口
            } else {
                ToastUtil.showMsg("密码长度必须大于六位数");
            }
        } else if (v == tvForgetPwd) {// 进入忘记密码
            startActivityForResult(new Intent(context, ForgetLoginPasswordActivity.class),
                    CODE_FORGET_PWD);
        } else if (v == mPwdVisible) {
            mIsVisible = AppUtil.changePwdVisible(newPassword, mPwdVisible, mIsVisible, context);
        }
    }

    @Override
    public void handleUiMessage(Message msg) {
        switch (msg.what) {
            case MSG_UI_MODIFY_START:
                if (confirmDialog == null) {
                    confirmDialog = new CustomProgressDialog(ResetLoginPasswordActivity.this,
                            "正在设置密码..");
                }
                confirmDialog.show();
                break;
            case MSG_UI_MODIFY_SUCCESS:
                confirmDialog.dismiss();
                shouldSendCallBack = false;
                ToastUtil.showMsg("修改成功，请重新登录");
                setResult(UserCenterActivity.CODE_RETURN_MODIFYPWD);
                finish();
                break;
            case MSG_UI_MODIFY_FAIL:
                confirmDialog.dismiss();
                break;
            default:
                break;
        }
    }

    /**
     * 确认修改密码
     */
    private void modifyPassWord(String oldpwd, String newpwd) {
        sendEmptyUiMessage(MSG_UI_MODIFY_START);
        SetLoginPasswordTask task = new SetLoginPasswordTask() {
            @Override
            public void callback(HttpResponse httpResponse) {
                SetLoginPasswordResponse response = (SetLoginPasswordResponse) httpResponse;
                if (response != null) {
                    if (response.isOk()) {
                        updataDb();// 更新密码
                        sendEmptyUiMessage(MSG_UI_MODIFY_SUCCESS);
                        ToastUtil.showMsg("修改成功");
                    } else {
                        sendEmptyUiMessage(MSG_UI_MODIFY_FAIL);
                        ToastUtil.showMsg(response.getErrorMsg());
                    }
                }
            }
        };
        try {
            task.request(oldpwd, newpwd);
        } catch (AppException e) {
            ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
            sendEmptyUiMessage(MSG_UI_MODIFY_FAIL);
            e.printStackTrace();
        }
    }

    /**
     * 更新缓存user对象
     */
    private void updataDb() {
        SDKUser currentUser = UserManager.getInstance().getCurrentUserForSDK();
        SDKUser dbUser = new SDKUser();
        if (currentUser.getAccountType() == UserContants.USER_TYPE_PASSPORT) {
            dbUser.setUserName(currentUser.getPhoneNo());
        } else {
            dbUser.setUserName(currentUser.getUserName());
        }
        dbUser.setPwd("");// 密码清空
        UserOperator.getInstance().insertOrUpdateUserInfo(dbUser);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == CODE_FORGET_PWD && resultCode == CODE_FORGET_PWD_SUCCESS) {
            setResult(UserCenterActivity.CODE_RETURN_MODIFYPWD);
            finish();
        }
    }
}
