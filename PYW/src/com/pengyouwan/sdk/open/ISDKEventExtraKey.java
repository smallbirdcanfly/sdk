
package com.pengyouwan.sdk.open;

/**
 * 描述:SDK事件回调时，附带数据的key
 */
public interface ISDKEventExtraKey {

    /*** 用户信息KEY */
    String EXTRA_USER = "sdk_extra_user";

    /*** 错误信息KEY */
    String EXTRA_ERRO = "sdk_extra_erro";

    /*** 订单号 */
    String EXTRA_ORDERID = "sdk_extra_orderid";

    /*** 透传信息 */
    String EXTRA_APPDATA = "sdk_extra_appdata";
}
