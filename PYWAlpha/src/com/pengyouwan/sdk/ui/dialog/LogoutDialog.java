package com.pengyouwan.sdk.ui.dialog;

import android.app.Activity;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.pengyouwan.framework.base.BaseDialog;
import com.pengyouwan.sdk.interfaces.LogOutCallback;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

/**
 * 描述：退出登陆和删除账号共用弹窗
 * @author Hanson
 * @since 创建时间：2016-7-1 下午2:17:58
 * 
 */
public class LogoutDialog extends BaseDialog {

    private Button cancelBtn;// 取消按钮

    private Button ensureBtn;// 确认按钮

    private LogOutCallback mCallback;
    
    private int mType;
    
    private TextView mHintText;

    public LogoutDialog(Activity activity,int type) {
        super(activity, ResIdManager.getStyleId(activity, Rx.style.PYWTheme_Widget_Dialog));
        mType = type;
        initView();
    }

    private void initView() {
        setContentView(ResIdManager.getLayoutId(getContext(), Rx.layout.pyw_dialog_logout));
        cancelBtn = (Button) findViewById(
                (ResIdManager.getId(getContext(), Rx.id.pyw_btn_logout_cancel)));
        ensureBtn = (Button) findViewById(
                (ResIdManager.getId(getContext(), Rx.id.pyw_btn_logout_ensure)));
        mHintText = (TextView) findViewById(
                (ResIdManager.getId(getContext(), Rx.id.pyw_tv_logout_tips)));

        cancelBtn.setOnClickListener(mClickListener);
        ensureBtn.setOnClickListener(mClickListener);
        if(mType > 0){
        	mHintText.setText("确定删除此账号吗？");
        }
    }

    private View.OnClickListener mClickListener = new View.OnClickListener() {

        public void onClick(View v) {
            if (v == cancelBtn) {// 取消操作
                dismiss();
            } else if (v == ensureBtn) {// 确认操作
                if (mCallback != null) {
                    mCallback.onLogout();
                }
            }
        }
    };

    public void setOnLogoutCallback(LogOutCallback call) {
        mCallback = call;
    }

}

