package com.pyw.plugin.ky;

import java.util.HashMap;

import org.json.JSONObject;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.game.sdk.YTSDKManager;
import com.game.sdk.domain.LoginErrorMsg;
import com.game.sdk.domain.LogincallBack;
import com.game.sdk.domain.OnLoginListener;
import com.pyw.entity.UserParams;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

/**
 * KY插件入口类
 * 
 * @author PX
 * 
 */
public class KYChannel extends PYWPlugin {

	public static final String TAG = "PYWChannel";
	private String uid;
	private String mOrderID;
	private JSONObject mSdkParams;
	private executeCallback initcallback, playerInfocallback, paycallback,
			logoutcallback, logincall;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private Context context;
	public YTSDKManager sdkManager;

	@Override
	public void onCreate(Context context) {
		this.context = context;
	}

	public void init(final Context context, HashMap params,
			executeCallback callback) {
		this.context = context;
		this.initcallback = callback;
		sdkManager = YTSDKManager.getInstance(context);
		if (null != initcallback) {
			initcallback.onExecutionSuccess(null);
		}

	}

	public void setExitGame(final Context context, HashMap params,
			final executeCallback callback) {
		this.context = context;
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincall = callback;
		this.context = context;
		sdkManager.showLogin(context, true, new OnLoginListener() {

			@Override
			public void loginSuccess(LogincallBack logincallback) {
				//用户id，和token
				uid = logincallback.mem_id;
				String token = logincallback.user_token;

				String agentgame = YTSDKManager.getInstance(context).getAgentName();

				UserParams userParams = new UserParams();
				userParams.setToken(token);
				userParams.setSdkUserID(uid);
				userParams.setAgentgame(agentgame);
				userParams.setSuc(true);
				if (logincall != null) {
					logincall.onExecutionSuccess(userParams);
				}
				// 登陆完成后,显示浮点，根据需要使用
				sdkManager.showFloatView();
			}

			@Override
			public void loginError(LoginErrorMsg errorMsg) {
				int code = errorMsg.code;
				if (logincall != null) {
					logincall.onExecutionFailure(code, "登陆失败");
				}
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

	public void logout(Context context, HashMap params, executeCallback callback) {
		this.logoutcallback = callback;
//		logoutcallback.onExecutionSuccess(0);
	}

	public void gameExit(final Context context, HashMap params,
			final executeCallback callback) {

		this.context = context;
        // 游戏退出必须调用
		YTSDKManager.getInstance(context).recycle();
		callback.onExecutionSuccess(0);
	
		System.exit(0);
		
	}

	public String getName(Context context) {
		return "ky";
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
		sdkManager.recycle();// 游戏退出必须调用
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
