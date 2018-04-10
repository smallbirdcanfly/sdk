package com.pengyouwan.sdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Toast;

import com.pengyouwan.framework.utils.SdkUtil;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

/**
 * 描述:闪屏启动页
 * 
 * @author CJ
 * @since 2016-7-18 下午11:05:57
 */
public class LauncherActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		// 取消标题
		this.requestWindowFeature(Window.FEATURE_NO_TITLE);
		// 取消状态栏
		this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);
		if (AppUtil.isScreenLandscape(this)) {
			setContentView(ResIdManager.getLayoutId(this,
					Rx.layout.pyw_activity_launcher_landscape));
		} else {
			setContentView(ResIdManager.getLayoutId(this,
					Rx.layout.pyw_activity_launcher_portrait));
		}
		initView();
	}

	private void initView() {
		countDown();
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
			Toast.makeText(getBaseContext(), "请确保主界面配置正确", Toast.LENGTH_SHORT).show();
		}
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
}
