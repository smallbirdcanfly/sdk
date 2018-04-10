
package com.pengyouwan.framework.base;

import com.pengyouwan.framework.utils.LogUtil;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/**
 * Copyright (C) pengpuxin Inc.All Rights Reserved. 
* FileName：com.pengyouwan.framework.base.
* @Description：所有广播接收器父类
* History： 
* 版本号  作者               日期           简要介绍相关操作 
* 2.1.3 chenys     2015-6-2  Create
 */
public abstract class BaseBroadcastReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
    	if (intent != null) {
    		LogUtil.d("action:" + intent.getAction());
		}
    }

}
