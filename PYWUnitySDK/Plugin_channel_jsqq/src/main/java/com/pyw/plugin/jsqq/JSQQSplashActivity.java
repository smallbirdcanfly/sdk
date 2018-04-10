package com.pyw.plugin.jsqq;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;

import com.lib.csmaster.sdk.CSMasterSplashActivity;
import com.pengyouwan.framework.utils.SdkUtil;


/**
 * Created by zhouq on 18/1/29.
 */

public class JSQQSplashActivity extends CSMasterSplashActivity {

    @Override
    protected void onSplashBefore(Context context, Bundle saveInstanceState) {

    }

    @Override
    protected void onSplashFinish() {
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
