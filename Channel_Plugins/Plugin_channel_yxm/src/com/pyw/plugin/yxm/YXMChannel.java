package com.pyw.plugin.yxm;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import com.gamecat.sdk.proxy.ActivityLifecycleManager;
import com.gamecat.sdk.proxy.GamecatsdkConstant;
import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.open.FloatViewTool;
import com.pengyouwan.sdk.open.PYWPlatform;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.KeyCodes;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;
import com.youximao.sdk.gamecatsdk.GameCatSDK;
import com.youximao.sdk.gamecatsdk.GameCatSDKListener;
import com.youximao.sdk.gamecatsdk.utils.NavigationBarUtil;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;

/**
 * PYW插件入口类
 * 
 * @author tanxj
 * 
 */
public class YXMChannel extends PYWPlugin {

	private static final String TAG = "YXMChannel";

	private String mOrderID;
	private executeCallback initcallback, paycallback, logincallback, logoutcallback, gameExitcallback;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private Context context;
	boolean isShowSplash = false;// 控制第一次登陆显示闪屏
	boolean mIsDisplayFloatWindow = false;

	@Override
	public void onCreate(Context context) {

	}

	public void init(final Context context, final HashMap params, executeCallback callback) {
		this.initcallback = callback;
		this.context = context;
		((Activity) context).setRequestedOrientation(0);
		init();
		if (null != initcallback) {
			initcallback.onExecutionSuccess(null);
		}
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;
		// 调起登录界面
		switchLogin(false);
	}

	public void getRoleMessage(Context context, HashMap params, executeCallback callback) {

		GameCatSDK.SynSdkRoleInfo((Activity) context,
				TextUtils.isEmpty(params.get("roleid") + "") ? "" : params.get("roleid") + "",
				TextUtils.isEmpty(params.get("roleName") + "") ? "" : params.get("roleName") + "",
				TextUtils.isEmpty(params.get("serverArea") + "") ? "" : params.get("serverArea") + "",
				TextUtils.isEmpty(params.get("roleLevel") + "") ? "" : params.get("roleLevel") + "", "",
				new GameCatSDKListener() {

					@Override
					public void onSuccess(JSONObject arg0) {
						LogUtil.d(TAG, "角色信息上传成功：" + arg0.toString());

					}

					@Override
					public void onFail(String arg0) {
						LogUtil.d(TAG, "角色信息上传失败：" + arg0);

					}
				});
	}

	public void pay(final Context context, HashMap params, final executeCallback callback) {
		this.paycallback = callback;
		this.context = context;
		String price = params.get("price") + "";
		mOrderID = params.get("orderID") + "";
		String productName = params.get("productName") + "";
		if (TextUtils.isEmpty(mOrderID) || TextUtils.isEmpty(productName) || TextUtils.isEmpty(price)) {
			paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT, "pay params error!!!");
		}
		String extrol = params.get("channel_order_info") + "";
		String paycallbackurl = null;
		try {
			paycallbackurl = URLEncoder.encode(
					"http://unitysdkapi.pyw.cn/ChannelPayCallback/paySuccess/53/51d38f119addbba7e2870551e9574419/"
							+ PYWSDKManager.sGameKey + "/"
							+ com.pengyouwan.sdk.utils.AppUtil.getVersionCode(SDKControler.getContext()) + "",
					"UTF-8");
			LogUtil.d(TAG, "paycallbackurl== " + paycallbackurl);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		GameCatSDK.Order((Activity) context, Double.valueOf(price), productName, params.get("channel_order_sn") + "",
				paycallbackurl, extrol);

	}

	public void setExitGame(final Context context, HashMap params, final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
	}

	public void logout(final Context context, HashMap params, executeCallback callback) {
		this.logoutcallback = callback;
		// 朋友玩注销
		// 游戏登出
		GameCatSDK.Logout((Activity) context);
		logoutcallback.onExecutionSuccess(0);

	}

	public void gameExit(final Context context, HashMap params, final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
		// 调起退出界面L
		GameCatSDK.gameLogout((Activity) context);
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
		if (null != PYWPlatform.getCurrentUser()) { // 表示当前登录状态
			FloatViewTool.instance((Activity) context).showFloatView();
		}
	}

	/**
	 * 隐藏浮点
	 */
	public void hideFloatView() {
		FloatViewTool.instance((Activity) context).hideFloatView();
	}

	@Override
	public String getName(Context context) {

		return "yxm";
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
	}

	@Override
	public void onResume(Context context) {
		if (mIsDisplayFloatWindow) {
			GameCatSDK.showFloatWindow((Activity) context);
		}
		if (ActivityLifecycleManager.getInstance().getActivityLifecycleCallbacks() != null) {
			ActivityLifecycleManager.getInstance().getActivityLifecycleCallbacks().onStart();
		}
	}

