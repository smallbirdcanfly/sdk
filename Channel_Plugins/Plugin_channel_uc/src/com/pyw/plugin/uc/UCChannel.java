package com.pyw.plugin.uc;

import java.net.URLEncoder;
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
import cn.uc.gamesdk.UCGameSdk;
import cn.uc.gamesdk.even.SDKEventKey;
import cn.uc.gamesdk.even.SDKEventReceiver;
import cn.uc.gamesdk.even.Subscribe;
import cn.uc.gamesdk.exception.AliLackActivityException;
import cn.uc.gamesdk.exception.AliNotInitException;
import cn.uc.gamesdk.open.GameParamInfo;
import cn.uc.gamesdk.open.OrderInfo;
import cn.uc.gamesdk.open.UCOrientation;
import cn.uc.gamesdk.param.SDKParamKey;
import cn.uc.gamesdk.param.SDKParams;

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

public class UCChannel extends PYWPlugin {
	public static final String TAG = "UCChannel";
	private String uid;
	private String mOrderID, serverId, roleId, roleName;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, playerInfocallback, paycallback,
			gameExitcallback, logoutcallback, logincall;
	private Context context;
	
	private boolean mRepeatCreate = false;

	SDKEventReceiver receiver = new SDKEventReceiver() {

		@Subscribe(event = SDKEventKey.ON_INIT_SUCC)
		private void onInitSucc() {
			// 初始化成功
			Log.d("px", "ON_INIT_SUCC");
			 initcallback.onExecutionSuccess(null);
		}

		@Subscribe(event = SDKEventKey.ON_INIT_FAILED)
		private void onInitFailed(final String data) {
			// 初始化失败
			Log.d("px", "ON_INIT_FAILED" + data);
			 initcallback.onExecutionFailure(16, data);
//			ucNetworkAndInitUCGameSDK(null);
		}

		@Subscribe(event = SDKEventKey.ON_LOGIN_SUCC)
		private void onLoginSucc(String sid) {
			AccountInfo.instance().setSid(sid);
			UserParams user = new UserParams();
			user.setToken(sid);
			user.setSdkUserID("channel_uid_is_null");
			Log.d("px", "ON_LOGIN_SUCC" + sid);
			logincall.onExecutionSuccess(user);
		}

		@Subscribe(event = SDKEventKey.ON_LOGIN_FAILED)
		private void onLoginFailed(String desc) {
			logincall.onExecutionFailure(1, "登录失败");
			Log.d("px", "ON_LOGIN_SUCC" + desc);
		}

		@Subscribe(event = SDKEventKey.ON_CREATE_ORDER_SUCC)
		private void onCreateOrderSucc(OrderInfo orderInfo) {
			// dumpOrderInfo(orderInfo);
			if (orderInfo != null) {
				String txt = orderInfo.getOrderAmount() + ","
						+ orderInfo.getOrderId() + "," + orderInfo.getPayWay();
			}
			Log.i(TAG, "pay create succ");
			PayResult payResult = new PayResult();
			payResult.setExtension("支付成功");
			payResult.setOrderID(mOrderID);
			payResult.setPayResult(true);
			PluginPayResult pluginPayResult = new PluginPayResult();
			pluginPayResult.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
			pluginPayResult.setPayResult(payResult);
			paycallback.onExecutionSuccess(pluginPayResult);
		}

		@Subscribe(event = SDKEventKey.ON_PAY_USER_EXIT)
		private void onPayUserExit(OrderInfo orderInfo) {
			// dumpOrderInfo(orderInfo);
			Log.i(TAG, "pay exit");
	
			paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
					"pay exit");
		}

		@Subscribe(event = SDKEventKey.ON_LOGOUT_SUCC)
		private void onLogoutSucc() {

			logoutcallback.onExecutionSuccess(null);
		}

		@Subscribe(event = SDKEventKey.ON_LOGOUT_FAILED)
		private void onLogoutFailed() {
			// printMsg("注销失败");
		}

		@Subscribe(event = SDKEventKey.ON_EXIT_SUCC)
		private void onExit(String desc) {
			gameExitcallback.onExecutionSuccess(0);
		}

