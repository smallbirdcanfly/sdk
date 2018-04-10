package com.pyw.plugin.excutecallback;

import com.pyw.manager.PYWSDKManager;
import com.pyw.open.IDefListener;
import com.pyw.open.IGameExitListener;
import com.pyw.open.ILogoutListener;
import com.pyw.open.IPayListener;
import com.pyw.open.IUserListener;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

/**
 * 
 * 插件回调器构造类
 * @author zhj
 *
 */
public class CallbackCreator {

	/**
	 * 创建初始化执行回调
	 * @param lis
	 * @param manager
	 * @return
	 */
	public executeCallback createInitCallback(IDefListener lis, PYWSDKManager manager){
		return new InitCallback(lis, manager);
	}

	/**
	 * 创建登出执行会标
	 * @param listener
	 * @return
	 */
	public executeCallback createLogoutCallback(ILogoutListener listener){
		return new LogoutExecuteCallback(listener);
	}
	
	/**
	 * 创建第三方渠道登录执行回调
	 */
	public executeCallback createOtherLoginCallback(PYWSDKManager m,PYWPlugin p,IUserListener callback){
		return new OtherChannelLoginCallback(m,p,callback);
	}
	
	/**
	 * 创建第三方渠道支付执行回调
	 */
	public executeCallback createOtherPayCallback(PYWSDKManager manager, IPayListener c){
		return new OtherChannelPayCallback(manager, c);
	}
	
	/**
	 * 创建朋友玩登录执行回调
	 * @return
	 */
	public executeCallback createPYWLoginCallback(PYWSDKManager m,IUserListener callback){
		return new PYWLoginExcuteCallback(m, callback);
	}
	
	/**
	 * 创建朋友玩支付执行回调
	 */
	public executeCallback createPYWPayCallback(IPayListener callback){
		return new PYWPayExcuteCallback(callback);
	}
	
	/**
	 * 创建空实现的回调
	 */
	public executeCallback createSilenceCallback(){
		return new SilenceExcuteCallback();
	}
	
	/**
	 * 创建退出游戏执行回调
	 */
	public executeCallback createGameExitExcuteCallback(IGameExitListener listener){
		return new GameExitExcuteCallback(listener);
	}
}
