package com.pyw.plugin.meizu;

import android.R.integer;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;

import com.meizu.gamesdk.model.callback.MzExitListener;
import com.meizu.gamesdk.model.callback.MzLoginListener;
import com.meizu.gamesdk.model.callback.MzPayListener;
import com.meizu.gamesdk.model.model.LoginResultCode;
import com.meizu.gamesdk.model.model.MzAccountInfo;
import com.meizu.gamesdk.model.model.PayResultCode;
import com.meizu.gamesdk.online.core.MzGameBarPlatform;
import com.meizu.gamesdk.online.core.MzGameCenterPlatform;
import com.meizu.gamesdk.online.model.model.MzBuyInfo;
import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.ILogoutCallback;
import com.pyw.open.KeyCodes;
import com.pyw.open.PayResult;
import com.pyw.open.support.PYWPlatform;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

import java.net.URLEncoder;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

/*
 * game_key :d8e7e5f0  渠道号：130  渠道名称：龙城传奇-金立-魅族
 * @author pengpx
 */
public class MeizusdkPlugin extends PYWPlugin implements ILogoutCallback,
		MzLoginListener {

	private Context context;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, paycallback, logincallback,
			logoutcallback, gameExitcallback;
	private String mOrderID, serverId;
	private boolean hasInit = false;
	private MzGameBarPlatform mzGameBarPlatform;
	private String userId;

	@Override
	public void onCreate(Context context) {
		LogUtil.d("meizu--onCreate");
		// mzGameBarPlatform.onActivityCreate();
	}

	@Override
	public void onLogout() {
		if (sdklogoutcallback == null)
			return;
		sdklogoutcallback.onCallback(null);
	}

	public void init(Context context, final HashMap params,
			executeCallback callback) {
		this.initcallback = callback;
		this.context = context;
		LogUtil.d("meizu--init");
		mzGameBarPlatform = new MzGameBarPlatform((Activity) context,
				MzGameBarPlatform.GRAVITY_LEFT_TOP);
		mzGameBarPlatform.onActivityCreate();
		MzGameCenterPlatform.init(context, "3197113",
				"5e9380c04d054aceb03a8221ea895446");
		initcallback.onExecutionSuccess(null);
		LogUtil.d("meizu--init success---->>");
		hasInit = true;
	}

	public void getRoleMessage(final Context context, HashMap params,
			final executeCallback callback) {
		serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? ""
				: (params.get("serverArea") + "");
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;
		LogUtil.d("meizu--login---->>");
		MzGameCenterPlatform.login((Activity) context, this);
	}

	/**
	 * 登录回调 请处理相关回调事件
	 * 
	 * @param code
	 *            错误码
	 * @message 错误信息
	 * @MzAccountInfo 账号信息
	 */
	@Override
	public void onLoginResult(int code, final MzAccountInfo accountInfo,
			final String message) {
		LogUtil.d("meizu--onLoginResult---->>" + "-code:" + code + "-message:"
				+ message);
		switch (code) {
		case LoginResultCode.LOGIN_SUCCESS:
			// 登录成功，处理自己的业务。
			// 获取token
			String token = accountInfo.getSession();
			// 获取用户ID
			userId = accountInfo.getUid();
			LogUtil.d("meizu--loginSuccess---->>" + "登陆成功 userId=" + userId
					+ "  token=" + token);
			UserParams userParams = new UserParams();
			userParams.setToken(token);
			userParams.setSdkUserID(userId);
			userParams.setSuc(true);
			if (logincallback != null) {
				logincallback.onExecutionSuccess(userParams);
			}
			break;
		case LoginResultCode.LOGIN_LOGOUT:
			// TODO 登出成功,CP须处理该事件,退回游戏登录界面
			LogUtil.d("meizu--LOGIN_LOGOUT---->>");
			mzGameBarPlatform.showGameBar();
			if (sdklogoutcallback != null) {
				sdklogoutcallback.onCallback(null);
			}
			// MzGameCenterPlatform.login(this, this);
			break;
		default:
			LogUtil.d("meizu--login faile---->>" + "-code:" + code
					+ "-message:" + message);
			if (logincallback != null) {
				logincallback.onExecutionFailure(0, "登陆失败 ");
			}
			break;
		}
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

		String product_id = params.get("productId") + "";
		String product_subject = params.get("productName") + "";
		if (!TextUtils.isEmpty(product_subject)
				&& product_subject.contains("充值")) {
			product_subject = product_subject.replace("充值", "");
		}

		String app_id = "3197113";
		mOrderID = params.get("orderID") + "";

		int buy_amount = 1;
		String product_per_price = params.get("price") + "";
		String total_price = product_per_price;
		
		String product_body = "元宝";
		String product_unit = "元";
		int pay_type = 0;
		String sign_tpye = "md5";
		long create_time = System.currentTimeMillis();

		String channel_order_sn = params.get("channel_order_sn") + "";
		String game_key = PYWSDKManager.sGameKey;
		String game_version_code = com.pengyouwan.sdk.utils.AppUtil
				.getVersionCode(SDKControler.getContext()) + "";
		LogUtil.d("meizu--channel_order_sn---->>" + channel_order_sn);
		LogUtil.d("meizu--game_key---->>" + game_key);
		LogUtil.d("meizu--mOrderID---->>" + mOrderID);
		String user_info = URLEncoder.encode(params.get("channel_order_info") + "");
		
//		user_info = "测试";

		String readyToMD5 = "app_id" + "=" + app_id 
				+ "&" + "buy_amount" + "="+ buy_amount 
				+ "&" + "cp_order_id" + "=" + channel_order_sn
				+ "&" + "create_time" + "=" + create_time 
				+ "&" + "pay_type"+ "=" + pay_type 
				+ "&" + "product_body" + "=" + product_body
				+ "&" + "product_id" + "=" + product_id 
				+ "&"+ "product_per_price" + "=" + product_per_price 
				+ "&"+ "product_subject" + "=" + product_subject 
				+ "&"+ "product_unit" + "=" + product_unit 
				+ "&" + "total_price"+ "=" + total_price 
				+ "&" + "uid" + "=" + userId 
				+ "&"+ "user_info" + "=" + user_info
				+ ":bdc5FmVdTXCCjbcs1oXQra14pswUI5eM";
		String sign = MD5Util.getMd5(readyToMD5).toLowerCase();
		
		LogUtil.d("meizu--readyToMD5---->>" + readyToMD5);
		LogUtil.d("meizu--sign---->>" + sign);

		Bundle buyBundle = new MzBuyInfo().setBuyCount(buy_amount)
				.setCpUserInfo(user_info).setOrderAmount(total_price)
				.setOrderId(channel_order_sn).setPerPrice(product_per_price)
				.setProductBody(product_body).setProductId(product_id)
				.setProductSubject(product_subject)
				.setProductUnit(product_unit).setSign(sign)
				.setSignType(sign_tpye).setCreateTime(create_time)
				.setAppid(app_id).setUserUid(userId).setPayType(pay_type)
				.toBundle();
		if (buyBundle != null) {
			LogUtil.d("meizu--buyBundle---->>" + buyBundle.toString());
		}

		MzGameCenterPlatform.payOnline((Activity) context, buyBundle,
				new MzPayListener() {

					@Override
					public void onPayResult(int code, Bundle info,
							String errorMsg) {
						switch (code) {
						case PayResultCode.PAY_SUCCESS:
							// 支付成功
							LogUtil.d("meizu--onPaySuccess---->>" + "-code:"
									+ code);
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
						case PayResultCode.PAY_ERROR_CANCEL:
							// 用户取消订单
							LogUtil.d("meizu--onPayCancel---->>" + "-code:"
									+ code + "-msg:" + errorMsg);
							mzGameBarPlatform.showGameBar();
							paycallback.onExecutionFailure(
									KeyCodes.ERROR_PLUGIN_DEFAULT,
									"pay error  =" + errorMsg);
							break;
						default:
							// 支付失败
							LogUtil.d("meizu--onPayFail---->>" + "-code:"
									+ code + "-msg:" + errorMsg);
							mzGameBarPlatform.showGameBar();
							paycallback.onExecutionFailure(
									KeyCodes.ERROR_PLUGIN_DEFAULT,
									"pay error  =" + errorMsg);
							break;
						}
					}
				});
	}

	public void logout(final Context context, HashMap params,
			executeCallback callback) {
		this.logoutcallback = callback;
		MzGameCenterPlatform.logout(context, new MzLoginListener() {
			@Override
			public void onLoginResult(int code, MzAccountInfo accountInfo,
					String msg) {
				mzGameBarPlatform.hideGameBar();
				LogUtil.d("meizu--onLoginResult---->>" + "-code:" + code
						+ "-msg:" + msg);
				if (logoutcallback != null) {
					logoutcallback.onExecutionSuccess(0);
				}
			}
		});
	}

	public void gameExit(final Context context, HashMap params,
			final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
		if (!(context instanceof Activity)) {
			return;
		}
		LogUtil.d("meizu--gameExit---->>");
		MzGameCenterPlatform.exitSDK((Activity) context, new MzExitListener() {
			public void callback(int code, String msg) {
				if (code == MzExitListener.CODE_SDK_EXIT) {
					LogUtil.d("meizu--gameExit-callback--->>" + ">>code:"
							+ code + ">>msg:" + msg);
					if (gameExitcallback != null) {
						LogUtil.d("meizu--gameExit---->>" + "onExecutionSuccess");
						AppUtil.gc();
						gameExitcallback.onExecutionSuccess(null);
						System.exit(0);
					}
				}
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
		return "meizu";
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
		if (mzGameBarPlatform != null) {
			mzGameBarPlatform.onActivityPause();
		}
	}

	@Override
	public void onResume(Context context) {
		if (mzGameBarPlatform != null) {
			mzGameBarPlatform.onActivityResume();
		}

	}

	@Override
	public void onDestroy(Context context) {
		if (mzGameBarPlatform != null) {
			mzGameBarPlatform.onActivityDestroy();
		}
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
