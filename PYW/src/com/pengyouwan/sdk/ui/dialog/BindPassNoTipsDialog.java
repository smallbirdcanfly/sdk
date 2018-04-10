
package com.pengyouwan.sdk.ui.dialog;

import com.pengyouwan.framework.base.BaseDialog;
import com.pengyouwan.sdk.activity.BindMobilePhoneActivity;
import com.pengyouwan.sdk.activity.ForgetLoginPasswordActivity;
import com.pengyouwan.sdk.activity.IDCardInfomationActivity;
import com.pengyouwan.sdk.activity.RegisterActivity;
import com.pengyouwan.sdk.manager.SDKEventDispatcher;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.open.ISDKEventCode;
import com.pengyouwan.sdk.open.ISDKEventExtraKey;
import com.pengyouwan.sdk.open.User;
import com.pengyouwan.sdk.utils.BehavioralHelper;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.StaticsHelper;
import com.pyw.common.BehaviorConstants;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;

/**
 * 类说明: 绑定通行证提示框
 * 
 * @author lijx
 */
public class BindPassNoTipsDialog extends BaseDialog {

    private View unBindBtn, bindBtn;

    private Activity mActivity;

    public BindPassNoTipsDialog(Activity mActivity) {
        super(mActivity, ResIdManager.getStyleId(mActivity, Rx.style.PYWTheme_Widget_Dialog));
        this.mActivity = mActivity;
        setCancelable(false);
        initView();
     // 往数据库写入行为操作数据
		BehavioralHelper.getInstance().saveBehavior(
				BehaviorConstants.PAGE.BIND_PHONE_DIALOG,
				BehaviorConstants.BEHAVIORA.ENTER_PAGE,
				BehaviorConstants.TYPE.TYPE_ENTER_PAGE);
    }

    private void initView() {
        setContentView(ResIdManager.getLayoutId(mActivity, Rx.layout.pyw_dialog_tips_bindpassno));
        unBindBtn = findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_btn_unbind));
        bindBtn = findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_btn_bind));
        bindBtn.setOnClickListener(mListener);
        unBindBtn.setOnClickListener(mListener);

    }

    public View.OnClickListener mListener = new View.OnClickListener() {

        @Override
        public void onClick(View v) {
            if (v == unBindBtn) {
            	// 往数据库写入行为操作数据
        		BehavioralHelper.getInstance().saveBehavior(
        				BehaviorConstants.PAGE.BIND_PHONE_DIALOG,
        				BehaviorConstants.BEHAVIORA.CLOSE,
        				BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
                dismiss();
                // 手动关闭界面
                if (mActivity.getClass() == RegisterActivity.class
                        || mActivity.getClass() == ForgetLoginPasswordActivity.class || mActivity.getClass() == IDCardInfomationActivity.class) {
                    mActivity.finish();
                }
                dispatchSDKCallback();
            } else if (v == bindBtn) {
            	// 往数据库写入行为操作数据
        		BehavioralHelper.getInstance().saveBehavior(
        				BehaviorConstants.PAGE.BIND_PHONE_DIALOG,
        				BehaviorConstants.BEHAVIORA.BIND_IMMEDIATELY,
        				BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
                Intent intent = BindMobilePhoneActivity.createIntentForTipsDilaog(getContext());
                getContext().startActivity(intent);
             // 往数据库写入行为操作数据
        		BehavioralHelper.getInstance().saveBehavior(
        				BehaviorConstants.PAGE.BIND_PHONE_DIALOG,
        				BehaviorConstants.BEHAVIORA.CLOSE,
        				BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
                dismiss();
                // 手动关闭界面
                if (mActivity.getClass() == RegisterActivity.class
                        || mActivity.getClass() == ForgetLoginPasswordActivity.class || mActivity.getClass() == IDCardInfomationActivity.class) {
                    mActivity.finish();
                }
            }
        }
    };

    /**
     * 发送相关回调
     */
    private void dispatchSDKCallback() {
        User user = UserManager.getInstance().getCurrentUser();
        // 登陆成功回调数据
        Bundle data = new Bundle();
        // 返回游戏回调数据
        Bundle backToGameData = new Bundle();
        backToGameData.putSerializable(ISDKEventExtraKey.EXTRA_USER, user);
        data.putSerializable(ISDKEventExtraKey.EXTRA_USER, user);
        //更新登录时长信息
        StaticsHelper.getInstance().accountChange();
        SDKEventDispatcher.sendEventNow(ISDKEventCode.CODE_LOGIN_SUCCESS, data);
    }

}
