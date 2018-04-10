
package com.pengyouwan.sdk.ui.widget;

import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;

/**
 * 描述:正在加载的动画
 *
 * @author zhj
 * @since 2015年9月23日 下午2:08:54
 */
public class LoadingAnimView extends ImageView {

    public LoadingAnimView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        if (visibility == View.VISIBLE) {
            Animation loadingAnim = AnimationUtils.loadAnimation(getContext(),
                    ResIdManager.getAnimId(getContext(), Rx.anim.pyw_loading));
            // 使用ImageView显示动画
            startAnimation(loadingAnim);
        } else {
            clearAnimation();
        }
    }
}
