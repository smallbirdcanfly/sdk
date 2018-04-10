/**
 * 
 */

package com.pengyouwan.sdk.ui.dialog;

import com.pengyouwan.framework.base.BaseDialog;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

import android.app.Activity;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import java.util.List;

/**
 * 描述:发现新购账号弹出框
 * 
 * @author CJ
 * @since 2016-6-1 下午5:45:42
 */
public class NewAccountLoginDialog extends BaseDialog {

    private Button cancelBtn;// 取消按钮

    private Button ensureBtn;// 确认按钮

    private TextView loginTips;

    private List<SDKUser> users;

    private Activity mActivity;

    public NewAccountLoginDialog(Activity activity, List<SDKUser> users) {
        super(activity, ResIdManager.getStyleId(activity, Rx.style.PYWTheme_Widget_Dialog));
        mActivity = activity;
        this.users = users;
        initView();
    }

    private void initView() {
        setContentView(ResIdManager
                .getLayoutId(getContext(), Rx.layout.pyw_dialog_newaccount_login));
        cancelBtn = (Button) findViewById((ResIdManager.getId(getContext(),
                Rx.id.pyw_btn_login_cancel)));
        ensureBtn = (Button) findViewById((ResIdManager.getId(getContext(),
                Rx.id.pyw_btn_login_ensure)));
        loginTips = (TextView) findViewById((ResIdManager.getId(getContext(),
                Rx.id.pyw_tv_login_tips)));
        loginTips.setText(getTitleSpan(users.get(0).getUserName()));
        cancelBtn.setOnClickListener(mClickListener);
        ensureBtn.setOnClickListener(mClickListener);
    }

    /**
     * 登录文字样式修改
     */
    private SpannableString getTitleSpan(String account) {
        SpannableString ss = new SpannableString("是否使用" + account + "登录？");
        ss.setSpan(new ForegroundColorSpan(Color.parseColor("#ee970f")), 4, 4 + account.length(),
                Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        return ss;
    }

    private View.OnClickListener mClickListener = new View.OnClickListener() {

        public void onClick(View v) {
            if (v == ensureBtn) {
                if (isShowing()) {
                    dismiss();
                }
                new LoginingDialog(mActivity, users.get(0), true,
                        LoginingDialog.CHANGE_TO_LOGIN_FOR_NOPASS).show();
            } else {
                if (isShowing()) {
                    dismiss();
                }
                SDKUser user;
                if (users.size() > 1) {
                    user = users.get(1);
                } else {
                    user = users.get(0);
                }
                new LoginingDialog(mActivity, user, true, LoginingDialog.CHANGE_TO_LOGIN_FOR_NOPASS)
                        .show();
            }
        }
    };

}