	@Override
	public void onPause(Context context) {
		if (mIsDisplayFloatWindow) {
			GameCatSDK.hideFloatWindow((Activity) context);
		}
		if (ActivityLifecycleManager.getInstance().getActivityLifecycleCallbacks() != null) {
			ActivityLifecycleManager.getInstance().getActivityLifecycleCallbacks().onPause();
		}
	}

	@Override
	public void onDestroy(Context context) {
		GameCatSDK.unregisterReceiver((Activity) context);
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
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
	}

	private void init() {
		// 隐藏虚拟系统导航栏 NavigationBar
		NavigationBarUtil.hideNavigationBar(context);
		// boolean isLandscape = true; // 是否横屏
		// if (context.getResources().getConfiguration().orientation ==
		// Configuration.ORIENTATION_PORTRAIT) {
		// isLandscape = false;
		// }
		GameCatSDK.setEnvironment((Activity) context, "pengyouwan_juezhanhuangcheng_2", 1, "eW91eGltYW80NzAwMDF4cw==",
				true, "4700001");
		initCallBack();
		GameCatSDK.startFloatWindow((Activity) context, false);
		mIsDisplayFloatWindow = true;
	}

	private void initCallBack() {
		/**
		 * 用户注销接口回调(必须设置)
		 */
		GameCatSDK.sdkCancelListener(new GameCatSDKListener() {
			@Override
			public void onSuccess(final JSONObject message) {
				switchLogin(true);
				closeFloatWindow();
			}

			@Override
			public void onFail(String message) {
				LogUtil.d(TAG, "注销失败：" + message);
			}
		});

		/**
		 * 用户退出游戏接口回调(必须设置)
		 */
		GameCatSDK.setGameLogoutListener(new GameCatSDKListener() {
			@Override
			public void onSuccess(JSONObject message) {
				LogUtil.d(TAG, "退出游戏成功：" + message.toString());
				gameExitcallback.onExecutionSuccess(0);
				closeFloatWindow();
			}

			@Override
			public void onFail(String message) {
				LogUtil.d(TAG, "退出游戏失败：" + message);
				gameExitcallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT, "exit game err :" + message);
				closeFloatWindow();
			}
		});

		/**
		 * 注册监听回调（不要求强制设置，根据需要进行设置）
		 */
		GameCatSDK.setRegisterListener(new GameCatSDKListener() {
			@Override
			public void onSuccess(JSONObject message) {
				// 注册成功
			}

			@Override
			public void onFail(String message) {
				// 注册失败
			}
		});

		/**
		 * 初始化登陆接口回调（不要求强制设置，用于控制登陆按钮可点击状态，防止用户多次点击）
		 * 注意：如果点击登陆是把登陆按钮置为不可点击，则必须注册该接口用于恢复登陆按钮点击状态
		 * 如果不想控制登陆按钮状态，也即点击登陆按钮时没有把按钮置为不可点击，就无需注册该接口
		 */
		GameCatSDK.setInitLoginListener(new GameCatSDKListener() {
			@Override
			public void onSuccess(JSONObject message) {
			}

			@Override
			public void onFail(String message) {
			}
		});

		/**
		 * 支付回调接口（不要求强制设置，根据需要进行设置）
		 */
		GameCatSDK.setGamePayListener(new GameCatSDKListener() {
			@Override
			public void onSuccess(JSONObject message) {
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
			public void onFail(String message) {
				if (paycallback != null) {
					paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT, "pay error  =" + message);
				}
			}
		});
	}

	private void closeFloatWindow() {
		if (mIsDisplayFloatWindow) {
			GameCatSDK.stopFloatWindow((Activity) context);
			mIsDisplayFloatWindow = false;
		}
	}

	private void switchLogin(boolean isSwitchLogin) {
		// 调起登录界面
		GameCatSDK.Login((Activity) context, isSwitchLogin, isShowSplash, GamecatsdkConstant.SPLASH_BLACK,
				new GameCatSDKListener() {
					@Override
					public void onSuccess(JSONObject message) {
						try {
							GameCatSDK.startFloatWindow((Activity) context, false);
							mIsDisplayFloatWindow = true;

							// 用户 openId,用户唯一标识
							String openId = message.getString("openId");
							// 秘钥
							String token = message.getString("token");

							UserParams userParams = new UserParams();
							userParams.setToken(token);
							userParams.setSdkUserID(openId);
							userParams.setSuc(true);
							logincallback.onExecutionSuccess(userParams);
						} catch (JSONException e) {
							e.printStackTrace();
						}
						GameCatSDK.startFloatWindow((Activity) context, false);
					}

					@Override
					public void onFail(String message) {
						logincallback.onExecutionFailure(0, "登录失败。");
					}
				});
		// isShowSplash = false;
	}
}
