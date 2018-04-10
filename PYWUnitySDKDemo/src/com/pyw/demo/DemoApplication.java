package com.pyw.demo;

import com.facebook.stetho.Stetho;
import com.pyw.open.PYWPoxyApplication;


/**
 * Demo的application
 * 游戏方有自己的application需要继承PYWPoxyApplication
 * 没有的话直接在xml配置sdk的application
 * @author CJ
 *
 */
public class DemoApplication extends PYWPoxyApplication{

	public void onCreate(){
		super.onCreate();
		Stetho.initializeWithDefaults(this);
	}
	
	@Override
	public void onTerminate() {
		super.onTerminate();
	}
}
