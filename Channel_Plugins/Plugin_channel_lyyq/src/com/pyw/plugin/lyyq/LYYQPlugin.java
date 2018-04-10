package com.pyw.plugin.lyyq;

import java.net.URLEncoder;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;

import com.gzxb.data.LWGameSDKStatusCode;
import com.gzxb.gameinfo.LWGameInfoParames;
import com.gzxb.gameinfo.LWPayInfo;
import com.gzxb.inf.LWCallbackListener;
import com.gzxb.sdkfor61.LWGameSDK;
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
 * game_key: 020986b2 渠道号： 90 渠道名称： 六一游趣
 * 
 * @author zhouq
 * 
 */
public class LYYQPlugin extends PYWPlugin {

	private static final String TAG = "LYYQPlugin";

	private Context context;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, paycallback, logincallback,
			logoutcallback, gameExitcallback;
	private String mOrderID;
	private String serverId, serverAreaName, roleid, roleName, roleLevel;

	@Override
	public void onCreate(Context context) {
	}

	public void init(final Context context, final HashMap params,
			executeCallback callback) {
		this.initcallback = callback;
		this.context = context;

		LWGameInfoParames lwGameInfoParames = new LWGameInfoParames();
		lwGameInfoParames.setGameId(752618);
		lwGameInfoParames.setServerId(0);
		LWGameSDK.getInstance().initLwSDK((Activity) context,
				lwGameInfoParames, new mLWCallbackListener());
		LWGameSDK.getInstance().lwSetLogoutNotifyListener(
				new LWCallbackListener() {
					
					@Override
					public void callback(int arg0, String arg1) {
						LogUtil.d(TAG, "code1: " + arg0 + ",msg1: " + arg1);
						if (arg0 == LWGameSDKStatusCode.LOGIN_FAIL){
							logoutcallback.onExecutionSuccess(0);
						}
					}
				});
	}

	class mLWCallbackListener implements LWCallbackListener {

		@Override
		public void callback(int arg0, String arg1) {
			LogUtil.d(TAG, "code: " + arg0 + ",msg: " + arg1);
			switch (arg0) {
			case LWGameSDKStatusCode.INIT_SDK_SUCCESS:// 初始化成功
				initcallback.onExecutionSuccess(null);
				break;
			case LWGameSDKStatusCode.INIT_SDK_FAIL:// 初始化失败
				break;
			case LWGameSDKStatusCode.LOGIN_SUCCESS:// 处于登录状态
				LWGameSDK.getInstance().lwShowFloatView(0, 0.5, true);
				String token = LWGameSDK.getInstance().getLWSid();
				String userid = "channel_uid_is_null";
				UserParams userParams = new UserParams();
				userParams.setToken(token);
				userParams.setSdkUserID(userid);
				userParams.setSuc(true);
				logincallback.onExecutionSuccess(userParams);
				break;
			case LWGameSDKStatusCode.LOGIN_FAIL:
				logincallback.onExecutionFailure(arg0, "登陆失败 :" + arg1);
				break;
			case LWGameSDKStatusCode.INIT_VERSION_UPDATE:// 版本更新

				break;
			case LWGameSDKStatusCode.LW_SDK_EXIT_SUCCESS:// SDK退出成功
				gameExitcallback.onExecutionSuccess(0);
				break;
			case LWGameSDKStatusCode.LW_SDK_EXIT_FAIL:// SDK退出失败
				break;
			case LWGameSDKStatusCode.LW_SDK_LOGOUT_SUCCESS1:
				
				break;
			default:
				break;
			}

		}

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

		LWPayInfo payInfo = new LWPayInfo();
		payInfo.setServerId(Integer.parseInt(serverId));// 区服ID
		payInfo.setRoleName(roleName);
		payInfo.setGrade(Integer.parseInt(roleLevel));// 等级
		payInfo.setRoleId(roleid);// 角色编号
		payInfo.setVip(0);// 当前VIP等级无等级区分则输入0
		LWGameSDK.getInstance().LWRole((Activity) context, payInfo);
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;
		LWGameSDK.getInstance().LWLogin((Activity) context,
				new mLWCallbackListener());
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
		int price = (Integer) params.get("price") * 100;
		String extrol = params.get("channel_order_info") + "";

		LogUtil.d(TAG,"extrol " + extrol);
		LWPayInfo payInfo = new LWPayInfo();
		payInfo.setAmount(price);
		payInfo.setServerId(Integer.parseInt(serverId));
		payInfo.setRoleName(roleName);
		payInfo.setRoleId(roleid);// 角色编号
		payInfo.setGrade(Integer.parseInt(roleLevel));// 当前角色等级
		payInfo.setCustomInfo(extrol);
		payInfo.setVip(0);// 当前VIP等级, 无VIP等级区分则输入0
		payInfo.setOrderId(params.get("channel_order_sn") + "");
		LWGameSDK.getInstance().LWPay((Activity) context, payInfo,
				new LWCallbackListener() {
					@Override
					public void callback(int statuscode, String msg) {
						LogUtil.d(TAG, "statuscode " + statuscode + ",msg="
								+ msg);
						switch (statuscode) {
						case LWGameSDKStatusCode.PAY_SUCCESS:
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
							break;
						case LWGameSDKStatusCode.PAY_FAIL:
							if (paycallback != null) {
								paycallback.onExecutionFailure(
										KeyCodes.ERROR_PLUGIN_DEFAULT,
										"pay error  =" + msg);
							}
							break;
						}
					}
				});

	}

	public void logout(final Context context, HashMap params,
			executeCallback callback) {
		this.logoutcallback = callback;
		LWGameSDK.getInstance().lwLogout();
	}

	public void gameExit(final Context context, HashMap params,
			final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
		LWGameSDK.getInstance().lwExitSDK((Activity) context,
				new mLWCallbackListener());
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
		return "lyyq";
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

	/**
	 * 
	 * 显示悬浮窗
	 * 
	 */

	public void showFloatView() {
		LWGameSDK.getInstance().lwShowFloatView(0, 0.5, true);
	}

	/**
	 * 
	 * 隐藏浮点
	 * 
	 */
	public void hideFloatView() {
		LWGameSDK.getInstance().lwShowFloatView(0, 0.5, false);
	}

}
