package com.pyw.plugin.lianyun72;

import com.pengyouwan.framework.utils.SdkUtil;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Toast;


public class Lianyun72SplashActivity extends Activity {

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.requestWindowFeature(Window.FEATURE_NO_TITLE);
		this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);
		setContentView(null);

		try {
			startActivity(new Intent(
					SdkUtil.getPackageInfo(getApplicationContext()).packageName
							+ ".pyw.MAIN"));
			finish();
		} catch (Exception e) {
			e.printStackTrace();
			Toast.makeText(getBaseContext(), "请确保主界面配置正确", Toast.LENGTH_SHORT)
					.show();
		}

	}

}
