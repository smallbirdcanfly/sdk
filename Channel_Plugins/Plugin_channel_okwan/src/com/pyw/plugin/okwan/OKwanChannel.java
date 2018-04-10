package com.pyw.plugin.okwan;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import com.haiyun.zwq.kxwansdk.activity.KxwAccountInfoActivity;
import com.haiyun.zwq.kxwansdk.activity.KxwGetRoleInfoActivity;
import com.haiyun.zwq.kxwansdk.activity.KxwLoginOutActivity;
import com.haiyun.zwq.kxwansdk.activity.NotificationStarterActivity;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.Base64;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;

/**
 * okwan渠道 渠道号:55
 * 
 * @author zhj
 *
 */
public class OKwanChannel extends PYWPlugin {
	public static final String TAG = "JJYChannel";
	private String uid;
	private String mOrderID, serverName, roleId, roleName;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, playerInfocallback, paycallback, gameExitcallback, logoutcallback, logincall;
	private Context context;
	private boolean isFirst = true;
	private static final String CHANNLE_UID = "channel_uid_is_null";

	@Override
	public void onCreate(Context context) {
		this.context = context;
	}

	public void init(final Context context, HashMap params, executeCallback callback) {
		this.context = context;
		this.initcallback = callback;
		EventDispacther.create(new OkwanCallback() {

			@Override
			public void onPay(String status) {
				if (paycallback != null) {
					if (!TextUtils.isEmpty(status) && status.equals("1")) {
						// 支付成功
						PayResult payResult = new PayResult();
						payResult.setExtension("支付成功");
						payResult.setOrderID(mOrderID);
						payResult.setPayResult(true);
						PluginPayResult pluginPayResult = new PluginPayResult();
						pluginPayResult.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
						pluginPayResult.setPayResult(payResult);
						paycallback.onExecutionSuccess(pluginPayResult);
					} else {
						paycallback.onExecutionFailure(0, "支付失败");
					}
				}
			}

			@Override
			public void onLogin(String uid, String scode) {
				if (logincall != null) {
					if (TextUtils.isEmpty(scode)) {
						logincall.onExecutionFailure(0, "login failed");
					} else {
						UserParams pa = new UserParams();
						pa.setSdkUserID(CHANNLE_UID);
						pa.setToken(scode);
						logincall.onExecutionSuccess(pa);
					}
				}
			}
		});
	}

	public void getRoleMessage(Context context, HashMap params, final executeCallback callback) {
		// 游戏服务器id,类型：String
		String serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? "" : params.get("serverArea") + "";
		roleId = TextUtils.isEmpty(params.get("roleid") + "") ? "" : params.get("roleid") + "";
		roleName = TextUtils.isEmpty(params.get("roleName") + "") ? "" : params.get("roleName") + "";
		String level = TextUtils.isEmpty(params.get("roleLevel") + "") ? "1" : params.get("roleLevel") + "";
		serverName = TextUtils.isEmpty(params.get("serverAreaName") + "") ? "" : params.get("serverAreaName") + "";

		KxwGetRoleInfoActivity info = new KxwGetRoleInfoActivity();
		info.getRoleInfo(context, roleName, level, serverId, serverName);
	}

	public void setExitGame(final Context context, HashMap params, final executeCallback callback) {
		this.context = context;
		gameExitcallback = callback;
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincall = callback;
		this.context = context;
		Intent intent = new Intent(context, NotificationStarterActivity.class);
		intent.putExtra("gid", "170");
		intent.putExtra("api_key", "e34d398b785194a9bd24734b27ac4d98");
		intent.putExtra("secret_key", "7d3d430315cffaf816ba1fad1af9e743");
		context.startActivity(intent);
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

		HashMap param = (HashMap) params.get("nameValuePairs");
		String price = param.get("order_price") + "";
		mOrderID = params.get("orderID") + "";
		if (!TextUtils.isEmpty(price) && !price.contains(".")) {
			price += ".00";
		}

		String productName = params.get("productName") + "";
		String extrol = params.get("channel_order_info") + "";
		
		Intent intent = new Intent(context, KxwAccountInfoActivity.class);
		String appName = context.getString(context.getApplicationInfo().labelRes);
		intent.putExtra("gameName", appName == null ? "" : appName);
		intent.putExtra("orderOn", sn);
		intent.putExtra("body", productName);
		intent.putExtra("roleId", roleId);
		intent.putExtra("serverName", serverName);
		intent.putExtra("amount", price);
		intent.putExtra("goodsNum", "1");
		intent.putExtra("attach", extrol);
		context.startActivity(intent);
	}

	public void setCallback(Context context, Callback callback) {
		this.context = context;
		this.sdklogoutcallback = callback;

	}

	public void logout(Context context, HashMap params, executeCallback callback) {
		this.logoutcallback = callback;
		KxwLoginOutActivity loginOut = new KxwLoginOutActivity();
		loginOut.loginOut(context);
		callback.onExecutionSuccess(0);
	}

	public void gameExit(final Context context, HashMap params, final executeCallback callback) {
		gameExitcallback = callback;
		callback.onExecutionSuccess(0);
	}

	public void showFloatView(Context context, HashMap params, executeCallback callback) {
	}

	public void hideFloatView(Context context, HashMap params, executeCallback callback) {
	}

	public String getName(Context context) {
		return "okwan";
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

}
