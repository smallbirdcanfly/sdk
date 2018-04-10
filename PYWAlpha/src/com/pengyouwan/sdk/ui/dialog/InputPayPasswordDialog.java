
package com.pengyouwan.sdk.ui.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Looper;
import android.text.SpannableString;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.TextView;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.base.BaseDialog;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.protocol.CheckPayPasswordTask;
import com.pengyouwan.sdk.ui.widget.gridpasswordview.GridPasswordView;
import com.pengyouwan.sdk.ui.widget.gridpasswordview.GridPasswordView.OnPasswordChangedListener;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.ToastUtil;

/**
 * 描述：校验支付密码的dialog
 * 
 * @author Hanson
 * @since 创建时间：2016-7-2 上午10:23:23
 */
public class InputPayPasswordDialog extends BaseDialog {
    private TextView title, paymoney, vocher;

    private ImageView close;

    private GridPasswordView gridPassword;

    private Activity mActivity;

    private InputPayPwdCallBack callback;

    public InputPayPasswordDialog(Activity activity, InputPayPwdCallBack callback) {
        super(activity, ResIdManager.getStyleId(activity, Rx.style.PYWTheme_Widget_Dialog));
        setCancelable(false);
        setOnDismissListener(onDismissListener);
        mActivity = activity;
        this.callback = callback;
        initView();
    }

    private void initView() {
        setContentView(ResIdManager.getLayoutId(mActivity, Rx.layout.pyw_dialog_input_paypassword));
        title = (TextView) findViewById(ResIdManager.getId(mActivity,
                Rx.id.pyw_tv_common_dialog_title));
        title.setText("请输入交易密码");
        close = (ImageView) findViewById(ResIdManager.getId(mActivity, Rx.id.pyw_iv_close));
        paymoney = (TextView) findViewById(ResIdManager.getId(mActivity,
                Rx.id.pyw_tv_input_paypsd_paymoney));
        vocher = (TextView) findViewById(ResIdManager.getId(mActivity,
                Rx.id.pyw_tv_input_paypsd_voucher));
        gridPassword = (GridPasswordView) findViewById(ResIdManager.getId(mActivity,
                Rx.id.pyw_gv_password));
        close.setOnClickListener(mClickListener);
        gridPassword.setOnPasswordChangedListener(mOnPasswordChangedListener);
    }

    OnPasswordChangedListener mOnPasswordChangedListener = new OnPasswordChangedListener() {

        @Override
        public void onMaxLength(String psw) {
            if (psw == null || psw.length() != 6) {
                ToastUtil.showMsg("请输入完整的密码");
                return;
            }
            // 调用接口校验支付接口
            checkPayPwd(psw);
        }

        @Override
        public void onChanged(String psw) {

        }
    };

    public void show(String pm, SpannableString v) {
        paymoney.setText(pm);
        vocher.setText(v);
        show();
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() {
                gridPassword.forceInputViewGetFocus();// 弹出输入法
            }
        }, 200);
    };

    /**
     * 校验支付密码
     * 
     * @param psw
     */
    protected void checkPayPwd(String psw) {

        CheckPayPasswordTask task = new CheckPayPasswordTask() {
            @Override
            public void callback(HttpResponse httpResponse) {
                CheckPayPasswordResponse response = (CheckPayPasswordResponse) httpResponse;
                if (response != null) {
                    if (response.isOk()) {
                        dismiss();
                        callback.onSuccess();
                    } else {
                        ToastUtil.showMsg(response.getErrorMsg() == null ? "交易密码错误" : response
                                .getErrorMsg());
                    }
                }
            }
        };
        try {
            task.request(psw);
        } catch (AppException e) {
            ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
            e.printStackTrace();
        }

    }

    public void clearPassword() {
        if (gridPassword != null) {
            gridPassword.clearPassword();
        }
    }

    android.view.View.OnClickListener mClickListener = new android.view.View.OnClickListener() {

        @Override
        public void onClick(View v) {
            if (v == close) {
                dismiss();
            }
        }
    };

    public interface InputPayPwdCallBack {
        void onSuccess();
    }

    OnDismissListener onDismissListener = new OnDismissListener() {

        @Override
        public void onDismiss(DialogInterface dialog) {
            hideSoftInput(mActivity);
        }
    };

    /**
     * 隐藏软键盘
     */
    protected void hideSoftInput(Activity activity) {
        InputMethodManager manager = (InputMethodManager) activity
                .getSystemService(Context.INPUT_METHOD_SERVICE);
        // manager.toggleSoftInput(InputMethodManager.HIDE_NOT_ALWAYS, 0);
        if (activity.getCurrentFocus() != null) {
            manager.hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(),
                    InputMethodManager.HIDE_NOT_ALWAYS);
        }

    }

}
