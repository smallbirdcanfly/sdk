package com.pyw.open;

import android.content.Context;
import android.content.res.Configuration;

import com.pyw.manager.PYWSDKManager;
import com.sboran.game.sdk.SboanApplication;

public class PYWPoxyApplication extends SboanApplication {

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
