package com.pyw.open;

import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;

import com.pyw.manager.PYWSDKManager;
import com.vivo.unionsdk.open.VivoUnionSDK;

public class PYWPoxyApplication extends Application {

	public void onCreate() {
		super.onCreate();
		PYWSDKManager.onAppCreate(this);
		VivoUnionSDK.initSdk(this,"e9c98b0ec66940a25077bf16bb15b51f",false);
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
