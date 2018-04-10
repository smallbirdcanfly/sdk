package com.pyw.plugin.huosdk;

import java.net.URLEncoder;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

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
import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.ui.dialog.LoginDialog;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.KeyCodes;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

/*
 * game_key :1ab4bf0d  渠道号：76  渠道名称： 213PK
 * 注意：需要将 comdragonstarsdkplugin.bin 放到assets下面
 * @author pengpx
 */
public class HuosdkPlugin extends PYWPlugin {

	private Context context;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, paycallback, logincallback,
			logoutcallback, gameExitcallback;
	private String mOrderID, serverId;
	private HuosdkManager sdkManager;

	@Override
	public void onCreate(Context context) {

		sdkManager = HuosdkManager.getInstance();
		// 设置是否使用直接登陆,true为使用：第一次调用登陆时自动生成一个账号登陆
		sdkManager.setDirectLogin(false);
		sdkManager.setFloatInitXY(500, 200);
	}

	public void init(Context context, final HashMap params,
			executeCallback callback) {
		this.initcallback = callback;
		this.context = context;

		sdkManager.initSdk(context, new OnInitSdkListener() {
			@Override
			public void initSuccess(String code, String msg) {
				LogUtil.d("HuoSDK--onInitSuccess---->>" + "code:" + code
						+ "\nmsg:" + msg);
				if (null != initcallback) {
					initcallback.onExecutionSuccess(null);
				}
			}

			@Override
			public void initError(String code, String msg) {
				LogUtil.d("HuoSDK--initError---->>" + "code:" + code + "\nmsg:"
						+ msg);
				if (null != initcallback) {
					initcallback.onExecutionFailure(0, msg);
				}
			}
		});
	}

	public void getRoleMessage(final Context context, HashMap params,
			final executeCallback callback) {

		serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? ""
				: (params.get("serverArea") + "");
		String roleid = TextUtils.isEmpty(params.get("roleid") + "") ? ""
				: (params.get("roleid") + "");
		String roleLevel = TextUtils.isEmpty(params.get("roleLevel") + "") ? ""
				: (params.get("roleLevel") + "");
		int role_level = 0;
		try {
			role_level = Integer.parseInt(roleLevel);
		} catch (Exception e) {
			role_level = 0;
		}
		String roleName = TextUtils.isEmpty(params.get("roleName") + "") ? ""
				: (params.get("roleName") + "");
		String serverAreaName = TextUtils.isEmpty(params.get("serverAreaName")
				+ "") ? "" : (params.get("serverAreaName") + "");
		RoleInfo roleInfo = new RoleInfo();
		roleInfo.setParty_name("");
		roleInfo.setRole_balence(0f);
		roleInfo.setRole_id(roleid);
		roleInfo.setRole_level(role_level);
		roleInfo.setRole_name(roleName);
		roleInfo.setRole_vip(0);
		roleInfo.setServer_id(serverId);
		roleInfo.setServer_name(serverAreaName);
		roleInfo.setRole_type(1);
		roleInfo.setRolelevel_ctime("" + System.currentTimeMillis() / 1000);
		roleInfo.setRolelevel_mtime("" + System.currentTimeMillis() / 1000);

		LogUtil.d("HuoSDK--setRoleInfo---->>" + "roleInfo:"
				+ roleInfo.toString());
		sdkManager.setRoleInfo(roleInfo, new SubmitRoleInfoCallBack() {
			@Override
			public void submitSuccess() {
				LogUtil.d("HuoSDK--submitSuccess---->>");
			}

			@Override
			public void submitFail(String msg) {
				LogUtil.d("HuoSDK--submitFail---->>" + "msg:" + msg);
			}
		});

	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;

		sdkManager.showLogin(true);
		LogUtil.d("HuoSDK--showLogin---->>");

		// 添加sdk登陆监听,包含正常登陆，切换账号登陆，登陆过期后重新登陆
		sdkManager.addLoginListener(new OnLoginListener() {
			@Override
			public void loginSuccess(LogincallBack logincBack) {
				LogUtil.d("HuoSDK--loginSuccess---->>" + "登陆成功 memId="
						+ logincBack.mem_id + "  token="
						+ logincBack.user_token);
				// 一般登陆成功后需要显示浮点
				sdkManager.showFloatView();
				UserParams userParams = new UserParams();
				userParams.setToken(logincBack.user_token);
				userParams.setSdkUserID(logincBack.mem_id);
				userParams.setSuc(true);
				logincallback.onExecutionSuccess(userParams);
			}

			@Override
			public void loginError(LoginErrorMsg loginErrorMsg) {
				LogUtil.d("HuoSDK--loginError---->>" + " code="
						+ loginErrorMsg.code + "  msg=" + loginErrorMsg.msg);
				logincallback.onExecutionFailure(0, "登陆失败 :"
						+ loginErrorMsg.msg);
			}
		});
	}