		@Subscribe(event = SDKEventKey.ON_EXIT_CANCELED)
		private void onExitCanceled(String desc) {

		}
	};

	@Override
	public void onCreate(Context context) {
		this.context = context;
	}

	public void init(final Context context, HashMap params,
			executeCallback callback) {
		this.context = context;
		this.initcallback = callback;
	    if ((((Activity)context).getIntent().getFlags() & Intent.FLAG_ACTIVITY_BROUGHT_TO_FRONT) != 0) {
	        Log.i(TAG, "onCreate with flag FLAG_ACTIVITY_BROUGHT_TO_FRONT");
	        mRepeatCreate = true;
	        ((Activity)context).finish();
	        return;
	    }

		UCGameSdk.defaultSdk().registerSDKEventReceiver(receiver);
		ucNetworkAndInitUCGameSDK(getPullupInfo(((Activity) context)
				.getIntent()));
	}

	private void ucNetworkAndInitUCGameSDK(String pullupInfo) {
		ucSdkInit(pullupInfo);// 执行UCGameSDK初始化
	}

	private String getPullupInfo(Intent intent) {
		if (intent == null) {
			return null;
		}
		String pullupInfo = intent.getDataString();
		if (TextUtils.isEmpty(pullupInfo)) {
			pullupInfo = intent.getStringExtra("data");
		}
		
		return pullupInfo;
	}

	private void ucSdkInit(String pullUpInfo) {
		GameParamInfo gameParamInfo = new GameParamInfo();
		// gameParamInfo.setCpId(UCSdkConfig.cpId);已废用
		gameParamInfo.setGameId(UCSdkConfig.gameId);
		// gameParamInfo.setServerId(UCSdkConfig.serverId);已废用
		gameParamInfo.setOrientation(UCOrientation.LANDSCAPE);

		SDKParams sdkParams = new SDKParams();

		sdkParams.put(SDKParamKey.GAME_PARAMS, gameParamInfo);
		sdkParams.put(SDKParamKey.PULLUP_INFO, pullUpInfo);

		// 联调环境已经废用
//		 sdkParams.put(SDKParamKey.DEBUG_MODE, false);

		try {
			Log.d("px", "ucinit =" + sdkParams.toString());
			UCGameSdk.defaultSdk().initSdk((Activity) context, sdkParams);

		} catch (AliLackActivityException e) {
			e.printStackTrace();
		}
	}

	public void getRoleMessage(Context context, HashMap params,
			final executeCallback callback) {

		SDKParams sdkParams = new SDKParams();
		sdkParams.put(
				SDKParamKey.STRING_ROLE_ID,
				TextUtils.isEmpty(params.get("roleid") + "") ? "" : params
						.get("roleid") + "");
		sdkParams.put(
				SDKParamKey.STRING_ROLE_NAME,
				TextUtils.isEmpty(params.get("roleName") + "") ? "" : params
						.get("roleName") + "");
		sdkParams.put(SDKParamKey.LONG_ROLE_LEVEL, Long.valueOf(TextUtils
				.isEmpty(params.get("roleLevel") + "") ? "" : params
				.get("roleLevel") + ""));
		String str = params.get("roleCreateTime")+"";
		long time = 0;
		if(!TextUtils.isEmpty(str) && str.matches("[0-9]+")){
			time = Long.parseLong(str);
		}
		sdkParams.put(SDKParamKey.LONG_ROLE_CTIME,
				time);
		sdkParams.put(
				SDKParamKey.STRING_ZONE_ID,
				TextUtils.isEmpty(params.get("serverArea") + "") ? "" : params
						.get("serverArea") + "");
		sdkParams.put(SDKParamKey.STRING_ZONE_NAME,
				TextUtils.isEmpty(params.get("serverAreaName") + "") ? ""
						: params.get("serverAreaName") + "");
		try {
			Log.d("px", sdkParams.toString());
			UCGameSdk.defaultSdk()
					.submitRoleData((Activity) context, sdkParams);
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (AliNotInitException e) {
			e.printStackTrace();
		} catch (AliLackActivityException e) {
			e.printStackTrace();
		}

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
		Log.d("px", "login start");
		try {
			UCGameSdk.defaultSdk().login((Activity) context, null);
		} catch (AliLackActivityException e) {
			e.printStackTrace();
			Log.d("px", "login start 1");
		} catch (AliNotInitException e) {
			e.printStackTrace();
			Log.d("px", "login start 2");
		}
	}

	public void switchLogin(Context context, HashMap params,
			executeCallback callback) {
		this.logincall = callback;
		this.context = context;

	}

	public void setLoginCallback(Context context, final executeCallback callback) {
		this.context = context;
		this.logincall = callback;
	}

	public void pay(final Context context, HashMap params,
			final executeCallback callback) {
		this.paycallback = callback;

		HashMap param = (HashMap) params.get("nameValuePairs");
		String price = param.get("order_price") + "";
		mOrderID = params.get("orderID") + "";
		if (!TextUtils.isEmpty(price) && !price.contains(".")) {
			price += ".00";
		}

		String productName = param.get("channel_prod_id") + "";
		String extrol = params.get("channel_order_info") + "";

		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put(SDKParamKey.CALLBACK_INFO, extrol);
		paramMap.put(
				SDKParamKey.NOTIFY_URL,
				"http://unitysdkapi.pyw.cn/ChannelPayCallback/paySuccess/33/57ed66b3b3fe3ecf6504f0a576e2e6ee");
		paramMap.put(SDKParamKey.AMOUNT, price);
		paramMap.put(SDKParamKey.CP_ORDER_ID, param.get("channel_order_sn") + "");
		paramMap.put(SDKParamKey.ACCOUNT_ID, PYWSDKManager.CHANNEL_UID);
		paramMap.put(SDKParamKey.SIGN_TYPE, "MD5");

		SDKParams sdkParams = new SDKParams();

		Map<String, Object> map = new HashMap<String, Object>();
		map.putAll(paramMap);
		sdkParams.putAll(map);
		String sign = SinUtils.sign(paramMap, UCSdkConfig.apikey);

		sdkParams.put(SDKParamKey.SIGN, sign);
		try {
			
			UCGameSdk.defaultSdk().pay((Activity) context, sdkParams);
			Log.d("px", "sdkParams = " + sdkParams.toString());
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
			Log.d("px", e.toString() + "1");
		} catch (AliLackActivityException e) {
			e.printStackTrace();
			Log.d("px", e.toString() + "2");
		} catch (AliNotInitException e) {
			e.printStackTrace();
			Log.d("px", e.toString() + "3");
		}
	}

	public void setCallback(Context context, Callback callback) {
		this.context = context;
		this.sdklogoutcallback = callback;
	}

	public void logout(Context context, HashMap params, executeCallback callback) {
		this.logoutcallback = callback;
		try {
			UCGameSdk.defaultSdk().logout((Activity) context, null);
		} catch (AliLackActivityException e) {
			e.printStackTrace();
		} catch (AliNotInitException e) {
			e.printStackTrace();
		}
	}

	public void gameExit(final Context context, HashMap params,
			final executeCallback callback) {
		gameExitcallback = callback;
		this.context = context;
		try {
			UCGameSdk.defaultSdk().exit((Activity) context, null);
		} catch (AliLackActivityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (AliNotInitException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void showFloatView(Context context, HashMap params,
			executeCallback callback) {
	}

	public void hideFloatView(Context context, HashMap params,
			executeCallback callback) {
	}

	public String getName(Context context) {
		return "uc";
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
		 if (this.mRepeatCreate) {
		        Log.i(TAG, "onPause is repeat activity!");
		        return;
		    }
	}

	@Override
	public void onResume(Context context) {
		if (this.mRepeatCreate) {
	        Log.i("onResume", "onResume is repeat activity!");
	        return;
	    }
	}

	@Override
	public void onDestroy(Context context) {
		UCGameSdk.defaultSdk().unregisterSDKEventReceiver(receiver);
		receiver = null;
		 if (this.mRepeatCreate) {
		        Log.i(TAG, "onDestroy is repeat activity!");
		        return;
		    }
	}

	@Override
	public void onRestart(Context context) {
		 if (this.mRepeatCreate) {
		        Log.i(TAG, "onRestart is repeat activity!");
		       return;

		    }
	}

	@Override
	public void onStart(Context context) {
		   if (this.mRepeatCreate) {
		        Log.i(TAG, "onStart is repeat activity!");
		        return;
		    }
	}

	@Override
	public void onNewIntent(Intent intent) {
		 if (this.mRepeatCreate) {
		        Log.i(TAG, "onNewIntent is repeat activity!");
		   return;
		    }
	}

	@Override
	public void onConfigurationChanged(Configuration newConfig) {
	}

	@Override
	public void onStop(Context context) {
		if (this.mRepeatCreate) {
	        Log.i(TAG, "onStop is repeat activity!");
	        return;
	    }
	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		ucNetworkAndInitUCGameSDK(null);
		  if (this.mRepeatCreate) {
		        Log.i(TAG, "onActivityResult is repeat activity!");
		        return;
		    }
	}

}
