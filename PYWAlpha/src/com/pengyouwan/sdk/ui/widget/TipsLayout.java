
package com.pengyouwan.sdk.ui.widget;

import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

import android.content.Context;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

/**
 * 描述:提示界面
 * 
 * @author zhj
 * @since 2013-10-27 下午4:13:33
 */
public class TipsLayout extends RelativeLayout {

    /**
     * 显示正在加载提示
     */
    public static final int TYPE_LOADING = 1;

    /**
     * 显示失败提示
     */
    public static final int TYPE_FAILE = 2;

    /**
     * 显示自定义提示界面
     */
    public static final int TYPE_CUSTOM_VIEW = 3;

    private View mLoadingView;

    private View mLoadFaileView;

    public TipsLayout(Context context) {
        this(context, null);
    }

    public TipsLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public TipsLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        LayoutInflater inflater = (LayoutInflater) context
                .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        mLoadingView = inflater
                .inflate(ResIdManager.getLayoutId(context, Rx.layout.pyw_view_loading), null);
        mLoadFaileView = inflater
                .inflate(ResIdManager.getLayoutId(context, Rx.layout.pyw_view_loading_faile), null);

        TextView tips = (TextView) mLoadFaileView
                .findViewById(ResIdManager.getId(context, Rx.id.pyw_tv_loading_wrong));
        tips.setText(getWrongTips());
        RelativeLayout.LayoutParams rlp = new RelativeLayout.LayoutParams(
                RelativeLayout.LayoutParams.MATCH_PARENT, RelativeLayout.LayoutParams.MATCH_PARENT);
        rlp.addRule(RelativeLayout.CENTER_IN_PARENT);

        addView(mLoadingView, rlp);
        addView(mLoadFaileView, rlp);
    }

    private SpannableString getWrongTips() {
        SpannableString ss = new SpannableString("抱歉，加载失败了!");
        ss.setSpan(
                new ForegroundColorSpan(getContext().getResources()
                        .getColor(ResIdManager.getColorId(getContext(), Rx.color.pyw_tips_fail))),
                3, 5, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        return ss;
    }

    /**
     * 设置刷新按钮点击事件
     * 
     * @param listener
     */
    public void setOnRefreshButtonClickListener(OnClickListener listener) {
        LinearLayout layoutLoadFailed = (LinearLayout) mLoadFaileView
                .findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_layout_load_faile));
        layoutLoadFailed.setOnClickListener(listener);
    }

    /**
     * 显示提示界面
     * 
     * @param showType 显示类型，分为显示loading和显示刷新按钮
     */
    public void show(int showType) {
        setVisibility(View.VISIBLE);
        for (int i = 0; i < getChildCount(); i++) {
            getChildAt(i).setVisibility(View.GONE);
        }
        if (showType == TYPE_LOADING) {
            getChildAt(0).setVisibility(View.VISIBLE);
        } else if (showType == TYPE_FAILE) {
            getChildAt(1).setVisibility(View.VISIBLE);
        } else if (showType == TYPE_CUSTOM_VIEW) {
            if (getChildCount() == 3) {
                getChildAt(2).setVisibility(View.VISIBLE);
            }
        }
        if (mLoadingView != null && mLoadingView.getVisibility() == View.VISIBLE) {
            mLoadingView.findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_iv_loading))
                    .setVisibility(View.VISIBLE);
        } else {
            mLoadingView.findViewById(ResIdManager.getId(getContext(), Rx.id.pyw_iv_loading))
                    .setVisibility(View.GONE);
        }
    }

    /**
     * 隐藏提示界面
     */
    public void hide() {
        setVisibility(View.GONE);
    }

    /**
     * 设置自定义提示View
     * 
     * @param customTipsView
     */
    public void setCustomView(View customTipsView) {
        if (getChildCount() == 2) {
            RelativeLayout.LayoutParams rlp = new RelativeLayout.LayoutParams(
                    RelativeLayout.LayoutParams.MATCH_PARENT,
                    RelativeLayout.LayoutParams.MATCH_PARENT);
            rlp.addRule(RelativeLayout.CENTER_IN_PARENT);

            addView(customTipsView, rlp);
        }
    }

    public void setLoadingViewBackgroundColor(int color) {
        mLoadingView.setBackgroundColor(color);
    }

    public void setLoadFaileViewBackgroundColor(int color) {
        mLoadFaileView.setBackgroundColor(color);
    }

}
