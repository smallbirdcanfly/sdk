package com.pyw.plugin.okwan;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/**
 * Created by zwq on 2016/8/26.
 * SDK登陆成功后会发送一条广播通知，并携带返回数据
 * uid 注册
 * scode 登录
 */
public class PlatformLoginReceiver extends BroadcastReceiver{
	
	@Override
	public void onReceive(Context context, Intent intent) {
		String uid = intent.getStringExtra("uid");
		String scode = intent.getStringExtra("scode");
		Log.i("bbb","uid:"+uid+"--------scode:"+scode);
		if(EventDispacther.get()!=null) {
			EventDispacther.get().onLogin(uid, scode);
		}
	}

}
