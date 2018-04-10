package com.pyw.manager;

import com.pengyouwan.sdk.open.OnSDKEventListener;

import android.content.Context;
import android.os.Bundle;


/**
 * 母包回调信息处理器
 * @author CJ
 *
 */
public class SDKEventListener implements OnSDKEventListener {
	private Context mContext;

	private static PYWCallback eventback;

	public SDKEventListener(Context context) {
		mContext = context;
	}

	public static void seteventcallback(PYWCallback back) {
		eventback = back;
	}

	@Override
	public void onEvent(int eventCode, Bundle data) {
		if (null != eventback) {
			eventback.onEvent(eventCode, data);
		}

	}
}
