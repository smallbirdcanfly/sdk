package com.pyw.open;

import android.content.Context;
import android.content.res.Configuration;

import com.haiyun.zwq.kxwansdk.app.KxwApp;
import com.pyw.manager.PYWSDKManager;

public class PYWPoxyApplication extends KxwApp {

	public void onCreate() {
		super.onCreate();
		PYWSDKManager.onAppCreate(this);
	}

	/**
	 * 此方法在onCreate方法之前调用
	 */
	public void attachBaseContext(Context base) {
		super.attachBaseContext(base);
		PYWSDKManager.onAppAttachBaseContext(this, base);
	}

	public void onConfigurationChanged(Configuration newConfig) {
		super.onConfigurationChanged(newConfig);

		PYWSDKManager.onAppConfigurationChanged(this, newConfig);
	}

	public void onTerminate() {
	}

}
