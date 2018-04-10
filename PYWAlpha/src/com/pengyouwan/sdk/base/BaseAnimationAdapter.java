
package com.pengyouwan.sdk.base;

import java.util.HashSet;

import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.BaseAdapter;

/**
 * 描述:动画适配器
 * 
 * @author zhj
 * @since 2015-6-5 上午11:27:44
 */
public abstract class BaseAnimationAdapter extends BaseAdapter {

    protected Context mContext;

    public BaseAnimationAdapter(Context context) {
        this.mContext = context;

    }

    /**
     * 最多缓存10个图片
     */
    private int mMaxAnimationCacheNum = 10;

    /**
     * 图片动画缓存
     */
    private HashSet<String> mAnimationCaches = new HashSet<String>();

    /**
     * 设置淡入动画
     * 
     * @param view 控件
     */
    protected void setFadeIn(View view) {
        setFadeIn(view, 300);
    }

    protected void setFaseIn(View view, int position) {
        setFadeIn(view, 300 + position * 10);
    }

    protected void setFaseIn(View view, Bitmap bitmap, int position) {

    }

    /**
     * 设置淡入动画
     * 
     * @param view 控件
     * @param startOffset 廷迟毫秒数
     */
    protected void setFadeIn(View view, long startOffset) {
        String imageUrl = (String) view.getTag();
        if (!mAnimationCaches.contains(imageUrl)) {
            mAnimationCaches.add(imageUrl);
            Context context = mContext;
            Animation fade_in = AnimationUtils.loadAnimation(context,
                    ResIdManager.getAnimId(context, Rx.anim.pyw_fade_in));
            fade_in.setDuration(600);
            fade_in.setStartOffset(startOffset);
            fade_in.setInterpolator(new DecelerateInterpolator());
            view.startAnimation(fade_in);
            if (isFull()) {
                mAnimationCaches.remove(0);
            }
        }
    }

    /**
     * 设置最大缓存数
     * 
     * @param maxNum
     */
    protected void setMaxAnimCacheNum(int maxNum) {
        mMaxAnimationCacheNum = maxNum;
    }

    private boolean isFull() {
        return mAnimationCaches.size() > mMaxAnimationCacheNum;
    }

    public void clearAnimCache() {
        mAnimationCaches.clear();
    }

}
