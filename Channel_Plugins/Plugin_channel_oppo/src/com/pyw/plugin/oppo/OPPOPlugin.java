package com.pyw.plugin.oppo;

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

import com.nearme.game.sdk.GameCenterSDK;
import com.nearme.game.sdk.callback.ApiCallback;
import com.nearme.game.sdk.callback.GameExitCallback;
import com.nearme.game.sdk.common.model.biz.PayInfo;
import com.nearme.game.sdk.common.model.biz.ReportUserGameInfoParam;
import com.nearme.game.sdk.common.model.biz.ReqUserInfoParam;
import com.nearme.game.sdk.common.util.AppUtil;
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

public class OPPOPlugin extends PYWPlugin {

	private Context context;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, paycallback, logincallback, logoutcallback, gameExitcallback;
	private String mOrderID, serverId;

	@Override
	public void onCreate(Context context) {
	}

	public void init(Context context, final HashMap params, executeCallback callback) {
		this.initcallback = callback;
		this.context = context;

		if (null != initcallback) {
			initcallback.onExecutionSuccess(null);
		}
	}

	public void getRoleMessage(final Context context, HashMap params, final executeCallback callback) {

		serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? "" : params.get("serverArea") + "";
		String appid = "3599595";
		ReportUserGameInfoParam param = new ReportUserGameInfoParam(appid, serverId,
				TextUtils.isEmpty(params.get("roleName") + "") ? "" : params.get("roleName") + "",
				TextUtils.isEmpty(params.get("roleLevel") + "") + "");
		GameCenterSDK.getInstance().doReportUserGameInfoData(param, new ApiCallback() {

			@Override
			public void onSuccess(String arg0) {
				Log.d("px", "登doReportUserGameInfoData成功：" + arg0);
			}

			@Override
			public void onFailure(String arg0, int arg1) {
				Log.d("px", "登doReportUserGameInfoDatashibai：" + arg1);
			}
		});

	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;
		GameCenterSDK.getInstance().doLogin(context, new ApiCallback() {

			@Override
			public void onSuccess(String arg0) {
				Log.d("px", "登录成功：" + arg0);
				getTokenAndSsoid();
			}

			@Override
			public void onFailure(String arg0, int arg1) {
				Log.d("px", "登录失败");
				logincallback.onExecutionFailure(arg1, "登陆失败 :" + arg0);

			}
		});
	}

	public void setExitGame(final Context context, HashMap params,

			final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;

	}

	public void pay(final Context context, HashMap params, final executeCallback callback) {
		this.paycallback = callback;
		this.context = context;
		String productName = params.get("productName") + "";
		mOrderID = params.get("orderID") + "";
		int amount = (Integer) params.get("price") * 100;
		
		String extrol = params.get("channel_order_info") + "";

		PayInfo payInfo = new PayInfo(params.get("channel_order_sn") + "", extrol, amount);
		payInfo.setProductName(productName);
		payInfo.setProductDesc(productName);
		payInfo.setCallbackUrl(
				"http://unitysdkapi.pyw.cn/ChannelPayCallback/paySuccess/52/18d2bc03aa82c9120bdd33a2b4de7379");

		GameCenterSDK.getInstance().doPay(context, payInfo, new ApiCallback() {

			@Override
			public void onSuccess(String arg0) {
				PayResult payResult = new PayResult();
				payResult.setExtension("支付成功");
				payResult.setOrderID(mOrderID);
				payResult.setPayResult(true);
				PluginPayResult pluginPayResult = new PluginPayResult();
				pluginPayResult.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
				pluginPayResult.setPayResult(payResult);
				paycallback.onExecutionSuccess(pluginPayResult);
			}

			@Override
			public void onFailure(String arg0, int arg1) {
				paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT, "pay error  =" + arg0);

			}
		});
	}

	public void logout(final Context context, HashMap params, executeCallback callback) {
		this.logoutcallback = callback;

		logoutcallback.onExecutionSuccess(0);
	}

	public void gameExit(final Context context, HashMap params, final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
		GameCenterSDK.getInstance().onExit((Activity) context, new GameExitCallback() {

			@Override
			public void exitGame() {
				// CP 实现游戏退出操作，也可以直接调用
				// AppUtil工具类里面的实现直接强杀进程~
				AppUtil.exitGameProcess((Activity) context);
			}
		});
	}

	public void getTokenAndSsoid() {
		GameCenterSDK.getInstance().doGetTokenAndSsoid(new ApiCallback() {

			@Override
			public void onSuccess(String resultMsg) {
				try {
					Log.d("px", "获取tokenAndSsoid成功：" + resultMsg);
					JSONObject json = new JSONObject(resultMsg);
					String token = json.getString("token");
					String ssoid = json.getString("ssoid");
					UserParams userParams = new UserParams();
					userParams.setToken(token);
					userParams.setSdkUserID(ssoid);
					userParams.setSuc(true);
					logincallback.onExecutionSuccess(userParams);
				} catch (JSONException e) {
					e.printStackTrace();
				}
			}

			@Override
			public void onFailure(String content, int resultCode) {

			}
		});
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
		return "oppo";
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
		GameCenterSDK.getInstance().onPause();

	}

	@Override
	public void onResume(Context context) {
		GameCenterSDK.getInstance().onResume((Activity) context);

	}

	@Override
	public void onDestroy(Context context) {
	}

	@Override
	public void onRestart(Context context) {
	}

	@Override
	public void onStop(Context context) {

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

}
