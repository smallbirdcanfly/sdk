package com.pyw.plugin.lianyun72;

import java.net.URLEncoder;
import java.util.HashMap;

import org.apache.commons.lang3.ObjectUtils.Null;
import org.json.JSONException;
import org.json.JSONObject;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.Log;

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
import com.youxi.sylybridge.callback.OnInitCallback;
import com.youxi.sylybridge.callback.OnLoginCallback;
import com.youxi.sylybridge.callback.OnLoginGameCallback;
import com.youxi.sylybridge.callback.OnPayCallback;
import com.youxi.sylybridge.router.YXSDK;

/*
 * game_key :41b8e817  渠道号：64  渠道名称： 武汉有戏  联运72
 * @author pengpx
 */
public class Lianyun72Plugin extends PYWPlugin {

	private Context context;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, paycallback, logincallback,
			logoutcallback, gameExitcallback;
	private String mOrderID, serverId;

	@Override
	public void onCreate(Context context) {
	}

	public void init(Context context, final HashMap params,
			executeCallback callback) {
		this.initcallback = callback;
		this.context = context;

		YXSDK.getInstance().init(context, "97", false, new OnInitCallback() {

			@Override
			public void onInitSuccess() {
				LogUtil.d("YXSDK--onInitSuccess---->>");
				if (null != initcallback) {
					initcallback.onExecutionSuccess(null);
				}
			}

			@Override
			public void onInitFail(String arg0) {
				LogUtil.d("YXSDK--onInitFail---->>" + arg0);
				if (null != initcallback) {
					initcallback.onExecutionFailure(0, arg0);
				}
			}
		});

	}

	public void getRoleMessage(final Context context, HashMap params,
			final executeCallback callback) {
		serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? ""
				: (params.get("serverArea") + "");
		String serverAreaName = TextUtils.isEmpty(params.get("serverAreaName")
				+ "") ? "" : (params.get("serverAreaName") + "");
		String roleName = TextUtils.isEmpty(params.get("roleName") + "") ? ""
				: (params.get("roleName") + "");
		String roleLevel = TextUtils.isEmpty(params.get("roleLevel") + "") ? ""
				: (params.get("roleLevel") + "");
		
		YXSDK.getInstance().loginGame(serverId,serverAreaName,roleName,roleLevel,null, new OnLoginGameCallback() {

			@Override
			public void onLoginGameSuccess(String arg0) {
				LogUtil.d("YXSDK--onLoginGameSuccess上传区服信息---->>" + "-用户ID:"
						+ arg0);
			}

			@Override
			public void onLoginGameFail(String arg0, String arg1) {
				LogUtil.d("YXSDK--onLoginGameFail上传区服信息---->>" + "-用户ID:"
						+ arg0 + "-失败原因:" + arg1);
			}
		});

	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;

		YXSDK.getInstance().login72G(context, new OnLoginCallback() {

			@Override
			public void onLogout(int arg0, String arg1) {
				LogUtil.d("YXSDK--onLogout---->>arg0:" + arg0 + "--arg1:"
						+ arg1);
			}

			@Override
			public void onLoginSuccess(String arg0) {
				LogUtil.d("YXSDK--onLoginSuccess---->>" + arg0);
				UserParams userParams = new UserParams();
				userParams.setToken(arg0);
				userParams.setSdkUserID(arg0);
				userParams.setSuc(true);
				LogUtil.d("YXSDK--onLoginSuccess---->>" + "userParams:"
						+ userParams.getSdkUserID());
				logincallback.onExecutionSuccess(userParams);
			}

			@Override
			public void onLoginFail(String arg0) {
				LogUtil.d("YXSDK--onLoginFail---->>" + arg0);
				logincallback.onExecutionFailure(0, "登陆失败 :" + arg0);
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
		String extrol = params.get("channel_order_info") + "";
		String game_key = PYWSDKManager.sGameKey;
		String game_version_code = com.pengyouwan.sdk.utils.AppUtil
				.getVersionCode(SDKControler.getContext()) + "";
		LogUtil.d("YXSDK--game_key---->>" + game_key);

		LogUtil.d("YXSDK--extrol---->>" + extrol);
		YXSDK.getInstance().pay(context, productName, "1", amount,
				channel_order_sn, extrol, new OnPayCallback() {
					@Override
					public void onPaySuccess(String code, String msg) {
						LogUtil.d("YXSDK--onPaySuccess---->>" + "-code:" + code
								+ "-msg:" + msg);
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

					@Override
					public void onPayFail(String code, String msg) {
						LogUtil.d("YXSDK--onPayFail---->>" + "-code:" + code
								+ "-msg:" + msg);
						paycallback.onExecutionFailure(
								KeyCodes.ERROR_PLUGIN_DEFAULT, "pay error  ="
										+ msg);
					}

					@Override
					public void onPayCancel(String code, String msg) {
						LogUtil.d("YXSDK--onPayCancel---->>" + "-code:" + code
								+ "-msg:" + msg);
						paycallback.onExecutionFailure(
								KeyCodes.ERROR_PLUGIN_DEFAULT, "pay error  ="
										+ msg);
					}
				});
	}

	public void logout(final Context context, HashMap params,
			executeCallback callback) {
		this.logoutcallback = callback;

		YXSDK.getInstance().toLogout();
		if (logoutcallback != null) {
			logoutcallback.onExecutionSuccess(0);
		}
	}

	public void gameExit(final Context context, HashMap params,
			final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
		YXSDK.getInstance().toDestroy();
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
		return "YXSDK";
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
