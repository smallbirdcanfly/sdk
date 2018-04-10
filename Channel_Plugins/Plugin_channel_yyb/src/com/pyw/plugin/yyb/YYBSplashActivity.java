package com.pyw.plugin.yyb;

import com.pengyouwan.framework.utils.SdkUtil;
import com.tencent.ysdk.api.YSDKApi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

public class YYBSplashActivity extends Activity{

	// TODO 选择java还是cpp
	public static final String LANG_CPP = "cpp";
	public static final String LANG_JAVA = "java";

	public static String LANG = LANG_JAVA;// 开发语言 java cpp

	private static String LOG_TAG = "YSDKDemo SplashActivity";
	private static Activity mActivity = null;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		if (null != mActivity && !mActivity.equals(this)) {
			Log.d(LOG_TAG,
					"Warning!Reduplicate game activity was detected.Activity will finish immediately.");
			// TODO GAME 处理游戏被拉起的情况
			YSDKApi.handleIntent(this.getIntent());
			this.finish();
			return;
		} else {

			// TODO GAME YSDK初始化
			YSDKApi.onCreate(this);

			// TODO GAME 处理游戏被拉起的情况
			YSDKApi.handleIntent(this.getIntent());
		}

		mActivity = this;
		
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

	// TODO GAME 在onNewIntent中需要调用handleIntent将平台带来的数据交给YSDK处理
	@Override
	protected void onNewIntent(Intent intent) {
		Log.e(LOG_TAG, "onNewIntent");
		super.onNewIntent(intent);
		YSDKApi.handleIntent(intent);
	}

}
