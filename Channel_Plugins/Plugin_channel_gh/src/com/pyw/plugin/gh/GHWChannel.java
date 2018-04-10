package com.pyw.plugin.gh;

import java.util.HashMap;
import java.util.Map;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.gohuo.pay.sdk.Constant;
import com.gohuo.pay.sdk.ResultCallback;
import com.gohuo.pay.sdk.gohuoAppSDK;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.open.KeyCodes;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

/**
 * PYW插件入口类
 * 
 * @author PX
 * 
 * 渠道号 68 gamekey 020986b2
 */
public class GHWChannel extends PYWPlugin {

	private String mOrderID;
	private executeCallback initcallback, paycallback, logincallback,
			logoutcallback, gameExitcallback;
	private Context context;

	public static final String appId = "930673028159778818"; // appID
	public final static String secretKey = "83X6PwAGzcqpaOzvbflDd8RxN2UlIKy8uqd5WiOw2wE"; // AppKey
	public static final String notifyUrl = "http://unitysdkapi.pyw.cn/ChannelPayCallback/paySuccess/68/ea7160b7e5d6d00b259776d60f075055"; // 支付通知

	@Override
	public void onCreate(Context context) {

	}

	public void init(final Context context, final HashMap params,
			executeCallback callback) {
		this.initcallback = callback;

		gohuoAppSDK.Init((Activity) context, appId, secretKey, notifyUrl);// 初始化支付环境
		if (null != initcallback) {
			initcallback.onExecutionSuccess(null);
		}
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;
		// 调起登录界面
		((Activity) context).runOnUiThread(new Runnable() {
			@Override
			public void run() {
				gohuoAppSDK.Login((Activity) context, new ResultCallback() {
					@Override
					public void onResult(int resultCode, Bundle bundle) {
						// TODO Auto-generated method stub
						switch (resultCode) {
						case Constant.LOGIN_SUCCESS:// 登录成功
							String UserName = bundle.getString("userName"); // 获取登录帐号
							
							String openid = gohuoAppSDK.getOpenId(); // 玩家唯一
							Log.d("px",  "openid = " + openid);
							UserParams userParams = new UserParams();
							userParams.setSdkUserID(openid);
							userParams.setToken(openid + "token");
							logincallback.onExecutionSuccess(userParams);
							break;
						case Constant.LOGIN_FAIL:// 登录失败
							logincallback.onExecutionFailure(0, "登陆失败");
							break;
						case Constant.USER_EXIT: // 用户退出
							
							break;
						}
					}
				});// 显示登录窗口
			}
		});
	}

	public void getRoleMessage(Context context, HashMap params,
			executeCallback callback) {
		
		Map<String, String> param = new HashMap<String, String>();
		param.put("ROLE_ID", TextUtils.isEmpty(params.get("roleid") + "") ? ""
				: params.get("roleid") + ""); 	// 角色ID
		param.put("ROLE_NAME", TextUtils.isEmpty(params.get("roleName") + "") ? ""
				: params.get("roleName") + ""); // 角色名称
		param.put("ZONE_ID",  TextUtils.isEmpty(params.get("serverArea") + "") ? ""
				: params.get("serverArea") + ""); 	// 区服ID
		param.put("ZONE_NAME", TextUtils.isEmpty(params.get("serverAreaName") + "") ? ""
				: params.get("serverAreaName") + ""); // 区服名称
		gohuoAppSDK.sendRoleData((Activity) context, param);
	}

	public void pay(final Context context, HashMap params,
			final executeCallback callback) {
		this.paycallback = callback;
		this.context = context;
		String price = params.get("price") + "";
		mOrderID = params.get("orderID") + "";
		String productName = params.get("productName") + "";

		int intp = 0;

		try {
			intp = Integer.parseInt(price);
		} catch (NumberFormatException e) {
			Toast.makeText(context, "输入金额有误", 0).show();
			return;
		}
		if (TextUtils.isEmpty(mOrderID) || TextUtils.isEmpty(productName)
				|| TextUtils.isEmpty(price)) {
			paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
					"pay params error!!!");
		}


		Map<String, String> param = new HashMap<String, String>();
		param.put("productName",productName); 	// 产品名称
		param.put("productPrice", intp * 100 +""); 	// 单位：分
		param.put("orderid", params.get("channel_order_sn") + ""); 						// 订单号
		param.put("servername", params.get("serverAreaName")+""); 					// 区服
		
		// 拉起支付
		gohuoAppSDK.pay((Activity) context, param);		
	}

	public void setExitGame(final Context context, HashMap params,
			final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
	}

	public void logout(final Context context, HashMap params,
			executeCallback callback) {
		this.logoutcallback = callback;
		logoutcallback.onExecutionSuccess(0);

	}

	public void gameExit(final Context context, HashMap params,
			final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
		gameExitcallback.onExecutionSuccess(0);
	}

	public void setCallback(Context context, final Callback callback) {
		this.context = context;
	}

	public void setLoginCallback(Context context, final executeCallback callback) {
		this.context = context;
		this.logincallback = callback;
	}

	/**
	 * 显示悬浮窗
	 */
	public void showFloatView() {
	}

	/**
	 * 隐藏浮点
	 */
	public void hideFloatView() {
	}

	@Override
	public String getName(Context context) {

		return "gh";
	}

	@Override
	public int getVersion(Context context) {
		return 0;
	}

	@Override
	public String getCategory(Context context) {
		return "channel";
	}


	public void onStop(Context context) {
	}

	@Override
	public void onResume(Context context) {
	}

	@Override
	public void onPause(Context context) {
	}

	@Override
	public void onDestroy(Context context) {
	}

	@Override
	public void onRestart(Context context) {
	}

	@Override
	public void onStart(Context context) {
	}

	@Override
	public void onNewIntent(Intent intent) {
	}

	@Override
	public void onConfigurationChanged(Configuration newConfig) {
	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		if (data == null) {
			return;
		}

		String respCode = data.getExtras().getString("resultCode");
		if (!TextUtils.isEmpty(respCode) && respCode.equalsIgnoreCase("success")) {
			PayResult payResult = new PayResult();
			payResult.setExtension("支付成功");
			payResult.setOrderID(mOrderID);
			payResult.setPayResult(true);
			final PluginPayResult pluginPayResult = new PluginPayResult();
			pluginPayResult
					.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
			pluginPayResult.setPayResult(payResult);
			if(paycallback!=null)
				paycallback.onExecutionSuccess(pluginPayResult);
		} else { 
			if(paycallback!=null)
			// 其他状态NOPAY状态：取消支付，未支付等状态
				paycallback.onExecutionFailure(1, mOrderID);
		}
	}

}
