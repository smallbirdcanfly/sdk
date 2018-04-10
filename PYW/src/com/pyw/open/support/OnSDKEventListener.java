
package com.pyw.open.support;

import android.os.Bundle;

/**
 * 描述:SDK回调事件监听接口
 *
 * @author zhj
 * @since 2015年9月25日 下午4:13:07
 */
public interface OnSDKEventListener {

    /**
     * @param eventCode
     * @param data
     */
    void onEvent(int eventCode, Bundle data);
}
