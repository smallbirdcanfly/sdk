package com.pyw.plugin.jdkj;

import java.net.URLEncoder;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.Base64;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;
import com.wancms.sdk.WancmsSDKManager;
import com.wancms.sdk.domain.LoginErrorMsg;
import com.wancms.sdk.domain.LogincallBack;
import com.wancms.sdk.domain.OnLoginListener;
import com.wancms.sdk.domain.OnPaymentListener;
import com.wancms.sdk.domain.PaymentCallbackInfo;
import com.wancms.sdk.domain.PaymentErrorMsg;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.Log;

/**
 * 巨都科技 渠道號:62
 * 
 * @author zhj
 *
 */
public class JDKJPlugin extends PYWPlugin {

	private static final String CHANNLE_UID = "channel_uid_is_null";
	public WancmsSDKManager sdkmanager;

	private PYWPluginExecutor.Callback sdklogoutcallback;

	private executeCallback playerInfocallback, paycallback, logoutcallback, logincall;

	private Context context;

	public void init(final Context context, HashMap params, final executeCallback callback) {
		this.context = context;
		sdkmanager = WancmsSDKManager.getInstance(context);
		if (callback != null) {
			callback.onExecutionSuccess(null);
		}
	}

	private WancmsSDKManager getSDK(Context context) {
		if (sdkmanager == null) {
			sdkmanager = WancmsSDKManager.getInstance(context);
		}
		return sdkmanager;
	}

	public void login(final Context context, final HashMap<String, Object> params,
			final PYWPluginExecutor.executeCallback callback) {
		this.logincall = callback;
		this.context = context;
		getSDK(context).showLogin(context, false, new OnLoginListener() {
			@Override
			public void loginSuccess(LogincallBack logincallback) {
				sdkmanager.showFloatView();// 鏄剧ず娴偣
				UserParams pa = new UserParams();
				pa.setSdkUserID(logincallback.username);
				pa.setToken(logincallback.sign + "|" + logincallback.logintime);
				if (logincall != null)
					logincall.onExecutionSuccess(pa);
			}

			@Override
			public void loginError(LoginErrorMsg errorMsg) {
				if (logincall != null)
					logincall.onExecutionFailure(0, "登錄失敗");
			}
		});
	}

	String mOrderID;

	public void pay(final Context context, HashMap params, final executeCallback callback) {
		this.paycallback = callback;

		HashMap param = (HashMap) params.get("nameValuePairs");
		String price = param.get("order_price") + "";
		mOrderID = params.get("orderID") + "";
		// if (!TextUtils.isEmpty(price) && !price.contains(".")) {
		// price += ".00";
		// }

		String productName = params.get("productName") + "";
		String extrol = params.get("channel_order_info") + "";
//		JSONObject jobj = new JSONObject();
//		try {
//
//			// 以下为非必要参数，只供参考，厂商可根据自身需求决定传什么参数与值或者不传
//			jobj.put("gamekey", PYWSDKManager.sGameKey);
//			jobj.put("game_version_code", AppUtil.getVersionCode(SDKControler.getContext()) + "");
//			jobj.put("channel_order_sn", param.get("channel_order_sn") + "");
//			extrol = URLEncoder.encode(jobj.toString());
//		} catch (JSONException e) {
//			e.printStackTrace();
//		}

		String roleid = TextUtils.isEmpty(params.get("roleid") + "") ? "" : params.get("roleid") + "";
		String sid = TextUtils.isEmpty(params.get("serverArea") + "") ? "1" : params.get("serverArea") + "";
		getSDK(context).showPay(context, roleid, price, sid, productName, "充值", extrol, new OnPaymentListener() {
			@Override
			public void paymentSuccess(PaymentCallbackInfo callbackInfo) {
				if (paycallback == null)
					return;
				PayResult payResult = new PayResult();
				payResult.setExtension("支付成功");
				payResult.setOrderID(mOrderID);
				payResult.setPayResult(true);
				final PluginPayResult pluginPayResult = new PluginPayResult();
				pluginPayResult.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
				pluginPayResult.setPayResult(payResult);
				paycallback.onExecutionSuccess(pluginPayResult);
			}

			@Override
			public void paymentError(PaymentErrorMsg errorMsg) {
				if (paycallback != null)
					paycallback.onExecutionFailure(1, mOrderID);
			}
		});
	}

	public void switchLogin(Context context, HashMap params, executeCallback callback) {
		this.logincall = callback;
		this.context = context;
	}

	public void setLoginCallback(Context context, final executeCallback callback) {
		this.context = context;
		this.logincall = callback;
	}

	public void logout(Context context, HashMap params, executeCallback callback) {
		this.logoutcallback = callback;
		logoutcallback.onExecutionSuccess(0);
	}

	public void gameExit(final Context context, HashMap params, final executeCallback callback) {
		this.context = context;
		if (sdkmanager != null) {
			sdkmanager.recycle();
			sdkmanager = null;
		}
		callback.onExecutionSuccess(0);
	}

	@Override
	public void onCreate(Context context) {

	}

	@Override
	public String getName(Context context) {
		// TODO Auto-generated method stub
		return "jdkj";
	}

	@Override
	public int getVersion(Context context) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String getCategory(Context context) {
		// TODO Auto-generated method stub
		return "channel";
	}

	@Override
	public void onPause(Context context) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onResume(Context context) {
		if (sdkmanager != null) {
			sdkmanager.showFloatView();
		}
	}

	@Override
	public void onDestroy(Context context) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onRestart(Context context) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onStop(Context context) {
		if (sdkmanager != null) {
			sdkmanager.removeFloatView();
		}
	}

	@Override
	public void onStart(Context context) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onNewIntent(Intent intent) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onConfigurationChanged(Configuration newConfig) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		// TODO Auto-generated method stub

	}

}
