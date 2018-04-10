package com.pyw.plugin.syhh;

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
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;
import com.sboran.game.sdk.SDKCallBackListener;
import com.sboran.game.sdk.SDKCallbackListenerNullException;
import com.sboran.game.sdk.SDKStatusCode;
import com.sboran.game.sdk.SboranOrientation;
import com.sboran.game.sdk.SboranSdkSetting;
import com.sboran.game.sdk.SdkManager;
import com.sboran.game.sdk.data.bean.GameRoleInfo;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.Log;

/**
 * 鲨游YX13渠道--同zhiyou渠道一致 渠道号:49
 * 
 * @author zhj
 * 
 */
public class SYYX13Channel extends PYWPlugin {
	public static final String TAG = "JJYChannel";
	private String uid;
	private String mOrderID, serverId, roleId, roleName;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, playerInfocallback, paycallback,
			gameExitcallback, logoutcallback, logincall;
	private Context context;
	private boolean isFirst = true;
	private static final String CHANNLE_UID = "channel_uid_is_null";

	@Override
	public void onCreate(Context context) {
		this.context = context;
	}

	public void init(final Context context, HashMap params,
			executeCallback callback) {
		this.context = context;
		this.initcallback = callback;
		initSDK((Activity) context);

	}

	public void getRoleMessage(Context context, HashMap params,
			final executeCallback callback) {

		GameRoleInfo gameRoleInfo = new GameRoleInfo();
		// 游戏服务器id,类型：String
		serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? ""
				: params.get("serverArea") + "";
		roleId = TextUtils.isEmpty(params.get("roleid") + "") ? "" : params
				.get("roleid") + "";
		roleName = TextUtils.isEmpty(params.get("roleName") + "") ? "" : params
				.get("roleName") + "";
		gameRoleInfo.setServerId(TextUtils.isEmpty(params.get("serverArea")
				+ "") ? "" : params.get("serverArea") + "");
		// 游戏服务器名称(游戏内真实服务器名称),类型：String
		gameRoleInfo.setServerName(TextUtils.isEmpty(params
				.get("serverAreaName") + "") ? "" : params
				.get("serverAreaName") + "");
		// 玩家角色ID,类型：String
		gameRoleInfo
				.setRoleId(TextUtils.isEmpty(params.get("roleid") + "") ? ""
						: params.get("roleid") + "");
		// 玩家角色名称,类型：String
		gameRoleInfo
				.setRoleName(TextUtils.isEmpty(params.get("roleName") + "") ? ""
						: params.get("roleName") + "");
		// 玩家角色等级,类型：String
		gameRoleInfo.setRoleLevel(TextUtils.isEmpty(params.get("roleLevel")
				+ "") ? "" : params.get("roleLevel") + "");
		// 游戏角色创建时间（单元：秒），类型：long
		gameRoleInfo.setRoleCTime((System.currentTimeMillis()) / 1000);
		try {
			SdkManager.defaultSDK().reportGameRole((Activity) context,
					gameRoleInfo, new SDKCallBackListener() {

						@Override
						public void callBack(int code, String msg) {
							switch (code) {
							case SDKStatusCode.GAME_ROLE_SUCCESS:
								callback.onExecutionSuccess(null);

								break;
							case SDKStatusCode.GAME_ROLE_FAIL:
								callback.onExecutionFailure(code, msg);
								break;
							}
						}
					});
		} catch (SDKCallbackListenerNullException e) {
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

		try {
			SdkManager.defaultSDK().login((Activity) context,
					new SDKCallBackListener() {

						@Override
						public void callBack(int code, String msg) {

							switch (code) {
							case SDKStatusCode.LOGIN_SUCCESS:
								try {
									JSONObject js = new JSONObject(msg);
									UserParams user = new UserParams();
									user.setToken(js.getString("sid") + "");
									user.setSdkUserID(CHANNLE_UID);
									logincall.onExecutionSuccess(user);
									SdkManager.defaultSDK().showFloatingButton(
											(Activity) context);
									isFirst = false;
								} catch (JSONException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
									logincall.onExecutionFailure(code, "登录失败");
								}
								break;
							case SDKStatusCode.LOGIN_CANCEL:
								// 取消登录
								logincall.onExecutionFailure(code, "取消登录");
								break;
							default:
								// 登录错误，判断相关信息
								logincall.onExecutionFailure(code, msg);
								break;
							}
						}
					});
		} catch (SDKCallbackListenerNullException e) {
			e.printStackTrace();
			logincall.onExecutionFailure(1, e.toString());
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

		String productName = params.get("productName") + "";
		String extrol = params.get("channel_order_info") + "";
		try {
			SdkManager.defaultSDK().pay((Activity) context,
					Float.valueOf(price), productName, serverId, roleId,
					roleName, extrol, new SDKCallBackListener() {

						@Override
						public void callBack(int code, String msg) {
							switch (code) {
							case SDKStatusCode.PAY_SUCCESS:
								// 支付成功
								PayResult payResult = new PayResult();
								payResult.setExtension("支付成功");
								payResult.setOrderID(mOrderID);
								payResult.setPayResult(true);
								PluginPayResult pluginPayResult = new PluginPayResult();
								pluginPayResult
										.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
								pluginPayResult.setPayResult(payResult);
								paycallback.onExecutionSuccess(pluginPayResult);
								break;
							case SDKStatusCode.PAY_ERROR:
								paycallback.onExecutionFailure(code, msg);
								break;
							case SDKStatusCode.PAY_CANCEL:
								paycallback.onExecutionFailure(code, "取消支付");
								break;
							}
						}
					});
		} catch (NumberFormatException e) {
			e.printStackTrace();
			paycallback.onExecutionFailure(1, "支付异常");
		} catch (SDKCallbackListenerNullException e) {
			e.printStackTrace();
			paycallback.onExecutionFailure(1, "支付异常");
		}
	}

	public void setCallback(Context context, Callback callback) {
		this.context = context;
		this.sdklogoutcallback = callback;

	}

	public void logout(Context context, HashMap params, executeCallback callback) {
		this.logoutcallback = callback;
		// SdkManager.defaultSDK().setOnLogoutListener(new SDKCallBackListener()
		// {
		//
		// @Override
		// public void callBack(int arg0, String arg1) {
		// // TODO Auto-generated method stub
		// logoutcallback.onExecutionSuccess(null);
		// }
		// });
	}

	public void gameExit(final Context context, HashMap params,
			final executeCallback callback) {
		gameExitcallback = callback;
		this.context = context;
		SdkManager.defaultSDK().exitGame((Activity) context,
				new SDKCallBackListener() {

					@Override
					public void callBack(int code, String msg) {
						switch (code) {
						case SDKStatusCode.GAME_EXIT_SUCCESS:
							gameExitcallback.onExecutionSuccess(0);
							System.exit(0);
							break;
						case SDKStatusCode.GAME_EXIT_UNTREATED:
							// SDK没有处理退出，游戏可以直接finish()或者用自己的退出dialog
							gameExitcallback.onExecutionSuccess(0);
							System.exit(0);
							break;
						case SDKStatusCode.GAME_EXIT_CANCEL:
							// 取消退出
							break;
						}
					}
				});

	}

	public void showFloatView(Context context, HashMap params,
			executeCallback callback) {
	}

	public void hideFloatView(Context context, HashMap params,
			executeCallback callback) {
	}

	public String getName(Context context) {
		return "syyx13";
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
		SdkManager.defaultSDK().onPause((Activity) context);
	}

	@Override
	public void onResume(Context context) {
		if (isFirst) {
			if (context instanceof Activity)
			SdkManager.defaultSDK().showFloatingButton((Activity) context);
		}
		isFirst = false;
		if (context instanceof Activity)
		SdkManager.defaultSDK().onResume((Activity) context);
	}

	@Override
	public void onDestroy(Context context) {
		if (context instanceof Activity)
		SdkManager.defaultSDK().onDestroy((Activity) context);
	}

	@Override
	public void onRestart(Context context) {
		if (context instanceof Activity)
		SdkManager.defaultSDK().onRestart((Activity) context);
	}

	@Override
	public void onStart(Context context) {
		if (context instanceof Activity)
		SdkManager.defaultSDK().onStart((Activity) context);
	}

	@Override
	public void onNewIntent(Intent intent) {
		if (context != null) {
			if (context instanceof Activity)
				SdkManager.defaultSDK().onNewIntent((Activity) context, intent);
		}
	}

	@Override
	public void onConfigurationChanged(Configuration newConfig) {
	}

	@Override
	public void onStop(Context context) {
		SdkManager.defaultSDK().hideFloatingButton();
		if (context instanceof Activity)
		SdkManager.defaultSDK().onStop((Activity) context);

	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		SdkManager.defaultSDK().onActivityResult(requestCode, resultCode, data);
	}
	// 初始化游戏SDK
	private void initSDK(Activity act) {
		try {
			// app_id=fbee0d4d2b8f79a5823947f30bc423c4
			// app_key=37362d36bc3ddf48530c330fabb6f2a7
			// server_key=a1be03208830fc52284106636bdb7c7c
			SboranSdkSetting zySdkSetting = new SboranSdkSetting();
			// 设置APPID
			zySdkSetting.setAppid("fbee0d4d2b8f79a5823947f30bc423c4");

			// 设置APPKEY
			zySdkSetting.setAppkey("37362d36bc3ddf48530c330fabb6f2a7");

			// 设置SDK 调试模式是否开启
			// 设置true表示目前在测试环境中，正式上线时请修改为false
			zySdkSetting.setDEBUG(false);

			// ZyOrientation.PORTRAIT 竖屏
			// ZyOrientation.LANDSCAPE 横屏 0
			zySdkSetting.setOrientation(SboranOrientation.PORTRAIT);

			SdkManager.defaultSDK().initSDK(act, zySdkSetting,
					new SDKCallBackListener() {
						@Override
						public void callBack(int code, String msg) {
							switch (code) {
							case SDKStatusCode.INIT_SUCC:
								// 初始化成功
								initcallback.onExecutionSuccess(null);
								break;
							case SDKStatusCode.INIT_FAIL:
								// 初始化失败
								initcallback.onExecutionFailure(code, msg);
								break;
							default:
								// 初始化失败（其它错误）
								initcallback.onExecutionFailure(code, msg);
								break;
							}
						}
					});
		} catch (SDKCallbackListenerNullException e) {
			e.printStackTrace();
		}
		SdkManager.defaultSDK().setOnLogoutListener(new SDKCallBackListener() {

			@Override
			public void callBack(int arg0, String arg1) {
				// TODO Auto-generated method stub
				((Activity) context).runOnUiThread(new Runnable() {

					@Override
					public void run() {
						// TODO Auto-generated method stub
						sdklogoutcallback.onCallback(null);
					}
				});

			}
		});

	}

}
