package com.pyw.plugin.vivo;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request.Method;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;
import com.vivo.unionsdk.open.VivoAccountCallback;
import com.vivo.unionsdk.open.VivoExitCallback;
import com.vivo.unionsdk.open.VivoPayCallback;
import com.vivo.unionsdk.open.VivoPayInfo;
import com.vivo.unionsdk.open.VivoRoleInfo;
import com.vivo.unionsdk.open.VivoUnionSDK;

public class VIVOChannel extends PYWPlugin implements VivoAccountCallback {
	private String uid, sid;
	private String mOrderID;
	private VivoPayInfo mVivoPayInfo;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, playerInfocallback, paycallback, gameExitcallback, logoutcallback, logincall;
	private Context context;
	private String appid = "e9c98b0ec66940a25077bf16bb15b51f";
	private String appkey = "e162489dcd3923cbf55ad299af56b279";
	private String cpid = "a6124c46d4c3b0d515d9";

	@Override
	public void onCreate(Context context) {
		this.context = context;
	}

	public void init(final Context context, HashMap params, executeCallback callback) {
		this.context = context;
		this.initcallback = callback;
		initcallback.onExecutionSuccess(null);
		// 注册登录回调
		VivoUnionSDK.registerAccountCallback((Activity) context, this);
	}

	public void getRoleMessage(Context context, HashMap params, executeCallback callback) {
		sid = TextUtils.isEmpty(params.get("serverArea") + "") ? "" : params.get("serverArea") + "";
		VivoUnionSDK.reportRoleInfo(
				new VivoRoleInfo(TextUtils.isEmpty(params.get("roleid") + "") ? "" : params.get("roleid") + "",
						TextUtils.isEmpty(params.get("roleLevel") + "") ? "" : params.get("roleLevel") + "",
						TextUtils.isEmpty(params.get("roleName") + "") ? "" : params.get("roleName") + "", sid,
						TextUtils.isEmpty(params.get("serverAreaName") + "") ? "" : params.get("serverAreaName") + ""));
	}

