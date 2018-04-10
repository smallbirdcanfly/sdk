
package com.pengyouwan.sdk.open;

import android.app.Activity;
import android.content.Context;
import android.view.WindowManager;

import com.pengyouwan.sdk.ui.widget.FloatView;

/**
 * 描述：浮标管理类
 * 
 * @author pdk
 * @since 2015-9-29上午9:58:57
 */
public class FloatViewTool {

    private static FloatView floatView;

    private WindowManager mWindowManager;

    private boolean isShowing = false;

    private static FloatViewTool instance;

    public static FloatViewTool instance(Activity activity) {
        if (null == instance) {
            synchronized (FloatViewTool.class) {
                if (null == instance) {
                    instance = new FloatViewTool(activity);
                }
            }
        }
        return instance;
    }

    private FloatViewTool(Activity activity) {
        init(activity);
    }

    private void init(Activity activity) {
        mWindowManager = (WindowManager) activity.getSystemService(Context.WINDOW_SERVICE);
        floatView = new FloatView(activity, mWindowManager);
    }

    /**
     * 显示浮标
     * 
     * @param activity
     */
    public void showFloatView() {
        if (!isShowing && floatView != null) {
            floatView.showFloatView();
            isShowing = true;
        }
    }


    public void hideFloatView() {
        if (isShowing && floatView != null) {
            floatView.removeFloatView();
            isShowing = false;
        }
    }

    /**
     * 销毁浮标
     */
    public void destroyFloatView() {
        if (floatView != null) {
            if (isShowing) {
                floatView.removeFloatView();
            }
            floatView = null;
        }
        mWindowManager = null;
    }

}
