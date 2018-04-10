package com.pyw.plugin.tq;

import java.net.URLEncoder;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.widget.Toast;

import com.game.sdk.GameSDKManager;
import com.game.sdk.domain.LoginErrorMsg;
import com.game.sdk.domain.LogincallBack;
import com.game.sdk.domain.OnLoginListener;
import com.game.sdk.domain.OnPaymentListener;
import com.game.sdk.domain.PaymentCallbackInfo;
import com.game.sdk.domain.PaymentErrorMsg;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.KeyCodes;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

public class TQChannel extends PYWPlugin {

	private Context context;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, paycallback, logincallback,
			logoutcallback, gameExitcallback;
	private String mOrderID, roleID, serverId;
	private GameSDKManager sdkmanager;

	@Override
	public void onCreate(Context context) {
	}

	public void init(final Context context, final HashMap params,
			executeCallback callback) {
		this.initcallback = callback;
		this.context = context;
		GameSDKManager.init(context);
		sdkmanager = GameSDKManager.getInstance(context);

		if (null != initcallback) {
			initcallback.onExecutionSuccess(null);
		}
	}

	public void getRoleMessage(final Context context, HashMap params,
			final executeCallback callback) {
		serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? ""
				: params.get("serverArea") + "";
		roleID = TextUtils.isEmpty(params.get("roleid") + "") ? "" : params
				.get("roleid") + "";
		sdkmanager.setRoleDate(context, roleID, TextUtils.isEmpty(params
				.get("roleName") + "") ? "" : params.get("roleName") + "",
				TextUtils.isEmpty(params.get("roleLevel") + "") + "", serverId,
				TextUtils.isEmpty(params.get("serverAreaName") + "") ? ""
						: params.get("serverAreaName") + "", null);
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;
		sdkmanager.showLogin(context, true, new OnLoginListener() {

			@Override
			public void loginSuccess(LogincallBack arg0) {
				String sign = arg0.sign;// 登录成功返回的签名，需要做验证
				String uid = arg0.username;
				UserParams userParams = new UserParams();
				userParams.setToken(sign);
				userParams.setSdkUserID(uid);
				userParams.setSuc(true);
				logincallback.onExecutionSuccess(userParams);
				sdkmanager.showFloatView();
			}

			@Override
			public void loginError(LoginErrorMsg arg0) {
				logincallback
						.onExecutionFailure(arg0.code, "登陆失败 :" + arg0.msg);
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
		System.out.println(params.toString());
		HashMap<String, Object> data = (HashMap<String, Object>) params
				.get("nameValuePairs");
		int rate = (Integer) data.get("rate");
		String price = (Integer) params.get("price") * rate + "";// 根据返回的比例去支付对应价格

		if (TextUtils.isEmpty(mOrderID) || TextUtils.isEmpty(productName)
				|| TextUtils.isEmpty(price)) {
			Toast.makeText(context, "pay params error!!!", Toast.LENGTH_SHORT)
					.show();
		}
		String extrol = params.get("channel_order_info") + "";
		sdkmanager.showPay(context, roleID, price, serverId, productName,
				productName, extrol, new OnPaymentListener() {

					@Override
					public void paymentSuccess(PaymentCallbackInfo arg0) {
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

					@Override
					public void paymentError(PaymentErrorMsg arg0) {
						paycallback.onExecutionFailure(
								KeyCodes.ERROR_PLUGIN_DEFAULT, "pay error  ="
										+ arg0.msg);
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
		System.exit(0);
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
		return "tq";
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
	public void onStop(Context context) {
		sdkmanager.removeFloatView(sdkmanager.getStateType()
				);

	}

	public void onResume(Context context) {
		sdkmanager.showFloatView();
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
	public void onNewIntent(Intent intent) {
	}

	@Override
	public void onConfigurationChanged(Configuration newConfig) {
	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
	}

	@Override
	public void onStart(Context context) {

	}

}
