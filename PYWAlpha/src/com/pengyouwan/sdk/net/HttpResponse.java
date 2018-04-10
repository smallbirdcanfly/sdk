
package com.pengyouwan.sdk.net;

import com.pengyouwan.framework.base.IEntity;

/**
 * 描述:通用http响应类
 * 
 * @author zhj
 * @since 2013-7-31 下午8:19:14
 */
public class HttpResponse implements IEntity {

    private static final long serialVersionUID = -1334485101032541334L;

    // 结果是否正确
    private boolean isOk;

    private boolean isResponse;

    public boolean isOk() {
        return isOk;
    }

    public void setOk(boolean isOk) {
        this.isOk = isOk;
    }

    public boolean isResponse() {
        return this.isResponse;
    }

    public void setResponse(boolean isResponse) {
        this.isResponse = isResponse;
    }

}
