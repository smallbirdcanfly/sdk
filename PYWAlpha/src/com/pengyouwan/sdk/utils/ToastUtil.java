
package com.pengyouwan.sdk.utils;


import com.pengyouwan.sdk.manager.SDKControler;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.widget.Toast;

/**
 * 描述:显示提示信息
 * 
 * @author chenys
 * @since 2014-3-26 下午3:08:14
 */
public class ToastUtil {

    private static final int MSG_SHOW_MESSAGE = 0X01;

    private static Handler mHandler = new Handler(Looper.getMainLooper()) {
        public void handleMessage(android.os.Message msg) {
            Context context = SDKControler.getContext();
            switch (msg.what) {
                case MSG_SHOW_MESSAGE:
                    String text = (String) msg.obj;
                    Toast toast = Toast.makeText(context, text, Toast.LENGTH_SHORT);
                    toast.setGravity(Gravity.BOTTOM, 0, AppUtil.dip2px(context, 15));
                    toast.show();
                    break;
            }
        };
    };

    /**
     * 显示提示信息
     * 
     * @param msg
     */
    public static void showMsg(String msg) {
        mHandler.obtainMessage(MSG_SHOW_MESSAGE, msg).sendToTarget();
    }

}
