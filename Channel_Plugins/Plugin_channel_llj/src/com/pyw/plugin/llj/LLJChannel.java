package com.pyw.plugin.llj;

import java.util.HashMap;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;
import com.wan669.sdk.WanSDK;
import com.wan669.sdk.WanSDK.Exitback;
import com.wan669.sdk.WanSDK.LoginCallback;
import com.wan669.sdk.WanSDK.LoginOutback;
import com.wan669.sdk.utils.PrefUtil;

public class LLJChannel extends PYWPlugin {
	public static final String TAG = "JJYChannel";
	private String uid;
	private String mOrderID;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, playerInfocallback, paycallback,
			gameExitcallback, logoutcallback, logincall;
	private Context context;

	@Override
	public void onCreate(Context context) {
		this.context = context;
	}

	public void init(final Context context, HashMap params,
			executeCallback callback) {
		this.context = context;
		this.initcallback = callback;
		WanSDK.getInstance().init(context, "33");

	}

	public void setExitGame(final Context context, HashMap params,
			final executeCallback callback) {
		this.context = context;
		gameExitcallback = callback;
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincall = callback;
		this.context = context;
		WanSDK.getInstance().logins(context, new LoginCallback() {

			@Override
			public void onLoginResult(int code, String uid, String msg,
					String ticket, int info) {
				final String hint = "[登录测试结果]:" + code + "    uid=" + uid
						+ " msg=" + msg + "===ticket==" + ticket + "----"
						+ info;
				Log.d("px", hint);
			}
		});
	}

	public void switchLogin(Context context, HashMap params,
			executeCallback callback) {
		this.logincall = callback;
		this.context = context;

	}

	public void setLoginCallback(Context context, final executeCallback callback) {
		this.context = context;
		this.logincall = callback;
		Log.d("px", "setLoginCallback");
	}

	public void pay(final Context context, HashMap params,
			final executeCallback callback) {
		this.paycallback = callback;

		mOrderID = params.get("orderID") + "";
		String productName = params.get("productName") + "";
		String productId = params.get("productId") + "";
		HashMap<String, Object> data = (HashMap<String, Object>) params
				.get("nameValuePairs");
		int rate = (Integer) data.get("rate");
		String price = (Integer) params.get("price") * rate + "";// 根据返回的比例去支付对应价格

		if (TextUtils.isEmpty(mOrderID) || TextUtils.isEmpty(productName)
				|| TextUtils.isEmpty(price)) {
			Toast.makeText(context, "pay params error!!!", Toast.LENGTH_SHORT)
					.show();
		}
	}

	public void setCallback(Context context, Callback callback) {
		this.context = context;
		this.sdklogoutcallback = callback;
		Log.d("px", "setCallback");
	}

	public void logout(Context context, HashMap params,
			final executeCallback callback) {
		this.logoutcallback = callback;
		WanSDK.getInstance().logOUT(context, new LoginOutback() {

			@Override
			public void onLoginOutResult(int code, String msg) {
				if (code == 1) {
					callback.onExecutionSuccess(0);
				} else {
					callback.onExecutionSuccess(1);
				}

			}
		});
	}

	public void gameExit(final Context context, HashMap params,
			final executeCallback callback) {
		gameExitcallback = callback;
		this.context = context;
		((Activity) context).runOnUiThread(new Runnable() {
			@Override
			public void run() {
				// TODO 调用退出
				WanSDK.getInstance().exit((Activity) context, new Exitback() {

					@Override
					public void onExitResult(int code, String msg) {
						if (code == 1) {
							WanSDK.getInstance().cloaseFloat(context);
							PrefUtil.getInstance().saveUID(context, null,
									PrefUtil.getInstance().readGameId(context));
							callback.onExecutionSuccess(0);
						} else {
							callback.onExecutionSuccess(1);
						}
					}
				});
			}
		});

	}

	public String getName(Context context) {
		return "llj";
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
		WanSDK.getInstance().cloaseFloat(context);
	}

	@Override
	public void onResume(Context context) {
		String logStatus = PrefUtil.getInstance().readUID(context,
				PrefUtil.getInstance().readGameId(context));
		if (logStatus != null) {
			WanSDK.getInstance().openFloat(context);
		}
	}

	@Override
	public void onDestroy(Context context) {
		Log.d("px", "onDestroy");
		WanSDK.getInstance().destory(context);
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
		WanSDK.getInstance().cloaseFloat(context);
	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
	}

}
