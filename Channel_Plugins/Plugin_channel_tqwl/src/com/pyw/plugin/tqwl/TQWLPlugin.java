package com.pyw.plugin.tqwl;

import java.net.URLEncoder;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;

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
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.KeyCodes;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

/**
 * 
 * game_key: 020986b2 渠道号： 96 渠道名称：天勤网络
 * 
 * @author zhouq
 * 
 */
public class TQWLPlugin extends PYWPlugin {

	private static final String TAG = "TQWLPlugin";

	private Context context;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, paycallback, logincallback,
			logoutcallback, gameExitcallback;
	private String mOrderID;
	private String serverId, serverAreaName, roleid, roleName, roleLevel;
	private long createTime = 0;
	HuosdkManager sdkManager;

	@Override
	public void onCreate(Context context) {
	}

	public void init(final Context context, final HashMap params,
			executeCallback callback) {
		this.initcallback = callback;
		this.context = context;

		sdkManager = HuosdkManager.getInstance();
		// 设置是否使用直接登陆,true为使用：第一次调用登陆时自动生成一个账号登陆
		sdkManager.setDirectLogin(false);
		sdkManager.setFloatInitXY(500, 200);

		initSDKListener();
	}

	private void initSDKListener() {
		// sdk初始化
		sdkManager.initSdk(context, new OnInitSdkListener() {
			@Override
			public void initSuccess(String code, String msg) {
				if (null != initcallback) {
					initcallback.onExecutionSuccess(null);
				}
			}

			@Override
			public void initError(String code, String msg) {
			}
		});
		// 添加sdk登陆监听,包含正常登陆，切换账号登陆，登陆过期后重新登陆
		sdkManager.addLoginListener(new OnLoginListener() {
			@Override
			public void loginSuccess(LogincallBack logincBack) {
				// 一般登陆成功后需要显示浮点
				sdkManager.showFloatView();
				String token = logincBack.user_token;
				String userid = logincBack.mem_id + "";
				UserParams userParams = new UserParams();
				userParams.setToken(token);
				userParams.setSdkUserID(userid);
				userParams.setSuc(true);
				logincallback.onExecutionSuccess(userParams);

			}

			@Override
			public void loginError(LoginErrorMsg loginErrorMsg) {
				logincallback.onExecutionFailure(loginErrorMsg.code, "登陆失败 :"
						+ loginErrorMsg.msg);
			}
		});
		sdkManager.addLogoutListener(new OnLogoutListener() {
			@Override
			public void logoutSuccess(int type, String code, String msg) {
				LogUtil.d(TAG,"登出成功，类型type="+type+" code="+code+" msg="+msg);
				if (type == OnLogoutListener.TYPE_NORMAL_LOGOUT) {// 正常退出成功
					logoutcallback.onExecutionSuccess(0);
				}
				if (type == OnLogoutListener.TYPE_SWITCH_ACCOUNT) {// 切换账号退出成功
					// 游戏此时可跳转到登陆页面，让用户进行切换账号
					if (sdklogoutcallback != null) {
						sdklogoutcallback.onCallback(null);
					}

				}
				if (type == OnLogoutListener.TYPE_TOKEN_INVALID) {// 登陆过期退出成功
					// 游戏此时可跳转到登陆页面，让用户进行重新登陆
					sdkManager.showLogin(true);
				}
			}

			@Override
			public void logoutError(int type, String code, String msg) {
				if (type == OnLogoutListener.TYPE_NORMAL_LOGOUT) {// 正常退出失败

				}
				if (type == OnLogoutListener.TYPE_SWITCH_ACCOUNT) {// 切换账号退出失败

				}
				if (type == OnLogoutListener.TYPE_TOKEN_INVALID) {// 登陆过期退出失败

				}
			}
		});
	}

