package com.pyw.plugin.okwan;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/**
 * Created by zwq on 2016/8/26.
 * SDK判断支付成功后会发送一条广播通知,“1”为成功
 */
public class PlatformPayReceiver extends BroadcastReceiver{
	@Override
	public void onReceive(Context context, Intent intent) {
		String status = intent.getStringExtra("status");
		if(EventDispacther.get()!=null) {
			EventDispacther.get().onPay(status);
		}
	}

}
