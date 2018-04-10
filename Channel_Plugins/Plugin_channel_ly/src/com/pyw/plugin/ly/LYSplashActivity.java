package com.pyw.plugin.ly;

import com.moge.sdk.mg.MogeSplashActivity;
import com.pengyouwan.framework.utils.SdkUtil;

import android.content.Intent;
import android.widget.Toast;

public class LYSplashActivity extends MogeSplashActivity {

	@Override
	public void onFinish(){
		// 闪屏结束后，跳转到游戏界面
		
		
		/**
		 * 进入CP主界面
		 */
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
}