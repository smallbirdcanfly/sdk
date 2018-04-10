package com.pyw.plugin.ylyx;

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

import com.game.sdk.HuosdkManager;
import com.game.sdk.domain.CustomPayParam;
import com.game.sdk.domain.LoginErrorMsg;
import com.game.sdk.domain.LogincallBack;
import com.game.sdk.domain.PaymentCallbackInfo;
import com.game.sdk.domain.PaymentErrorMsg;
import com.game.sdk.domain.RoleInfo;
import com.game.sdk.domain.SubmitRoleInfoCallBack;
import com.game.sdk.listener.OnInitSdkListener;
import com.game.sdk.listener.OnLoginListener;
import com.game.sdk.listener.OnLogoutListener;
import com.game.sdk.listener.OnPaymentListener;
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
 * 16遊戲渠道
 * 渠道號碼：57
 * @author zhj
 *
 */
public class YLYXChannel extends PYWPlugin {
	public static final String TAG = "YLYXChannel";
	private String uid, sid;
	private String mOrderID, serverId, roleId, roleName;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, playerInfocallback, paycallback, gameExitcallback, logoutcallback, logincall;
	private Context context;
	private HuosdkManager sdkManager;

	@Override
	public void onCreate(Context context) {
		this.context = context;
	}

	public void init(final Context context, HashMap params, executeCallback callback) {
		this.context = context;
		this.initcallback = callback;
		sdkManager = HuosdkManager.getInstance();
		sdkManager.setDirectLogin(false);
		sdkManager.setFloatInitXY(500, 200);
		// sdk初始化
		sdkManager.initSdk((Activity) context, new OnInitSdkListener() {
			@Override
			public void initSuccess(String code, String msg) {
				if (initcallback != null)
					initcallback.onExecutionSuccess(null);
			}

			@Override
			public void initError(String code, String msg) {
				if (initcallback != null)
					initcallback.onExecutionFailure(1, msg);
			}
		});
		sdkManager.addLoginListener(new OnLoginListener() {
			@Override
			public void loginSuccess(LogincallBack logincBack) {
				if (logincall == null)
					return;
				String uid = logincBack.mem_id;// 登录用户id
				String token = logincBack.user_token;
				final UserParams userParams = new UserParams();
				userParams.setSdkUserID(uid);
				userParams.setToken(token);
				userParams.setSuc(true);
				logincall.onExecutionSuccess(userParams);
				// 一般登陆成功后需要显示浮点
				sdkManager.showFloatView();
			}

			@Override
			public void loginError(LoginErrorMsg loginErrorMsg) {
				if (logincall == null)
					return;
				logincall.onExecutionFailure(0, loginErrorMsg.msg);
			}
		});

		sdkManager.addLogoutListener(new OnLogoutListener() {
			@Override
			public void logoutSuccess(int type, String code, String msg) {
				if (logoutcallback == null)
					return;
				if (type == OnLogoutListener.TYPE_NORMAL_LOGOUT) {// 正常退出成功
					logoutcallback.onExecutionSuccess(0);
				}
				if (type == OnLogoutListener.TYPE_SWITCH_ACCOUNT) {// 切换账号退出成功
					// 游戏此时可跳转到登陆页面，让用户进行切换账号
					sdklogoutcallback.onCallback(null);

				}
				if (type == OnLogoutListener.TYPE_TOKEN_INVALID) {// 登陆过期退出成功
					// 游戏此时可跳转到登陆页面，让用户进行重新登陆
					sdkManager.showLogin(true);
				}
			}

			@Override
			public void logoutError(int type, String code, String msg) {
				if (logoutcallback != null)
					logoutcallback.onExecutionSuccess(1);
			}
		});
	}

