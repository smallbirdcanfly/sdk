
package com.pengyouwan.sdk.open;

/**
 * 描述:SDK配置类
 *
 * @author zhj
 * @since 2015年9月24日 上午11:18:41
 */
public class SDKConfig {

    /**
     * 给cp分配的appKey,必填
     */
    private String gameKey;


    /**
     * 微信支付的APPID
     */
    private String wxAppID;

    /**
     * 推广渠道
     */
    private String channel;

    /**
     * 推广码
     */
    private String promo;

    /**
     * 支付方式显示控制
     */
    private String payment;

    /**
     * 部门编号 1：联运  2：发行
     */
    private String departmentCode;

    /**
     * 默认为空串
     * @return
     */
    public String getChannel_code() {
        if (channel_code == null) return "";
        return channel_code;
    }

    public void setChannel_code(String channel_code) {
        this.channel_code = channel_code;
    }

    /**
     * 联运渠道id
     */
    private String channel_code;


    public void setDepartmentCode(String code) {
        this.departmentCode = code;
    }

    public String getDepartmentCode() {
        return departmentCode;
    }

    public String getChannel() {
        return channel;
    }

    public void setChannel(String channel) {
        this.channel = channel;
    }

    public String getPromo() {
        return promo;
    }

    public void setPromo(String promo) {
        this.promo = promo;
    }

    public void setPayment(String str) {
        payment = str;
    }

    public String getPayment() {
        return payment;
    }

    public String getGameKey() {
        return gameKey;
    }

    public void setGameKey(String gameKey) {
        this.gameKey = gameKey;
    }

    public String getWxAppID() {
        return wxAppID;
    }

    public void setWxAppID(String wxAppID) {
        this.wxAppID = wxAppID;
    }

}
