package com.pyw.open;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;

import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;

/**
 * 提供给游戏接入的接口类
 * 
 * @author tanxj
 * 
 */
public class PYWSDK {

	/**
	 * 初始化接口
	 * 
	 * @param context
	 */
	public static void init(Context context, IDefListener listener) {
		PYWSDKManager.getInstance().init(context, listener);
	}

	/**
	 * 登录接口
	 */
	public static void login(IUserListener listener) {
		PYWSDKManager.getInstance().Login(null, listener);
	}

	/**
	 * 调起悬浮窗接口
	 */
	public static void showFloatView() {
		PYWSDKManager.getInstance().showFloatView();
	}

	/**
	 * 隐藏悬浮窗接口
	 */
	public static void hideFloatView() {
		PYWSDKManager.getInstance().hideFloatView();
	}

	/**
	 * 支付接口
	 */
	public static void pay(PayParams params, final IPayListener callback) {
		PYWSDKManager.getInstance().Pay(params, callback);
	}

	/**
	 * 登出接口
	 */
	public static void logout(ILogoutListener listener) {
		PYWSDKManager.getInstance().logout(null, listener);
	}

	/**
	 * 退出游戏接口
	 */
	public static void exitGame(IGameExitListener listener) {
		PYWSDKManager.getInstance().gameExit(null, listener);
	}

	/**
	 * 回调登出接口
	 */
	public static void setLogoutCallback(ILogoutCallback callback) {
		PYWSDKManager.getInstance().setLogoutCallback(callback);
	}

	/**
	 * 上传游戏内角色信息
	 */
	public static void getRoleMessage(UserParams params,
			IGetRoleListener listener) {
		PYWSDKManager.getInstance().getRoleMessage(params, listener);
	}

	/**
	 * 生命周期接口
	 */

	public static void onPause() {
		PYWSDKManager.getInstance().onPause();
	}

	public static void onResume() {
		PYWSDKManager.getInstance().onResume();
	}

	public static void onDestroy() {
		PYWSDKManager.getInstance().onDestroy();
	}

	public static void onRestart() {
		PYWSDKManager.getInstance().onRestart();
	}

	public static void onStop() {
		PYWSDKManager.getInstance().onStop();
	}

	public static void onStart() {
		PYWSDKManager.getInstance().onStart();
	}

	public static void newIntent(Intent intent) {
		PYWSDKManager.getInstance().onNewIntent(intent);
	}

	public static void configurationChanged(Configuration newConfig) {
		PYWSDKManager.getInstance().onConfigurationChanged(newConfig);
	}

	public static void onActivityResult(int requestCode, int resultCode,
			Intent data) {
		PYWSDKManager.getInstance().onActivityResult(requestCode, resultCode,
				data);
	}
}
