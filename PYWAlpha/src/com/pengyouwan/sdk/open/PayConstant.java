/**
 * 
 */

package com.pengyouwan.sdk.open;

/**
 * 描述:支付参数
 * 
 * @author CJ
 * @since 2016-7-5 下午9:20:56
 */
public class PayConstant {
    /**
     * 商品ID(定额充值必传)
     */
    public static final String PAY_PRODUCT_ID = "product_id";

    /**
     * 订单ID(调起支付必传)
     */
    public static final String PAY_ORDER_ID = "order_id";

    /**
     * 商品名称(必传)
     */
    public static final String PAY_PRODUCE_NAME = "product_name";
    
    /**
     * 充值金额(必传)
     */
    public static final String PAY_MONEY = "pay_money";
    
    /**
     * 额外参数(非必传)
     */
    public static final String PAY_EXTRA = "product_extra";
    
    /**
     * 游戏角色名(必传)
     */
    public static final String PAY_ROLE_NAME = "role_name";
    
    /**
     * 区服(必传)
     */
    public static final String PAY_SERVICE_AREA = "service_area";


}