	public void getRoleMessage(Context context, HashMap params, final executeCallback callback) {
		String str = params.get("roleCreateTime") + "";
		long time = 0;
		if (!TextUtils.isEmpty(str) && str.matches("[0-9]+")) {
			time = Long.parseLong(str);
		}
		sid = TextUtils.isEmpty(params.get("serverArea") + "") ? "1" : params.get("serverArea") + "";
		String level = (TextUtils.isEmpty(params.get("roleLevel") + "") ? "" : params.get("roleLevel")) + "";

		RoleInfo data = new RoleInfo();
		data.setRole_name(TextUtils.isEmpty(params.get("roleName") + "") ? "" : params.get("roleName") + "");
		data.setRole_id(TextUtils.isEmpty(params.get("roleid") + "") ? "" : params.get("roleid") + "");
		data.setRole_level(Integer.valueOf(level));
		data.setServer_name(
				TextUtils.isEmpty(params.get("serverAreaName") + "") ? "" : params.get("serverAreaName") + "");

		data.setRolelevel_ctime(time + "");
		data.setRolelevel_mtime("");
		data.setServer_id(sid);
		data.setRole_balence((float) 0);
		data.setParty_name("");
		data.setRole_type(5);
		data.setRole_vip(0);
		sdkManager.setRoleInfo(data, new SubmitRoleInfoCallBack() {

			@Override
			public void submitSuccess() {

			}

			@Override
			public void submitFail(String arg0) {
			}
		});
	}

	public void setExitGame(final Context context, HashMap params, final executeCallback callback) {
		this.context = context;
		gameExitcallback = callback;
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincall = callback;
		this.context = context;
		sdkManager.showLogin(true);
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

		String productName = params.get("productName") + "";
		String extrol = params.get("channel_order_info") + "";
//		JSONObject jobj = new JSONObject();
//		try {
//
//			// 以下为非必要参数，只供参考，厂商可根据自身需求决定传什么参数与值或者不传
//			jobj.put("gamekey", PYWSDKManager.sGameKey);
//			jobj.put("game_version_code", AppUtil.getVersionCode(SDKControler.getContext()) + "");
//			extrol = URLEncoder.encode(jobj.toString());
//		} catch (JSONException e) {
//			e.printStackTrace();
//		}
		CustomPayParam customPayParam = new CustomPayParam();
		RoleInfo data = new RoleInfo();
		customPayParam.setCp_order_id(params.get("channel_order_sn") + "");
		customPayParam.setProduct_count(1);
		customPayParam.setProduct_price(Float.valueOf(price));
		customPayParam.setProduct_name(productName);
		customPayParam.setProduct_id(productName);
		customPayParam.setProduct_desc(productName);
		customPayParam.setExchange_rate(0);
		customPayParam.setCurrency_name("");
		customPayParam.setExt(extrol);

		data.setRolelevel_ctime("");
		data.setRolelevel_mtime("");
		data.setServer_id(sid);
		data.setRole_balence((float) 0);
		data.setParty_name("");
		data.setRole_type(5);
		data.setRole_vip(0);
		data.setRole_name(TextUtils.isEmpty(params.get("roleName") + "") ? "" : params.get("roleName") + "");
		data.setRole_id(TextUtils.isEmpty(params.get("roleid") + "") ? "" : params.get("roleid") + "");
		data.setRole_level(15);
		data.setServer_name(
				TextUtils.isEmpty(params.get("serverAreaName") + "") ? "" : params.get("serverAreaName") + "");

		customPayParam.setRoleinfo(data);
		sdkManager.showPay(customPayParam, new OnPaymentListener() {

			@Override
			public void paymentSuccess(PaymentCallbackInfo arg0) {
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
			}

			@Override
			public void paymentError(PaymentErrorMsg arg0) {
				paycallback.onExecutionFailure(1, mOrderID);
			}
		});
	}

	public void setCallback(Context context, Callback callback) {
		this.context = context;
		this.sdklogoutcallback = callback;
	}

	public void logout(Context context, HashMap params, executeCallback callback) {
		this.logoutcallback = callback;
		sdkManager.logout();
	}

	public void gameExit(final Context context, HashMap params, final executeCallback callback) {
		gameExitcallback = callback;
		this.context = context;
		if (gameExitcallback != null)
			gameExitcallback.onExecutionSuccess(0);

	}

	public void showFloatView(Context context, HashMap params, executeCallback callback) {
	}

	public void hideFloatView(Context context, HashMap params, executeCallback callback) {
	}

	public String getName(Context context) {
		return "ylyx";
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
		if (sdkManager != null) {
			sdkManager.showFloatView();
		}
	}

	@Override
	public void onDestroy(Context context) {
		if (sdkManager != null) {
			sdkManager.recycle();
		}

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
		if (sdkManager != null) {
			sdkManager.removeFloatView();
		}
	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
	}

}
