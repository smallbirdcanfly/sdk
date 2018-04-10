package com.pengyouwan.sdk.protocol;

import com.pengyouwan.sdk.net.HttpResponse;

/**
 * 描述:抽象响应类
 * 
 * @author CJ
 * @since 2016-7-5 下午3:33:27
 */
public abstract class AbstractResponseCallback {
    public abstract void callback(HttpResponse httpResponse);
}
