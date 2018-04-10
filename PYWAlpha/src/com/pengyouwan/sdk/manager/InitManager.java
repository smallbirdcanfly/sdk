
package com.pengyouwan.sdk.manager;

/**
 * Copyright (C) pengpuxin Inc.All Rights Reserved.
 * FileName：com.pengyouwan.sdk.manager.
 * 
 * @Description：简要描述本文件的内容 History： 版本号 作者 日期 简要介绍相关操作 2.1.3 zhj 2015-6-8 Create
 *                         2.1.3 pengpuxin 2016-7-2 维护
 */
public class InitManager {

    private String gameId;

    private String apisecret;

    private String msg;

    private int dialogTime;//弹窗周期 （单位：分）
    
    private String exitShowUrl;// 退出框显示的链接

    private String exitGoUrl;// 退出框点击跳转的链接

    private boolean isClickable;// 退出框是否能点击
    
    private boolean isDelable;//是否删除
    
    private boolean isInit = false;//是否完成初始化
    
    private int fastFlag;//是否显示快速注册

    private static InitManager mManager = new InitManager();

    private InitManager() {
    }

    public static InitManager getInstance() {
        if (mManager == null) {
            mManager = new InitManager();
        }
        return mManager;
    }

    public void exit() {
        setGameId(null);
        setApisecret(null);
    }

    public String getMsg() {
        return msg;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public String getGameId() {
        return gameId;
    }

    public void setApisecret(String apisecret) {
        this.apisecret = apisecret;
    }

    public String getApisecret() {
        return apisecret;
    }

    public boolean isValid() {
        return getGameId() != null && getApisecret() != null;
    }

    public String getExitShowUrl() {
        return exitShowUrl;
    }

    public void setExitShowUrl(String exitShowUrl) {
        this.exitShowUrl = exitShowUrl;
    }

    public String getExitGoUrl() {
        return exitGoUrl;
    }

    public void setExitGoUrl(String exitGoUrl) {
        this.exitGoUrl = exitGoUrl;
    }

    public boolean isClickable() {
        return isClickable;
    }

    public void setClickable(boolean isClickable) {
        this.isClickable = isClickable;
    }

    public boolean isInit() {
        return isInit;
    }

    public void setInit(boolean isInit) {
        this.isInit = isInit;
    }

    public boolean isDelable() {
        return isDelable;
    }

    public void setDelable(boolean isDelable) {
        this.isDelable = isDelable;
    }
    
    public int isFast(){
    	return fastFlag;
    }
    
    public void setFastFlag(int fastFlag){
    	this.fastFlag = fastFlag;
    }

}
