package com.pyw.open;

import android.content.Context;
import android.content.res.Configuration;

import com.cs.master.entity.CSMasterConfig;
import com.lib.csmaster.sdk.CSMasterApplication;
import com.lib.csmaster.sdk.CSMasterSDK;
import com.pyw.manager.PYWSDKManager;

public class PYWPoxyApplication extends CSMasterApplication{


	public void onCreate() {
		super.onCreate();
		PYWSDKManager.onAppCreate(this);
		//初始化sdk
		CSMasterConfig config = new CSMasterConfig();
		config.setLandscape(true);//设置方向 横屏 true 竖屏false
//        config.setDebug(false);//设置debug模式,对应测试环境，正式打包时，请修改为true或不设置，现在只有正式环境可以使用
		CSMasterSDK.getInstance().initApplication(this,config);
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
		super.onTerminate();
	}

}