	public void getRoleMessage(final Context context, HashMap params,
			final executeCallback callback) {

		roleid = TextUtils.isEmpty(params.get("roleid") + "") ? "" : params
				.get("roleid") + "";
		roleName = TextUtils.isEmpty(params.get("roleName") + "") ? "" : params
				.get("roleName") + "";
		roleLevel = TextUtils.isEmpty(params.get("roleLevel") + "") ? ""
				: params.get("roleLevel") + "";
		serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? ""
				: params.get("serverArea") + "";
		serverAreaName = TextUtils.isEmpty(params.get("serverAreaName") + "") ? ""
				: params.get("serverAreaName") + "";

		String str = params.get("roleCreateTime") + "";
		if (!TextUtils.isEmpty(str) && str.matches("[0-9]+")) {
			createTime = Long.parseLong(str);
		}

		RoleInfo roleInfo = initRoleInfo();

		sdkManager.setRoleInfo(roleInfo, new SubmitRoleInfoCallBack() {

			@Override
			public void submitSuccess() {
				LogUtil.d(TAG, "上传区服角色信息成功");
			}

			@Override
			public void submitFail(String arg0) {
				LogUtil.d(TAG, "上传区服角色信息失败" + arg0);
			}
		});
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;
		sdkManager.showLogin(true);
	}

	public void setExitGame(final Context context, HashMap params,
			final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;

	}

	public void pay(final Context context, HashMap params,
			final executeCallback callback) {
		this.paycallback = callback;
		this.context = context;
		String productName = params.get("productName") + "";
		mOrderID = params.get("orderID") + "";
		String price = (Integer) params.get("price") + "";
		String extrol = params.get("channel_order_info") + "";

		CustomPayParam payParam = new CustomPayParam();
		payParam.setCp_order_id(params.get("channel_order_sn") + "");
		payParam.setProduct_price(Float.parseFloat(price));
		payParam.setProduct_count(1);
		payParam.setProduct_id("1");
		payParam.setProduct_name(productName);
		payParam.setProduct_desc(productName);
		// payParam.setExchange_rate(0);
		payParam.setCurrency_name("");
		payParam.setExt(extrol);
		payParam.setRoleinfo(initRoleInfo());

		sdkManager.showPay(payParam, new OnPaymentListener() {

			@Override
			public void paymentSuccess(PaymentCallbackInfo arg0) {
				if (paycallback != null) {
					PayResult payResult = new PayResult();
					payResult.setExtension("支付成功");
					payResult.setOrderID(mOrderID);
					payResult.setPayResult(true);
					PluginPayResult pluginPayResult = new PluginPayResult();
					pluginPayResult
							.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
					pluginPayResult.setPayResult(payResult);
					paycallback.onExecutionSuccess(pluginPayResult);
				}
			}

			@Override
			public void paymentError(PaymentErrorMsg arg0) {
				if (paycallback != null) {
					paycallback.onExecutionFailure(
							KeyCodes.ERROR_PLUGIN_DEFAULT, "pay error  ="
									+ arg0.toString());
				}
			}
		});

	}

	private RoleInfo initRoleInfo() {
		RoleInfo roleInfo = new RoleInfo();
		roleInfo.setRole_type(5);
		roleInfo.setServer_id(serverId);
		roleInfo.setServer_name(serverAreaName);
		roleInfo.setRole_id(roleid);
		roleInfo.setRole_name(roleName);
		roleInfo.setParty_name("");
		roleInfo.setRole_level(Integer.parseInt(roleLevel));
		roleInfo.setRole_vip(0);
		roleInfo.setRole_balence((float) 0);
		roleInfo.setRolelevel_ctime(createTime + "");
		roleInfo.setRolelevel_mtime("");
		return roleInfo;
	}

	public void logout(final Context context, HashMap params,
			executeCallback callback) {
		this.logoutcallback = callback;
		sdkManager.logout();
	}

	public void gameExit(final Context context, HashMap params,
			final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
		gameExitcallback.onExecutionSuccess(0);

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
		return "tqwl";
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
		sdkManager.recycle();
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
