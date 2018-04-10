

package com.pengyouwan.sdk.ui.dialog;

import android.app.Activity;
import android.graphics.Color;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;

import com.pengyouwan.framework.base.BaseDialog;
import com.pengyouwan.sdk.interfaces.AccountManagerCallback;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

/**
 * 描述：账号管理弹窗
 * @author Hanson
 * @since 创建时间：2016-7-1 下午2:11:23
 * 
 */
public class AccountManagerDialog extends BaseDialog implements View.OnClickListener {

    private View psw, cancle, divider,deleteDivider;

    private TextView login, unbind,delete;

    private int state;

    private AccountManagerCallback mCallback;
    
    private int curAccount;

    public AccountManagerDialog(Activity activity) {
        this(activity, -1,-1);
    }

    public AccountManagerDialog(Activity activity, int state,int cur) {
        super(activity, ResIdManager.getStyleId(activity, Rx.style.PYWTheme_Widget_Dialog));
        setContentView(ResIdManager.getLayoutId(activity, Rx.layout.pyw_dialog_accountmanager));
        this.state = state;
        this.curAccount = cur;//判断是否是点击当前账号的按钮
        initView();
        initLayoutParam(activity);
    }

    private void initLayoutParam(Activity activity) {
        Window window = getWindow();
        window.setGravity(Gravity.BOTTOM);
        WindowManager.LayoutParams lp = getWindow().getAttributes();
        DisplayMetrics dm = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(dm);
        int parentWidth = dm.widthPixels;
        int width = parentWidth - AppUtil.dip2px(activity, 30);
        lp.width = width;
        lp.height = ViewGroup.LayoutParams.WRAP_CONTENT;
        window.setAttributes(lp);
        window.setWindowAnimations(
                ResIdManager.getStyleId(activity, Rx.style.PYWThem_DialogShowAnim));
    }

    private void initView() {
        login = (TextView) findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_tv_login));
        divider = findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_view_divider));
        deleteDivider= findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_view_delete_divider));
        psw = findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_tv_psw));
        unbind = (TextView) findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_tv_unbind));
        delete = (TextView) findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_tv_delete));
        cancle = findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_tv_cancle));
        login.setOnClickListener(this);
        delete.setOnClickListener(this);
        psw.setOnClickListener(this);
        unbind.setOnClickListener(this);
        cancle.setOnClickListener(this);
        if (state > 0) {
            divider.setVisibility(View.GONE);
            deleteDivider.setVisibility(View.GONE);
            psw.setVisibility(View.GONE);
            delete.setVisibility(View.GONE);
            login.setText("新建账号");
            unbind.setText("绑定已有账号");
            unbind.setTextColor(Color.parseColor("#FF3F3F3F"));
        }
        if(curAccount>0){
        	 divider.setVisibility(View.GONE);
        	 deleteDivider.setVisibility(View.GONE);
             psw.setVisibility(View.GONE);
             delete.setVisibility(View.GONE);
             login.setText("设置独立密码");
        }
        if(!InitManager.getInstance().isDelable()){
        	 deleteDivider.setVisibility(View.GONE);
        	 delete.setVisibility(View.GONE);
        }
    }

    @Override
    public void onClick(View v) {
        if (v == login) {
            if (mCallback != null) {
                mCallback.onItemClick(0);
            }
        } else if (v == psw) {
            if (mCallback != null) {
                mCallback.onItemClick(1);
            }
        } else if (v == unbind) {
            if (mCallback != null) {
                mCallback.onItemClick(2);
            }
        } else if (v == cancle) {
            dismiss();
        } else if (v == delete) {
        	 if (mCallback != null) {
                 mCallback.onItemClick(3);
             }
        }
    }

    public void setCallback(AccountManagerCallback c) {
        mCallback = c;
    }

}