	public void setExitGame(final Context context, HashMap params,
			final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
	}

	@SuppressWarnings("deprecation")
	public void pay(final Context context, HashMap params,
			final executeCallback callback) {
		this.paycallback = callback;
		this.context = context;
		String productName = params.get("productName") + "";
		 mOrderID = params.get("orderId") + "";
		String amount = ((Integer) params.get("price")) + "";

		String channel_order_sn = params.get("channel_order_sn") + "";
		String channel_prod_id = params.get("channel_prod_id") + "";

		String extrol = params.get("channel_order_info") + "";
		String game_key = PYWSDKManager.sGameKey;
		String game_version_code = com.pengyouwan.sdk.utils.AppUtil
				.getVersionCode(SDKControler.getContext()) + "";
		LogUtil.d("YXSDK--game_key---->>" + game_key);

//		JSONObject jobj = new JSONObject();
//		try {
//
//			// 以下为非必要参数，只供参考，厂商可根据自身需求决定传什么参数与值或者不传
//			jobj.put("gamekey", PYWSDKManager.sGameKey);
//			jobj.put("game_version_code", game_version_code);
//			extrol = URLEncoder.encode(jobj.toString());
//		} catch (JSONException e) {
//			e.printStackTrace();
//		}

		LogUtil.d("YXSDK--extrol---->>" + extrol);
		HashMap<String, Object> data = (HashMap<String, Object>) params
				.get("nameValuePairs");
		int rate = (Integer) data.get("rate");

		CustomPayParam customPayParam = new CustomPayParam();
		customPayParam.setCp_order_id(channel_order_sn);
		customPayParam.setProduct_price(Float.parseFloat(amount));
		customPayParam.setProduct_count(1);
		customPayParam.setProduct_id(channel_prod_id);
		customPayParam.setProduct_name(productName);
		customPayParam.setProduct_desc(productName);
		customPayParam.setExchange_rate(rate);
		customPayParam.setCurrency_name("金币");
		customPayParam.setExt(extrol);

		// 角色
		serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? ""
				: (params.get("serverArea") + "");
		String roleid = TextUtils.isEmpty(params.get("roleid") + "") ? ""
				: (params.get("roleid") + "");
		String roleLevel = TextUtils.isEmpty(params.get("roleLevel") + "") ? ""
				: (params.get("roleLevel") + "");
		int role_level = 0;
		try {
			role_level = Integer.parseInt(roleLevel);
		} catch (Exception e) {
			role_level = 0;
		}
		String roleName = TextUtils.isEmpty(params.get("roleName") + "") ? ""
				: (params.get("roleName") + "");
		String serverAreaName = TextUtils.isEmpty(params.get("serverAreaName")
				+ "") ? "" : (params.get("serverAreaName") + "");
		RoleInfo roleInfo = new RoleInfo();
		roleInfo.setParty_name("");
		roleInfo.setRole_balence(0f);
		roleInfo.setRole_id(roleid);
		roleInfo.setRole_level(role_level);
		roleInfo.setRole_name(roleName);
		roleInfo.setRole_vip(0);
		roleInfo.setServer_id(serverId);
		roleInfo.setServer_name(serverAreaName);
		roleInfo.setRole_type(1);
		roleInfo.setRolelevel_ctime("" + System.currentTimeMillis() / 1000);
		roleInfo.setRolelevel_mtime("" + System.currentTimeMillis() / 1000);

		customPayParam.setRoleinfo(roleInfo);
		sdkManager.showPay(customPayParam, new OnPaymentListener() {
			@Override
			public void paymentSuccess(PaymentCallbackInfo callbackInfo) {
				double money = callbackInfo.money;
				LogUtil.d("HuoSDK--paymentSuccess---->>" + "-msg:"
						+ callbackInfo.msg);
				PayResult payResult = new PayResult();
				payResult.setExtension("支付成功");
				payResult.setOrderID(mOrderID);
				payResult.setPayResult(true);
				PluginPayResult pluginPayResult = new PluginPayResult();
				pluginPayResult.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
				pluginPayResult.setPayResult(payResult);
				paycallback.onExecutionSuccess(pluginPayResult);
			}

			@Override
			public void paymentError(PaymentErrorMsg errorMsg) {
				// TODO Auto-generated method stub
				int code = errorMsg.code;
				double money = errorMsg.money;
				String msg = errorMsg.msg;

				if (code == -2) { // 用户取消支付
					LogUtil.d("HuoSDK--paymentError---->>" + "-code:" + code
							+ "-msg:" + msg);
					paycallback.onExecutionFailure(code, "pay error  =" + msg);
				} else { // 支付失败
					LogUtil.d("HuoSDK--paymentError---->>" + "-code:" + code
							+ "-msg:" + msg);
					paycallback.onExecutionFailure(code, "pay error  =" + msg);
				}
			}
		});
	}

