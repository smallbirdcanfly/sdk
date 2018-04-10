
package com.pengyouwan.framework.base;

import android.os.Message;

/**
 * 描述:可后台操作的抽象Activity接口
 * 
 * @author zhj
 * @since 2015-5-27 下午5:44:37
 */
public interface IWorkerActivity extends IActivity {

    /**
     * 处理后台操作
     * 
     * @param msg
     */
    void handleBackgroundMessage(Message msg);
}