	public void setExitGame(final Context context, HashMap params, final executeCallback callback) {
		this.context = context;
		gameExitcallback = callback;
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {

		this.logincall = callback;
		this.context = context;
		VivoUnionSDK.login((Activity) context);
	}

	public void switchLogin(Context context, HashMap params, executeCallback callback) {
		this.logincall = callback;
		this.context = context;

	}

	public void setLoginCallback(Context context, final executeCallback callback) {
		this.context = context;
		this.logincall = callback;
	}

	public void pay(final Context context, HashMap params, final executeCallback callback) {
		this.paycallback = callback;

		this.paycallback = callback;
		this.context = context;

		String productName = params.get("productName") + "";
		mOrderID = params.get("orderID") + "";
		System.out.println(params.toString());

		HashMap<String, Object> data = (HashMap<String, Object>) params.get("nameValuePairs");
		int rate = (Integer) data.get("rate");
		String price = (Integer) params.get("price") * rate * 100 + "";// 根据返回的比例去支付对应价格

		if (TextUtils.isEmpty(mOrderID) || TextUtils.isEmpty(productName) || TextUtils.isEmpty(price)) {
			Toast.makeText(context, "pay params error!!!", Toast.LENGTH_SHORT).show();
		}
		String extrol = "";
		JSONObject jobj = new JSONObject();
		try {

			// 以下为非必要参数，只供参考，厂商可根据自身需求决定传什么参数与值或者不传
			jobj.put("gamekey", PYWSDKManager.sGameKey);
			jobj.put("game_version_code", AppUtil.getVersionCode(SDKControler.getContext()) + "");
			extrol = jobj.toString();
		} catch (JSONException e) {
			e.printStackTrace();
		}
		pay(productName, price, params.get("channel_order_sn") + "", extrol);
	}

	public void setCallback(Context context, Callback callback) {
		this.context = context;
		this.sdklogoutcallback = callback;
	}

	public void logout(Context context, HashMap params, executeCallback callback) {
		this.logoutcallback = callback;
		logoutcallback.onExecutionSuccess(0);
	}

	public void gameExit(final Context context, HashMap params, final executeCallback callback) {
		gameExitcallback = callback;
		this.context = context;
		// System.exit(0);
		VivoUnionSDK.exit((Activity) context, new VivoExitCallback() {

			@Override
			public void onExitConfirm() {
				gameExitcallback.onExecutionSuccess(0);
				AppUtil.gc();
				System.exit(0);
			}

			@Override
			public void onExitCancel() {
			}
		});
	}

	public void showFloatView(Context context, HashMap params, executeCallback callback) {
	}

	public void hideFloatView(Context context, HashMap params, executeCallback callback) {
	}

	public String getName(Context context) {
		return "vivo";
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
	public void onStop(Context context) {
	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
	}

	// vivo 登录回调接口
	@Override
	public void onVivoAccountLogin(String arg0, String arg1, String arg2) {
		uid = arg1;// 登录用户id
		String token = arg2;
		UserParams userParams = new UserParams();
		userParams.setSdkUserID(uid);
		userParams.setToken(token);
		userParams.setSuc(true);
		if (userParams != null) {
			logincall.onExecutionSuccess(userParams);
		}
	}

	@Override
	public void onVivoAccountLoginCancel() {
		logincall.onExecutionFailure(0, "登陆失败");
	}

	// 注销登录
	@Override
	public void onVivoAccountLogout(int arg0) {

	}

	// 支付流程
	private void pay(final String productName, final String price, String cpOrderid, String extrol) {
		// 订单推送接口请在服务器端访问
		final HashMap<String, String> params = new HashMap<String, String>();
		params.put("notifyUrl",
				"http://unitysdkapi.pyw.cn/ChannelPayCallback/paySuccess/51/4f26140988acdd35e3fc4b120b4780bc");
		params.put("orderAmount", price); // 单位为分；
		params.put("orderDesc", productName);
		params.put("orderTitle", productName);
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
		params.put("orderTime", format.format(new Date()));
		params.put("cpId", cpid);
		params.put("appId", appid);
		params.put("cpOrderNumber", cpOrderid);
		params.put("version", "1.0");
		params.put("extInfo", extrol);
		String str = VivoSignUtils.getVivoSign(params, appkey); // 20131030114035565895为app对应的signkey
		params.put("signature", str);
		params.put("signMethod", "MD5");

		RequestQueue mQueue = Volley.newRequestQueue(context);
		HTTPSTrustManager.allowAllSSL();
		StringRequest jsonObjectRequest = new StringRequest(Method.POST, "https://pay.vivo.com.cn/vcoin/trade",
				new Response.Listener<String>() {
					@Override
					public void onResponse(String response) {
						Log.d("px", "response : " + response);
						JSONObject jsonObject = null;
						try {
							jsonObject = new JSONObject(response);
						} catch (JSONException e) {
							e.printStackTrace();
						}
						if (JsonParser.getString(jsonObject, "respCode").equals("200")) {
							// 上报角色信息
							mVivoPayInfo = new VivoPayInfo(productName, productName, price,
									JsonParser.getString(jsonObject, "accessKey"), appid,
									JsonParser.getString(jsonObject, "orderNumber"), uid);
							VivoUnionSDK.pay((Activity) context, mVivoPayInfo, mVivoPayCallback);
						} else {
							Toast.makeText(context, "获取订单错误", Toast.LENGTH_SHORT).show();
						}

					}
				}, new Response.ErrorListener() {
					@Override
					public void onErrorResponse(VolleyError error) {
						Toast.makeText(context, "获取参数错误", Toast.LENGTH_SHORT).show();
					}
				}) {
			@Override
			protected Map<String, String> getParams() throws AuthFailureError {
				return params;
			}
		};
		mQueue.add(jsonObjectRequest);
		mQueue.start();
	}

	private VivoPayCallback mVivoPayCallback = new VivoPayCallback() {
		// 客户端返回的支付结果不可靠，请以服务器端最终的支付结果为准；
		public void onVivoPayResult(String arg0, boolean arg1, String arg2) {
			if (arg1) {
				PayResult payResult = new PayResult();
				payResult.setExtension("支付成功");
				payResult.setOrderID(mOrderID);
				payResult.setPayResult(true);
				final PluginPayResult pluginPayResult = new PluginPayResult();
				pluginPayResult.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
				pluginPayResult.setPayResult(payResult);
				((Activity) context).runOnUiThread(new Runnable() {

					@Override
					public void run() {
						paycallback.onExecutionSuccess(pluginPayResult);
					}
				});
			} else {
				paycallback.onExecutionFailure(0, mOrderID);
			}
		};
	};
}
