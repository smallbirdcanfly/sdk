
package com.pengyouwan.sdk.manager;

import com.pengyouwan.sdk.open.OnSDKEventListener;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;

/**
 * 描述:SDK事件分发器
 *
 * @author zhj
 * @since 2015年9月28日 下午8:00:44
 */
public class SDKEventDispatcher {

    private static final int MSG_UI_SEND_EVENT = 1;

    protected static Handler mHandler = new Handler(Looper.getMainLooper()) {
        public void handleMessage(android.os.Message msg) {
            OnSDKEventListener lis = SDKControler.getOnSDKEventListener();
            if (lis != null) {
                int eventCode = msg.arg1;
                Bundle data = (Bundle) msg.obj;
                // 往data里存放要自己要回调出去的数据
                lis.onEvent(eventCode, data);
            }
        };
    };

    /**
     * 发送事件.
     * 
     * @param eventCode
     * @param data
     */
    public static void sendEvent(int eventCode, Bundle data) {
        mHandler.obtainMessage(MSG_UI_SEND_EVENT, eventCode, 0, data).sendToTarget();
    }

    /**
     * 立即发送事件.
     * 
     * @param eventCode
     * @param data
     */
    public static void sendEventNow(int eventCode, Bundle data) {
        SDKControler.getOnSDKEventListener().onEvent(eventCode, data);
    }

}
