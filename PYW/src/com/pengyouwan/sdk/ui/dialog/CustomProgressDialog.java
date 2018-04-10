
package com.pengyouwan.sdk.ui.dialog;

import com.pengyouwan.framework.base.BaseDialog;
import com.pengyouwan.sdk.ui.widget.LoadingAnimView;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;

/**
 * 描述:通用加载中对话框
 *
 * @author zhj
 * @since 2015年10月8日 下午8:02:19
 */
public class CustomProgressDialog extends BaseDialog {

    private String messageText;

    private TextView tvLoadingTips;

    private LoadingAnimView progressBar;

    public CustomProgressDialog(Activity activity, String messageText) {
        super(activity, ResIdManager.getStyleId(activity, Rx.style.PYWTheme_Widget_Dialog));
        setCancelable(false);
        this.messageText = messageText;
        initView();
    }

    private void initView() {
        setContentView(
                ResIdManager.getLayoutId(getContext(), Rx.layout.pyw_dialog_custom_progress));
        progressBar = (LoadingAnimView) findViewById(
                ResIdManager.getId(getContext(), Rx.id.pyw_progress_loading_bar));
        tvLoadingTips = (TextView) findViewById(
                ResIdManager.getId(getContext(), Rx.id.pyw_tv_loading_tips));// 提示文字
        tvLoadingTips.setText("" + messageText);// 设置加载信息

    }

    public void setMessageText(String messageText) {
        this.messageText = messageText;
        tvLoadingTips.setText("" + messageText);
    }

    @Override
    public void show() {
        super.show();
        // 使用ImageView显示动画
        progressBar.setVisibility(View.VISIBLE);
    }

}
