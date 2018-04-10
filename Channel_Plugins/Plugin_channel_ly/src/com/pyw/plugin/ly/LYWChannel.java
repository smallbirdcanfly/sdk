package com.pyw.plugin.ly;

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

import com.moge.sdk.MGSDKManager;
import com.moge.sdk.bean.RoleInfo;
import com.moge.sdk.listener.LoginResult;
import com.moge.sdk.listener.OnExitListener;
import com.moge.sdk.listener.OnLoginListener;
import com.moge.sdk.listener.OnPaymentListener;
import com.moge.sdk.listener.OnSwitchAccountListener;
import com.moge.sdk.listener.OnUserLogoutListener;
import com.moge.sdk.listener.PaymentResult;
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

/**
 * 
 * @author PX
 * 渠道号 70 gamekey 020986b2
 */
public class LYWChannel extends PYWPlugin {

	private String mOrderID,roleID,roleLevel,serverID;
	private executeCallback initcallback, paycallback, logincallback,
			logoutcallback, gameExitcallback;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private Context context;
	private MGSDKManager sdk;
	private boolean isLogin;

	@Override
	public void onCreate(Context context) {

	}

	public void init(final Context context, final HashMap params,
			executeCallback callback) {
		this.initcallback = callback;
		this.context = context;
		isLogin = false;
		sdk = MGSDKManager.getInstance(context);
		sdk.init(context);
		sdk.onCreate();
		if (null != initcallback) {
			initcallback.onExecutionSuccess(null);
		}
		initCallBack();
	}

	// 初始化回调接口
	private void initCallBack() {
		sdk.setUserLogoutListener(new OnUserLogoutListener() {

			@Override
			public void onLogoutSuccess(int arg0, String arg1) {
				// TODO Auto-generated method stub
				if(logoutcallback != null)
					sdklogoutcallback.onCallback(null);
			}

			@Override
			public void onLogoutFailure(int arg0, String arg1) {
				// TODO Auto-generated method stub

			}
		});

		sdk.setSwitchAccountListener(new OnSwitchAccountListener() {

			@Override
			public void onSuccess(LoginResult arg0) {
				// TODO Auto-generated method stub
				UserParams userParams = new UserParams();
				userParams.setSdkUserID(arg0.username);
				userParams.setToken(arg0.memkey);
				isLogin = true;
				if(logincallback!=null)
				logincallback.onExecutionSuccess(userParams);
			}

			@Override
			public void onFailure(int arg0, String arg1) {
				Log.d("SwitchAccount", "onFailure");
			}

			@Override
			public void onCancel() {
				Log.d("SwitchAccount", "onCancel");
			}
		});
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;
		// 调起登录界面
		((Activity) context).runOnUiThread(new Runnable() {
			@Override
			public void run() {
				sdk.login(context, true, new OnLoginListener() {

					@Override
					public void onLoginSuccess(LoginResult arg0) {
						// TODO Auto-generated method stub
						Log.d("px",  arg0.username + "--" + arg0.sign + "--" + "" + arg0.memkey);
						UserParams userParams = new UserParams();
						userParams.setSdkUserID(arg0.username);
						userParams.setToken(arg0.memkey);
						logincallback.onExecutionSuccess(userParams);
						isLogin = true;
					}

					@Override
					public void onLoginFailure(int arg0, String arg1) {
						// TODO Auto-generated method stub
						logincallback.onExecutionFailure(0, "登录失败");
					}
				});
			}
		});
	}

