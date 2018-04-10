package com.pyw.open;

import com.pengyouwan.framework.utils.SdkUtil;
import com.pengyouwan.sdk.utils.AppUtil;
import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Toast;

public class SplashActivity extends Activity {
	
	public boolean hasPywSplash = false;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		// 取消标题
		this.requestWindowFeature(Window.FEATURE_NO_TITLE);
		// 取消状态栏
		this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);
		int layoutID = 0;
		try {
			if (AppUtil.isScreenLandscape(this)) {// 横屏
				layoutID = getResources().getIdentifier("pyw_splash_landscape",
						"layout", getPackageName());
			} else {
				layoutID = getResources().getIdentifier("pyw_splash_portrait",
						"layout", getPackageName());
			}
			setContentView(layoutID);
			countDown();
		} catch (RuntimeException e) {
			Toast.makeText(getBaseContext(), "请确保闪屏界面资源齐全", Toast.LENGTH_SHORT).show();
			e.printStackTrace();
		}
	}
	
	public void setHasPywSplash (boolean hasPywSplash){
		this.hasPywSplash = hasPywSplash;
	}
	
	
	/**
	 * 倒计时3S
	 */
	private void countDown() {
		Thread countThread = new Thread(new Runnable() {
			public void run() {
				int i = 3;
				while (i > 0) {
					i--;
					try {
						Thread.sleep(1000);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
				goMainAcitivity();// 倒计时结束跳转
			}
		});
		countThread.start();
	}
	
	/**
	 * 进入CP主界面
	 */
	private void goMainAcitivity() {
		try {
			startActivity(new Intent(
					SdkUtil.getPackageInfo(getApplicationContext()).packageName
							+ ".pyw.MAIN"));
			finish();
		} catch (Exception e) {
			e.printStackTrace();
			Toast.makeText(getBaseContext(), "请确保闪屏界面配置正确", Toast.LENGTH_SHORT).show();
		}
	}

}
