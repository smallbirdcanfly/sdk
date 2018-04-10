package com.pyw.plugin.smkj;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;

import com.pengyouwan.framework.utils.LogUtil;
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
import com.snowfish.cn.ganga.helper.SFOnlineExitListener;
import com.snowfish.cn.ganga.helper.SFOnlineHelper;
import com.snowfish.cn.ganga.helper.SFOnlineInitListener;
import com.snowfish.cn.ganga.helper.SFOnlineLoginListener;
import com.snowfish.cn.ganga.helper.SFOnlinePayResultListener;
import com.snowfish.cn.ganga.helper.SFOnlineUser;

import org.json.JSONException;
import org.json.JSONObject;

import java.net.URLEncoder;
import java.util.HashMap;

/**
 * game_key: d7d824b 渠道号： 107 渠道名称： 胜马科技
 * <p>
 * Created by zhouq on 2018/1/16.
 */

public class SMKJPlugin extends PYWPlugin {
	private static final String TAG = "SMKJPlugin";

	private Context context;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, paycallback, logincallback, logoutcallback, gameExitcallback;
	private String mOrderID;
	private String serverId, serverAreaName, roleid, roleName, roleLevel;

	@Override
	public void onCreate(Context context) {
		
	}

	public void init(final Context context, final HashMap params, executeCallback callback) {
		this.initcallback = callback;
		this.context = context;
		initSDK();
	}

	private void initSDK() {
		SFOnlineHelper.onCreate((Activity) context, new SFOnlineInitListener() {
			@Override
			public void onResponse(String s, String s1) {
				LogUtil.d(TAG, "sdk init s: " + s + ", s1: " + s1);
				if (s.equalsIgnoreCase("success")) {
					initcallback.onExecutionSuccess(null);
				} else if (s.equalsIgnoreCase("fail")) {

				}
			}
		});

		SFOnlineHelper.setLoginListener((Activity) context, new SFOnlineLoginListener() {
			@Override
			public void onLogout(Object o) {
				logoutcallback.onExecutionSuccess(0);
			}

			@Override
			public void onLoginSuccess(SFOnlineUser sfOnlineUser, Object o) {
				String token = sfOnlineUser.getToken();
				String userid = sfOnlineUser.getChannelUserId();
				UserParams userParams = new UserParams();
				String extension = token + "|" + sfOnlineUser.getProductCode() + "|" + sfOnlineUser.getChannelId();
				userParams.setToken(extension);
				userParams.setSdkUserID(userid);
				userParams.setSuc(true);
				logincallback.onExecutionSuccess(userParams);
			}

			@Override
			public void onLoginFailed(String s, Object o) {
				logincallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT, "登陆失败 :" + s);
			}
		});
	}

	public void getRoleMessage(final Context context, HashMap params, final executeCallback callback) {

		roleid = TextUtils.isEmpty(params.get("roleid") + "") ? "" : params.get("roleid") + "";
		roleName = TextUtils.isEmpty(params.get("roleName") + "") ? "" : params.get("roleName") + "";
		roleLevel = TextUtils.isEmpty(params.get("roleLevel") + "") ? "" : params.get("roleLevel") + "";
		serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? "" : params.get("serverArea") + "";
		serverAreaName = TextUtils.isEmpty(params.get("serverAreaName") + "") ? "" : params.get("serverAreaName") + "";

		SFOnlineHelper.setRoleData((Activity) context, roleid, roleName, roleLevel, serverId, serverAreaName);
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;
		SFOnlineHelper.login((Activity) context, "Login");
	}

	public void setExitGame(final Context context, HashMap params, final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
		SFOnlineHelper.exit((Activity) context, new SFOnlineExitListener() {
			@Override
			public void onNoExiterProvide() {
				gameExitcallback.onExecutionSuccess(0);
			}

			@Override
			public void onSDKExit(boolean b) {

			}
		});
	}

	public void pay(final Context context, HashMap params, final executeCallback callback) {
		this.paycallback = callback;
		this.context = context;
		String productName = params.get("productName") + "";
		mOrderID = params.get("orderID") + "";
		int price = (Integer) params.get("price");
		String extrol = params.get("channel_order_info") + "";
		String callBackUrl = "";
		SFOnlineHelper.charge((Activity) context,productName,price * 100,1,extrol,callBackUrl,
				new SFOnlinePayResultListener() {
					@Override
					public void onFailed(String s) {
						if (paycallback != null) {
							paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT, "pay error  =" + s);
						}
					}

					@Override
					public void onSuccess(String s) {
						if (paycallback != null) {
							PayResult payResult = new PayResult();
							payResult.setExtension("支付成功");
							payResult.setOrderID(mOrderID);
							payResult.setPayResult(true);
							PluginPayResult pluginPayResult = new PluginPayResult();
							pluginPayResult.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
							pluginPayResult.setPayResult(payResult);
							paycallback.onExecutionSuccess(pluginPayResult);
						}
					}

					@Override
					public void onOderNo(String s) {

					}
				});

	}

	public void logout(final Context context, HashMap params, executeCallback callback) {
		this.logoutcallback = callback;
		SFOnlineHelper.logout((Activity) context, "LoginOut");
	}

	public void gameExit(final Context context, HashMap params, final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
		// exit方法用于系统全局退出
		/*
		 * public static void exit(Activity context, SFOnlineExitListener listener)
		 * 
		 * @param context 上下文Activity
		 * 
		 * @param listener 退出回调函数
		 */
		SFOnlineHelper.exit((Activity) context, new SFOnlineExitListener() {
			/*
			 * onSDKExit
			 * 
			 * @description 当SDK有退出方法及界面，回调该函数
			 * 
			 * @param bool 是否退出标志位
			 */
			@Override
			public void onSDKExit(boolean bool) {
				if (bool) {
					// apk退出函数，demo中也有使用System.exit()方法；但请注意360SDK的退出使用exit（）会导致游戏退出异常

				}
			}

			/*
			 * onNoExiterProvide
			 * 
			 * @description SDK没有退出方法及界面，回调该函数，可在此使用游戏退出界面
			 */
			@Override
			public void onNoExiterProvide() {
				gameExitcallback.onExecutionSuccess(0);
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
		return "smkj";
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
		if (context instanceof Activity)
			SFOnlineHelper.onPause((Activity) context);
	}

	@Override
	public void onResume(Context context) {
		if (context instanceof Activity)
			SFOnlineHelper.onResume((Activity) context);
	}

	@Override
	public void onDestroy(Context context) {
		if (context instanceof Activity)
			SFOnlineHelper.onDestroy((Activity) context);
	}

	@Override
	public void onRestart(Context context) {
		if (context instanceof Activity)
			SFOnlineHelper.onRestart((Activity) context);
	}

	@Override
	public void onStop(Context context) {
		if (context instanceof Activity)
			SFOnlineHelper.onStop((Activity) context);
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
