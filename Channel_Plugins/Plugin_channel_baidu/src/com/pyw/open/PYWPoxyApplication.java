package com.pyw.open;

import com.baidu.gamesdk.BDGameSDK;
import com.pyw.manager.PYWSDKManager;

import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;

public class PYWPoxyApplication extends Application {

	public void onCreate() {
		super.onCreate();
		PYWSDKManager.onAppCreate(this);
		BDGameSDK.initApplication(this);
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
