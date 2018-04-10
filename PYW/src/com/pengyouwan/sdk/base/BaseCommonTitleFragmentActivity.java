
package com.pengyouwan.sdk.base;

import com.pengyouwan.framework.base.BaseWorkerFragmentActivity;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

/**
 * 描述:通用带标题的fragmentactivity
 * 
 * @author zhj
 * @since 2015-5-29 上午9:18:59
 */
public abstract class BaseCommonTitleFragmentActivity extends BaseWorkerFragmentActivity {

    /**
     * 标题栏的回退箭头
     */
    private View mBackImg;

    /**
     * 标题
     */
    protected TextView mTitle;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
    	SDKControler.activityCreate(this);
        super.onCreate(savedInstanceState);
    }

    @Override
    public void onContentChanged() {
        super.onContentChanged();
        mBackImg = findViewById(ResIdManager.getId(this, Rx.id.pyw_layout_common_title_bar_back));
        mTitle = (TextView) findViewById(ResIdManager.getId(this,
                Rx.id.pyw_tv_common_title_bar_title));

        if (mBackImg == null) {
            throw new IllegalArgumentException("can not find R.id.iv_common_title_bar_back.");
        }
        if (mTitle == null) {
            throw new IllegalArgumentException("can not find R.id.tv_common_title_bar_title.");
        }

        mBackImg.setOnClickListener(mLeftBtnClickListener);
    }

    /**
     * 设置标题
     * 
     * @param title 标题
     */
    protected void setCommonTitle(final String title) {
        if (mTitle != null) {
            mTitle.setText(title);
        }
    }

    /**
     * 设置标题的背景
     * 
     * @param color
     */
    protected void setCommonTilteBackground(int color) {
        if (mTitle != null) {
            mTitle.setBackgroundColor(color);
        }
    }

    /**
     * 设置标题
     * 
     * @param strResId 字符串id
     */
    protected void setCommonTitle(int strResId) {
        if (mTitle != null) {
            mTitle.setText(strResId);
        }
    }

    /**
     * 回退箭头点击监听
     */
    private OnClickListener mLeftBtnClickListener = new OnClickListener() {
        @Override
        public void onClick(View v) {
            onLeftBtnClick();
        }
    };

    protected void onLeftBtnClick() {
        finish();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        SDKControler.activityDestory(this);
        if (SDKControler.getActivityCounter() == 0) {
            doBackToGameCallback();
        }
    }

    protected void doBackToGameCallback() {
    }

}
