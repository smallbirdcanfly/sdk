package com.pengyouwan.sdk.ui.dialog;

import android.app.Activity;
import android.view.View;
import android.widget.Button;

import com.pengyouwan.framework.base.BaseDialog;
import com.pengyouwan.sdk.interfaces.DialogBtnClickListener;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

/**
 * 描述：绑定游戏账号失败弹出框
 * @author Hanson
 * @since 创建时间：2016-7-1 下午5:38:18
 * 
 */
public class BindAccountTipsDialog extends BaseDialog {

    private Button unBindBtn, bindBtn;

    private Activity mActivity;
    
    private DialogBtnClickListener mDialogBtnClickListener;

    public BindAccountTipsDialog(Activity mActivity) {
        super(mActivity, ResIdManager.getStyleId(mActivity, Rx.style.PYWTheme_Widget_Dialog));
        this.mActivity = mActivity;
        setCancelable(false);
        initView();
    }

    private void initView() {
        setContentView(ResIdManager.getLayoutId(mActivity, Rx.layout.pyw_dialog_tips_bindaccount));
        unBindBtn = (Button) findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_btn_unbind));
        bindBtn = (Button) findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_btn_bind));
        unBindBtn.setOnClickListener(mListener);
        bindBtn.setOnClickListener(mListener);

    }

    public View.OnClickListener mListener = new View.OnClickListener() {

        @Override
        public void onClick(View v) {
            // TODO Auto-generated method stub
            if (v == unBindBtn) {
                dismiss();
                if (mDialogBtnClickListener != null) {
                	mDialogBtnClickListener.onLeftBtnClick();
                }
            } else if (v == bindBtn) {
                dismiss();
                if (mDialogBtnClickListener != null) {
                	mDialogBtnClickListener.onRightBtnClick();
                }
            }
        }
    };

    public void setOnDialogBtnClickListener(DialogBtnClickListener c) {
    	mDialogBtnClickListener = c;
    }

}

