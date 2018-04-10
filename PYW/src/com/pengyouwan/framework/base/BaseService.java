
package com.pengyouwan.framework.base;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/**
 * Copyright (C) pengpuxin Inc.All Rights Reserved. 
* FileName：com.pengyouwan.framework.base.
* @Description：服务基类
* History： 
* 版本号  作者               日期           简要介绍相关操作 
* 2.1.3 zhj      2015-5-28  Create
 */
public abstract class BaseService extends Service {

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

}
