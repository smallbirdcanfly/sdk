package com.pyw.plugin.sy233;

import java.net.URLEncoder;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;

import cn.sy233.sdk.SYAPI;
import cn.sy233.sdk.sdkcallback.ILoginCallback;
import cn.sy233.sdk.sdkcallback.ILogoutCallback;
import cn.sy233.sdk.sdkcallback.IPayResultCallback;

import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;
import com.sboran.game.sdk.SdkManager;

/*
 * game_key :020986b2  渠道号：88  渠道名称：sy233
 * @author pengpx
 */
public class Sy233sdkPlugin extends PYWPlugin implements ILogoutCallback {

	private Context context;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, paycallback, logincallback,
			logoutcallback, gameExitcallback;
	private String mOrderID, serverId;
	private boolean hasInit = false;

	@Override
	public void onCreate(Context context) {
	}

	@Override
	public void onLogout() {
		if (sdklogoutcallback == null)
			return;
		sdklogoutcallback.onCallback(null);
	}

	public void init(Context context, final HashMap params,
			executeCallback callback) {
		this.initcallback = callback;
		this.context = context;
		SYAPI.init(context, "97309D8D25F67328", "88");
		initcallback.onExecutionSuccess(null);
		hasInit = true;
		SYAPI.showFloat((Activity) context);
		SYAPI.setOnLogoutCallback(this);
	}

	public void getRoleMessage(final Context context, HashMap params,
			final executeCallback callback) {
		serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? ""
				: (params.get("serverArea") + "");
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		SYAPI.login((Activity) context, new ILoginCallback() {

			@Override
			public void loginSuccess(String userId) {
				SYAPI.showFloat((Activity) context);
				LogUtil.d("sy233--loginSuccess---->>" + "登陆成功 userId=" + userId
						+ "  token=" + userId);
				UserParams userParams = new UserParams();
				userParams.setToken(userId);
				userParams.setSdkUserID(userId);
				userParams.setSuc(true);
				logincallback.onExecutionSuccess(userParams);

			}

			@Override
			public void loginError(int code, String msg) {
				LogUtil.d("sy233--loginError---->>" + " code=" + code
						+ "  msg=" + code);
				logincallback.onExecutionFailure(0, "登陆失败 ");
			}
		});

	}

	public void setExitGame(final Context context, HashMap params,
			final executeCallback callback) {
		this.gameExitcallback = callback;
	}

	@SuppressWarnings("deprecation")
	public void pay(final Context context, HashMap params,
			final executeCallback callback) {
		this.paycallback = callback;
		String productName = params.get("productName") + "";
		if (!TextUtils.isEmpty(productName) && productName.contains("充值")) {
			productName = productName.replace("充值", "");
		}

//		mOrderID = params.get("orderID") + "";
		final String productId = TextUtils
				.isEmpty(params.get("productId") + "") ? "1" : params
				.get("productId") + "";
		final int amount = Integer.valueOf(params.get("price") + "") * 100;

		final String channel_order_sn = params.get("channel_order_sn") + "";

		String game_key = PYWSDKManager.sGameKey;
		String game_version_code = com.pengyouwan.sdk.utils.AppUtil
				.getVersionCode(SDKControler.getContext()) + "";
		String extrol = params.get("channel_order_info") + "";

		String serverAreaName = TextUtils.isEmpty(params.get("serverAreaName")
				+ "") ? "" : (params.get("serverAreaName") + "");

		LogUtil.d("sy233--pay---->>" + "-serverAreaName:" + serverAreaName
				+ "-serverId:" + serverId + "-extrol:" + extrol + "-amount:"
				+ amount + "-productId:" + productId + "-mOrderID:" + mOrderID
				+ "-productName:" + productName);

		SYAPI.pay((Activity) context, serverAreaName, serverId, extrol, amount,
				productId, productName, new IPayResultCallback() {
					@Override
					public void payResult(int code, String msg) {
						SYAPI.showFloat((Activity) context);
						if (code == 0) {
							LogUtil.d("sy233--paySuccessed---->>" + "-code:"
									+ code);
							PayResult payResult = new PayResult();
							payResult.setExtension("支付成功");
							payResult.setOrderID(channel_order_sn);
							payResult.setPayResult(true);
							PluginPayResult pluginPayResult = new PluginPayResult();
							pluginPayResult
									.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
							pluginPayResult.setPayResult(payResult);
							paycallback.onExecutionSuccess(pluginPayResult);
						} else {
							paycallback.onExecutionFailure(code, "pay error  ="
									+ msg);
							LogUtil.d("sy233--PAY FAIL---->>" + "-code:" + code);
						}

					}
				});
	}

	public void logout(final Context context, HashMap params,
			executeCallback callback) {
		this.logoutcallback = callback;
		SYAPI.logout();
	}

	public void gameExit(final Context context, HashMap params,
			final executeCallback callback) {
		this.gameExitcallback = callback;

		if (gameExitcallback != null) {
			gameExitcallback.onExecutionSuccess(0);
		}
	}

	public void setCallback(Context context, final Callback callback) {
		this.sdklogoutcallback = callback;
		// Log.d("px", "sy233--- setCallback");
	}

	public void setLoginCallback(Context context, final executeCallback callback) {
		this.logincallback = callback;
	}

	@Override
	public String getName(Context context) {
		return "sy233";
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
		if (hasInit) {
			if (context instanceof Activity) {
				SYAPI.hideFloat((Activity) context);
			}
		}
	}

	@Override
	public void onResume(Context context) {
		if (hasInit) {
			if (context instanceof Activity) {
				SYAPI.showFloat((Activity) context);
			}
		}
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