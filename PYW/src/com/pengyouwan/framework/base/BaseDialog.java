
package com.pengyouwan.framework.base;

import android.app.Activity;
import android.app.Dialog;
import android.os.Build;
import android.os.Bundle;
import android.view.WindowManager;

/**
 * Copyright (C) pengpuxin Inc.All Rights Reserved. 
* FileName：com.pengyouwan.framework.base.
* @Description：所有对话框基类 
* History： 
* 版本号  作者               日期           简要介绍相关操作 
* 2.1.3 zhj  	 2015-6-2  Create
 */
public abstract class BaseDialog extends Dialog {

    public BaseDialog(Activity activity) {
        super(activity);
        setOwnerActivity(activity);
    }

    public BaseDialog(Activity activity, int theme) {
        super(activity, theme);
        setOwnerActivity(activity);
    }
    
    private void applyCompat() {
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        getWindow().setFlags(
                WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);
    }
    
    /* (non-Javadoc)
     * @see android.app.Dialog#onCreate(android.os.Bundle)
     */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
    	applyCompat();
    	super.onCreate(savedInstanceState);
    }

}
