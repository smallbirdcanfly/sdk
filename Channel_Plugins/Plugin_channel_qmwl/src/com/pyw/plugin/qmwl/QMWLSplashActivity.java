package com.pyw.plugin.qmwl;

import android.content.Intent;
import android.graphics.Color;
import android.widget.Toast;

import com.pengyouwan.framework.utils.SdkUtil;
import com.snowfish.cn.ganga.helper.SFOnlineSplashActivity;

/**
 * Created by zhouw on 2018/1/18.
 */

public class QMWLSplashActivity extends SFOnlineSplashActivity {

    @Override
    public int getBackgroundColor() {
        return Color.WHITE;
    }

    @Override
    public void onSplashStop() {
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