	public void logout(final Context context, HashMap params,
			executeCallback callback) {
		this.logoutcallback = callback;

		LogUtil.d("HuoSDK--logout---->>");
		sdkManager.addLogoutListener(new OnLogoutListener() {
			@Override
			public void logoutSuccess(int type, String code, String msg) {
				LogUtil.d("HuoSDK--logoutSuccess---->>" + "登出成功，类型type=" + type
						+ " code=" + code + " msg=" + msg);
				if (logoutcallback != null) {
					logoutcallback.onExecutionSuccess(0);
				}
				if (type == OnLogoutListener.TYPE_NORMAL_LOGOUT) {// 正常退出成功
					// Toast.makeText(MainActivity.this,"退出成功",Toast.LENGTH_SHORT).show();
				}
				if (type == OnLogoutListener.TYPE_SWITCH_ACCOUNT) {// 切换账号退出成功
					// 游戏此时可跳转到登陆页面，让用户进行切换账号
					// Toast.makeText(MainActivity.this,"退出登陆",Toast.LENGTH_SHORT).show();
				}
				if (type == OnLogoutListener.TYPE_TOKEN_INVALID) {// 登陆过期退出成功
					// 游戏此时可跳转到登陆页面，让用户进行重新登陆
					sdkManager.showLogin(true);
				}
			}

			@Override
			public void logoutError(int type, String code, String msg) {
				LogUtil.d("HuoSDK--logoutError---->>" + "登出失败，类型type=" + type
						+ " code=" + code + " msg=" + msg);
				int returncode = 0;
				try {
					returncode = Integer.parseInt(code);
				} catch (Exception e) {
					returncode = 0;
				}
				if (logoutcallback != null) {
					logoutcallback.onExecutionFailure(returncode, msg);
				}
				if (type == OnLogoutListener.TYPE_NORMAL_LOGOUT) {// 正常退出失败

				}
				if (type == OnLogoutListener.TYPE_SWITCH_ACCOUNT) {// 切换账号退出失败

				}
				if (type == OnLogoutListener.TYPE_TOKEN_INVALID) {// 登陆过期退出失败

				}
			}
		});

		sdkManager.logout();

	}

	public void gameExit(final Context context, HashMap params,
			final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
		LogUtil.d("HuoSDK--gameExit---->>");
		sdkManager.recycle();
		if (gameExitcallback != null) {
			gameExitcallback.onExecutionSuccess(0);
		}
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
		return "HUOSDK";
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
	public void onStop(Context context) {

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
