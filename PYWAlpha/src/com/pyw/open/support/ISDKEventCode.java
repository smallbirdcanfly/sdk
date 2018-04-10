
package com.pyw.open.support;

/**
 * 描述：SDK事件回调状态码，定义了SDK所有回调事件的状态码常量
 * 
 * @author Hanson
 * @version 创建时间：2016-7-2 上午10:15:28
 */
public interface ISDKEventCode {

    /**
     * 登录成功、注册成功时发出，用于通知进入游戏界面
     */
    int CODE_LOGIN_SUCCESS = 0x01;

    /**
     * 充值成功
     */
    int CODE_CHARGE_SUCCESS = 0x02;

    /**
     * 注销
     */
    int CODE_LOGOUT = 0x03;

    /**
     * 登录SDK失败时会发出
     */
    int CODE_LOGIN_FAILD = 0x04;

    /**
     * 充值失败
     */
    int CODE_CHARGE_FAIL = 0x05;

    /**
     * 充值取消
     */
    int CODE_CHARGE_CANCEL = 0x06;

    /**
     * 退出
     */
    int CODE_EXIT = 0x07;
    
    /**
     * 上报角色信息成功
     */
    int CODE_GET_ROLE_SUCCESS = 0x08;
    
    /**
     * 上报角色信息失败
     */
    int CODE_GET_ROLE_FAIL = 0x09;
    
    /**
     * 初始化成功
     */
    int CODE_INIT_SUCCESS = 0x10;
    
    /**
     * 初始化失败
     */
    int CODE_INIT_FAIL = 0x11;
    
}
