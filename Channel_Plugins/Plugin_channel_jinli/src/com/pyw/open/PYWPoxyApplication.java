package com.pyw.open;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;

import com.gionee.gamesdk.floatwindow.GamePlatform;
import com.pyw.manager.PYWSDKManager;

public class PYWPoxyApplication extends Application {

	public void onCreate() {
		super.onCreate();
		PYWSDKManager.onAppCreate(this);
		GamePlatform.init(this, "F582F44FAFEE46D496B575E5CF55B7E5");
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



}
