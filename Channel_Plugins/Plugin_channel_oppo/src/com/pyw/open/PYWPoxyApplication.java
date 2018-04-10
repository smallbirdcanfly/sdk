package com.pyw.open;

import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;

import com.nearme.game.sdk.GameCenterSDK;
import com.pyw.manager.PYWSDKManager;

public class PYWPoxyApplication extends Application {

	public void onCreate() {
		super.onCreate();
		PYWSDKManager.onAppCreate(this);
		String appSecret = "6af7d509b2f5145286A1213208dD874A";
		GameCenterSDK.init(appSecret, this);
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
