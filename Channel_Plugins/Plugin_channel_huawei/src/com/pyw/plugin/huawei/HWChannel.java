package com.pyw.plugin.huawei;

import java.util.HashMap;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;

import com.huawei.gameservice.sdk.GameServiceSDK;
import com.huawei.gameservice.sdk.control.GameEventHandler;
import com.huawei.gameservice.sdk.model.PayResult;
import com.huawei.gameservice.sdk.model.Result;
import com.huawei.gameservice.sdk.model.UserResult;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.open.KeyCodes;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.text.TextUtils;

public class HWChannel extends PYWPlugin {
	private PYWPluginExecutor.Callback sdklogoutcallback;

	private executeCallback playerInfocallback, paycallback, logoutcallback, logincall;

	private Context context;

	public void init(final Context context, HashMap params, final executeCallback callback) {
		this.context = context;
		GameServiceSDK.init((Activity) context, GlobalParam.APP_ID, GlobalParam.PAY_ID,
				"com.huawei.gb.huawei.installnewtype.provider", new GameEventHandler() {
					@Override
					public void onResult(Result result) {

						if (result.rtnCode != Result.RESULT_OK) {
							callback.onExecutionFailure(result.rtnCode, "init the game service SDK failed");
							return;
						}
						callback.onExecutionSuccess(null);
						checkUpdate((Activity) context, callback);
					}

					@Override
					public String getGameSign(String appId, String cpId, String ts) {
						return createGameSign(appId + cpId + ts);
					}
				});
	}

	public void login(final Context context, final HashMap<String, Object> params,
			final PYWPluginExecutor.executeCallback callback) {
		this.logincall = callback;
		this.context = context;
		GameServiceSDK.login((Activity) context, new GameEventHandler() {
			@Override
			public void onResult(Result result) {
				if (result.rtnCode != Result.RESULT_OK) {
					doFailedCallback(0, "login failed:" + result.toString(),callback);
				} else {
					UserResult userResult = (UserResult) result;
					if (TextUtils.isEmpty(userResult.ts))
						return;// 手动屏蔽掉华为此次假回调
					UserParams pa = new UserParams();
					pa.setSdkUserID(userResult.playerId);
					GlobalParam.PLAYID = userResult.playerId;
					pa.setToken(getParam(userResult));
					if (userResult.isAuth != null && userResult.isAuth == 1) {
						boolean checkResult = checkSign(GlobalParam.APP_ID + userResult.ts + userResult.playerId,
								userResult.gameAuthSign);
						if (checkResult) {
							doSuccessCallback(pa, callback);
						} else {
							doFailedCallback(0, "login auth failed check game auth sign error", callback);
						}

					} else if (userResult.isChange != null && userResult.isChange == 1) {
						((Activity) context).runOnUiThread(new Runnable() {

							@Override
							public void run() {
								if (logoutcallback != null) {
									logoutcallback.onExecutionSuccess(0);
								}
							}
						});
					} else {
						doSuccessCallback(pa, callback);
					}

				}
			}

			@Override
			public String getGameSign(String appId, String cpId, String ts) {
				return null;
			}

		}, 1);
	}

