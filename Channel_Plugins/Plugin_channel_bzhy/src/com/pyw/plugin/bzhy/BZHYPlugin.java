package com.pyw.plugin.bzhy;

import java.net.URLEncoder;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.Log;

import com.games.GameSDKManager;
import com.games.bean.ErrorInfo;
import com.games.bean.LoginInfo;
import com.games.bean.PaymentInfo;
import com.games.listener.OnLoginListener;
import com.games.listener.OnPaymentListener;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.KeyCodes;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

/**
 * 
 * game_key: 7fdd424a 渠道号： 72 渠道名称： 孢子互娱
 * 
 * @author zhouq
 * 
 */
public class BZHYPlugin extends PYWPlugin {

	private Context context;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, paycallback, logincallback,
			logoutcallback, gameExitcallback;
	private String mOrderID;
	GameSDKManager gameSDKManager;

	@Override
	public void onCreate(Context context) {
	}

	public void init(Context context, final HashMap params,
			executeCallback callback) {
		this.initcallback = callback;
		this.context = context;

		gameSDKManager = GameSDKManager.getInstance((Activity) context);
		
		if (null != initcallback) {
			initcallback.onExecutionSuccess(null);
		}
	}

	public void getRoleMessage(final Context context, HashMap params,
			final executeCallback callback) {

		String roleid = TextUtils.isEmpty(params.get("roleid") + "") ? ""
				: params.get("roleid") + "";
		String roleName = TextUtils.isEmpty(params.get("roleName") + "") ? ""
				: params.get("roleName") + "";
		String roleLevel = TextUtils.isEmpty(params.get("roleLevel") + "") ? ""
				: params.get("roleLevel") + "";
		String serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? ""
				: params.get("serverArea") + "";
		String serverAreaName = TextUtils.isEmpty(params.get("serverAreaName")
				+ "") ? "" : params.get("serverAreaName") + "";
		gameSDKManager.setRole(roleid, roleName, Integer.parseInt(roleLevel),
				serverId, serverAreaName, null);

	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;

		gameSDKManager.Login(new OnLoginListener() {

			@Override
			public void loginSuccess(LoginInfo arg0) {
				Log.d("px", "登录成功：" + arg0.toString());
				String token = arg0.getSign()  + "|" + arg0.getLogintime();
				String userid = arg0.getUserid() + "";
				UserParams userParams = new UserParams();
				userParams.setToken(token);
				userParams.setSdkUserID(userid);
				userParams.setSuc(true);
				logincallback.onExecutionSuccess(userParams);
			}

			@Override
			public void loginError(ErrorInfo arg0) {
				Log.d("px", "登录失败:" + arg0.toString());
				logincallback.onExecutionFailure(arg0.getCode(), "登陆失败 :"
						+ arg0.getMsg());
			}
		});
	}

	public void setExitGame(final Context context, HashMap params,
			final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;

	}

	public void pay(final Context context, HashMap params,
			final executeCallback callback) {
		this.paycallback = callback;
		this.context = context;
		String productName = params.get("productName") + "";
		mOrderID = params.get("orderID") + "";
		int amount = (Integer) params.get("price") * 100;

		String extrol = params.get("channel_order_info") + "";
//		JSONObject jobj = new JSONObject();
//		try {
//
//			// 以下为非必要参数，只供参考，厂商可根据自身需求决定传什么参数与值或者不传
//			jobj.put("gamekey", PYWSDKManager.sGameKey);
//			jobj.put(
//					"game_version_code",
//					com.pengyouwan.sdk.utils.AppUtil
//							.getVersionCode(SDKControler.getContext()) + "");
//			jobj.put("channel_order_sn", params.get("channel_order_sn") + "");
//			extrol = URLEncoder.encode(jobj.toString());
//		} catch (JSONException e) {
//			e.printStackTrace();
//		}
		gameSDKManager.Pay(amount, productName, productName, "", extrol,
				new OnPaymentListener() {

					@Override
					public void paymentSuccess(PaymentInfo arg0) {
						if (paycallback != null) {
							PayResult payResult = new PayResult();
							payResult.setExtension("支付成功");
							payResult.setOrderID(mOrderID);
							payResult.setPayResult(true);
							PluginPayResult pluginPayResult = new PluginPayResult();
							pluginPayResult
									.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
							pluginPayResult.setPayResult(payResult);
							paycallback.onExecutionSuccess(pluginPayResult);
						}
					}

					@Override
					public void paymentError(ErrorInfo arg0) {
						if (paycallback != null) {
							paycallback.onExecutionFailure(
									KeyCodes.ERROR_PLUGIN_DEFAULT,
									"pay error  =" + arg0.toString());
						}
					}
				});
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
		this.sdklogoutcallback = callback;
	}

	public void setLoginCallback(Context context, final executeCallback callback) {
		this.context = context;
		this.logincallback = callback;
	}

	@Override
	public String getName(Context context) {
		return "bzhy";
	}

	@Override
	public int getVersion(Context context) {
		return 0;
	}

	@Override
	public String getCategory(Context context) {
		return "channel";
	}

	@Override
	public void onPause(Context context) {

	}

	@Override
	public void onResume(Context context) {
		if (gameSDKManager != null)
			gameSDKManager.onResume();
	}

	@Override
	public void onDestroy(Context context) {
		if (gameSDKManager != null)
			gameSDKManager.onDestroy();
	}

	@Override
	public void onRestart(Context context) {
	}

	@Override
	public void onStop(Context context) {
		if (gameSDKManager != null)
			gameSDKManager.onStop();
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

	}

	/**
	 * 
	 * 显示悬浮窗
	 * 
	 */

	public void showFloatView() {
		gameSDKManager.ShowFloat((Activity) context);
	}

	/**
	 * 
	 * 隐藏浮点
	 * 
	 */
	public void hideFloatView() {
		gameSDKManager.HideFloat();
	}

}
