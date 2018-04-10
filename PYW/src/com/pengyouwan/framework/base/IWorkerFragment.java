
package com.pengyouwan.framework.base;

import android.os.Message;

/**
 * 描述:可后台操作的抽象Fragment接口
 * 
 * @author zhj
 * @since 2015-5-27 下午5:44:54
 */
public interface IWorkerFragment extends IFragment {

    /**
     * 处理后台操作
     * 
     * @param msg
     */
    void handleBackgroundMessage(Message msg);
}