	private String getParam(UserResult r) {
		JSONObject j = new JSONObject();
		try {
			j.put("app_id", GlobalParam.APP_ID);
			j.put("displayName", r.displayName);
			j.put("isAuth", r.isAuth);
			j.put("gameAuthSign", r.gameAuthSign);
			j.put("ts", r.ts);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return j.toString();
	}

	private void doSuccessCallback(final Object o, final PYWPluginExecutor.executeCallback callback) {
		((Activity) context).runOnUiThread(new Runnable() {

			@Override
			public void run() {
				callback.onExecutionSuccess(o);
			}
		});
	}

	private void doFailedCallback(final int code, final String msg, final PYWPluginExecutor.executeCallback callback) {
		((Activity) context).runOnUiThread(new Runnable() {

			@Override
			public void run() {
				callback.onExecutionFailure(code, msg);
			}
		});
	}

	public void switchLogin(Context context, HashMap params, executeCallback callback) {
		this.logincall = callback;
		this.context = context;
	}

	public void setLoginCallback(Context context, final executeCallback callback) {
		this.context = context;
		this.logincall = callback;
	}

	public void logout(Context context, HashMap params, executeCallback callback) {
		this.logoutcallback = callback;
		((Activity) context).runOnUiThread(new Runnable() {
			@Override
			public void run() {
				logoutcallback.onExecutionSuccess(0);
			}
		});

	}

	/**
	 * 校验签名 check the auth sign
	 */
	protected boolean checkSign(String data, String gameAuthSign) {
		/*
		 * 建议CP获取签名后去游戏自己的服务器校验签名，公钥值请参考开发指导书5.1 登录鉴权签名的验签公钥
		 */
		/*
		 * The CP need to deployed a server for checking the sign.
		 */
		try {
			return RSAUtil.verify(data.getBytes("UTF-8"), GlobalParam.LOGIN_RSA_PUBLIC, gameAuthSign);
		} catch (Exception e) {
			return false;
		}
	}

	/**
	 * 检测游戏更新 check the update for game
	 */
	private void checkUpdate(Activity activity, final executeCallback callback) {
		GameServiceSDK.checkUpdate(activity, new GameEventHandler() {
			@Override
			public void onResult(Result result) {
			}

			@Override
			public String getGameSign(String appId, String cpId, String ts) {
				return null;
			}

		});
	}

	/**
	 * 生成游戏签名 generate the game sign
	 */
	private String createGameSign(String data) {

		// 为了安全把浮标密钥放到服务端，并使用https的方式获取下来存储到内存中，CP可以使用自己的安全方式处理
		// For safety, buoy key put into the server and use the https way to get
		// down into the client's memory.
		// By the way CP can also use their safe approach.

		String str = data;
		try {
			String result = RSAUtil.sha256WithRsa(str.getBytes("UTF-8"), GlobalParam.BUOY_SECRET);
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void onCreate(Context context) {
		this.context = context;
	}

	@Override
	public String getName(Context context) {
		// TODO Auto-generated method stub
		return "huawei";
	}

	@Override
	public int getVersion(Context context) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String getCategory(Context context) {
		// TODO Auto-generated method stub
		return "channel";
	}

	@Override
	public void onPause(Context context) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onResume(Context context) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onDestroy(Context context) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onRestart(Context context) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onStop(Context context) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onStart(Context context) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onNewIntent(Intent intent) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onConfigurationChanged(Configuration newConfig) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		// TODO Auto-generated method stub

	}

	public void setCallback(Context context, Callback callback) {
		this.context = context;
		this.sdklogoutcallback = callback;
	}

	public void gameExit(final Context context, HashMap params, final executeCallback callback) {
		this.context = context;
		callback.onExecutionSuccess(0);
	}

	public void hideFloatView(Context context, HashMap params, executeCallback callback) {
		if (context instanceof Activity) {
			GameServiceSDK.hideFloatWindow((Activity) context);
		}
	}

	public void showFloatView(Context context, HashMap params, executeCallback callback) {
		if (context instanceof Activity) {
			GameServiceSDK.showFloatWindow((Activity) context);
		}
	}

	public void pay(final Context context, HashMap params, final executeCallback callback) {
		this.paycallback = callback;
		HashMap param = (HashMap) params.get("nameValuePairs");
		String price = param.get("order_price") + "";
		if (!TextUtils.isEmpty(price) && !price.contains(".")) {
			price += ".00";
		}
		String productName = param.get("channel_prod_id") + "";
		String productDesc = param.get("channel_order_info") + "";
		String requestId = params.get("channel_order_sn") + "";
		String s = params.get("orderID")+"";
		String code ="";
		try {
			code = context.getPackageManager().getPackageInfo(context.getPackageName(),PackageManager.GET_CONFIGURATIONS).versionCode+"";
		} catch (NameNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		GameBoxUtil.pay((Activity) context, price, productName, productDesc, requestId, payHandler,code,s);
	}

	/**
	 * 支付回调handler
	 */
	/**
	 * pay handler
	 */
	private GameEventHandler payHandler = new GameEventHandler() {
		@Override
		public String getGameSign(String appId, String cpId, String ts) {
			return null;
		}

		@Override
		public void onResult(Result result) {

			Map<String, String> payResp = ((PayResult) result).getResultMap();
			String pay = "支付失败";
			// 支付成功，进行验签
			// payment successful, then check the response value
			if ("0".equals(payResp.get("returnCode"))) {
				if ("success".equals(payResp.get("errMsg"))) {
					// 支付成功，验证信息的安全性；待验签字符串中如果有isCheckReturnCode参数且为yes，则去除isCheckReturnCode参数
					// If the response value contain the param
					// "isCheckReturnCode" and its value is yes, then remove the
					// param "isCheckReturnCode".
					if (payResp.containsKey("isCheckReturnCode") && "yes".equals(payResp.get("isCheckReturnCode"))) {
						payResp.remove("isCheckReturnCode");

					}
					// 支付成功，验证信息的安全性；待验签字符串中如果没有isCheckReturnCode参数活着不为yes，则去除isCheckReturnCode和returnCode参数
					// If the response value does not contain the param
					// "isCheckReturnCode" and its value is yes, then remove the
					// param "isCheckReturnCode".
					else {
						payResp.remove("isCheckReturnCode");
						payResp.remove("returnCode");
					}
					// 支付成功，验证信息的安全性；待验签字符串需要去除sign参数
					// remove the param "sign" from response
					String sign = payResp.remove("sign");

					String noSigna = GameBoxUtil.getSignData(payResp);

					// 使用公钥进行验签
					// check the sign using RSA public key
					boolean s = RSAUtil.doCheck(noSigna, sign, GlobalParam.PAY_RSA_PUBLIC);

					if (s) {
						com.pyw.open.PayResult p = new com.pyw.open.PayResult();
						p.setExtension("支付成功");
						p.setOrderID(payResp.get(GlobalParam.PayParams.SDK_CHANNEL));
						p.setPayResult(true);
						PluginPayResult pluginPayResult = new PluginPayResult();
						pluginPayResult.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
						pluginPayResult.setPayResult(p);
						doPayCallback(true, "支付成功", pluginPayResult);
					} else {
						doPayCallback(false, "支付结果验签失败", null);
					}
				}

			} else if ("30002".equals(payResp.get("returnCode"))) {
				pay = "查询支付结果超时";
				doPayCallback(false, pay, null);
			} else if ("30000".equals(payResp.get("returnCode"))) {
				doPayCallback(false, "支付取消", null);
			} else {
				doPayCallback(false, pay, null);
			}
		}
	};

	private void doPayCallback(boolean isSuccess, String msg, Object o) {
		if (paycallback != null) {
			if (isSuccess) {
				paycallback.onExecutionSuccess(o);
			} else {
				paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT, msg);
			}
		}
	}
}