	public void getRoleMessage(Context context, HashMap params,
			executeCallback callback) {

		roleLevel = (TextUtils.isEmpty(params.get("roleLevel") + "") ? ""
				: params.get("roleLevel")) + "";
		roleID = TextUtils.isEmpty(params.get("roleid") + "") ? ""
				: params.get("roleid") + "";
		serverID = TextUtils.isEmpty(params.get("serverArea") + "") ? ""
				: params.get("serverArea") + "";
		RoleInfo role = new RoleInfo();
		role.setCreateRole(roleLevel.equals("1") ? true : false);
		role.setPartyName("SAO");
		role.setRoleBalance("9999999");
		role.setRoleCreateTime(params.get("roleCreateTime") + "");
		role.setRoleID(roleID);
		role.setRoleLevel(roleLevel);
		role.setRoleName(TextUtils.isEmpty(params.get("roleName") + "") ? ""
				: params.get("roleName") + "");
		role.setServerID(serverID);
		role.setServerName(TextUtils.isEmpty(params.get("serverAreaName") + "") ? ""
				: params.get("serverAreaName") + "");
		role.setVipLevel("15");
		sdk.updateGameRoleData(context, role);
	}

	public void pay(final Context context, HashMap params,
			final executeCallback callback) {
		this.paycallback = callback;
		this.context = context;
		String price = params.get("price") + "";
		mOrderID = params.get("orderID") + "";
		String productName = params.get("productName") + "";
		
		String extrol = params.get("channel_order_info") + "";
		
		sdk.pay(context, roleID, params.get("roleName") + "", roleLevel, price, serverID, productName, productName,extrol,
				new OnPaymentListener() {

					@Override
					public void onPaySuccess(PaymentResult arg0) {
						PayResult payResult = new PayResult();
						payResult.setExtension("支付成功");
						payResult.setOrderID(mOrderID);
						payResult.setPayResult(true);
						final PluginPayResult pluginPayResult = new PluginPayResult();
						pluginPayResult
								.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
						pluginPayResult.setPayResult(payResult);
						((Activity) context).runOnUiThread(new Runnable() {

							@Override
							public void run() {
								paycallback.onExecutionSuccess(pluginPayResult);
							}
						});
					}

					@Override
					public void onPayFailure(int arg0, String arg1, String arg2) {
						((Activity) context).runOnUiThread(new Runnable() {

							@Override
							public void run() {
								paycallback.onExecutionFailure(1, mOrderID);
							}
						});
					}
				});

	}

	public void setExitGame(final Context context, HashMap params,
			final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
	}

	public void logout(final Context context, HashMap params,
			executeCallback callback) {
		this.logoutcallback = callback;
		sdk.logout();
		// 朋友玩注销
		
	}

	public void gameExit(final Context context, HashMap params,
			final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
		sdk.exit(context, new OnExitListener() {
			
			@Override
			public void onSuccess() {
				gameExitcallback.onExecutionSuccess(0);
			}
			
			@Override
			public void onFailure() {
				
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

	/**
	 * 显示悬浮窗
	 */
	public void showFloatView() {
	}

	/**
	 * 隐藏浮点
	 */
	public void hideFloatView() {
	}

	@Override
	public String getName(Context context) {

		return "ly";
	}

	@Override
	public int getVersion(Context context) {
		return 0;
	}

	@Override
	public String getCategory(Context context) {
		return "channel";
	}

	public void onStop(Context context) {
		MGSDKManager.getInstance(context).onStop();
	}

	@Override
	public void onResume(Context context) {
		if(isLogin)
		MGSDKManager.getInstance(context).onResume();
	}

	@Override
	public void onPause(Context context) {
		MGSDKManager.getInstance(context).onPause();
	}

	@Override
	public void onDestroy(Context context) {
		MGSDKManager.getInstance(context).onDestroy();
	}

	@Override
	public void onRestart(Context context) {
		MGSDKManager.getInstance(context).onRestart();
	}

	@Override
	public void onStart(Context context) {
		if(isLogin)
		MGSDKManager.getInstance(context).onStart();
	}

	@Override
	public void onNewIntent(Intent intent) {
		MGSDKManager.getInstance(context).onNewIntent(intent);
	}

	@Override
	public void onConfigurationChanged(Configuration newConfig) {
		MGSDKManager.getInstance(context).onConfigurationChanged(newConfig);
	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		MGSDKManager.getInstance(context).onActivityResult(requestCode, resultCode, data);
	}

}
