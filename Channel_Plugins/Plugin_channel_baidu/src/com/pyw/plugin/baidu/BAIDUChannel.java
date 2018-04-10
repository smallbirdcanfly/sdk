package com.pyw.plugin.baidu;

import java.net.URLEncoder;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import com.baidu.gamesdk.BDGameSDK;
import com.baidu.gamesdk.BDGameSDKSetting;
import com.baidu.gamesdk.BDGameSDKSetting.Domain;
import com.baidu.gamesdk.BDGameSDKSetting.Orientation;
import com.baidu.gamesdk.IResponse;
import com.baidu.gamesdk.OnGameExitListener;
import com.baidu.gamesdk.ResultCode;
import com.baidu.platformsdk.PayOrderInfo;
import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;

/**
 * game_key: 36dc4b5f 渠道号： 128 渠道名称： 百度
 * <p>
 * Created by zhouq on 2018/2/27
 */
public class BAIDUChannel extends PYWPlugin {

	private static final String TAG = "BAIDUChannel";

	private Context context;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, paycallback, logincallback, logoutcallback, gameExitcallback;
	private String mOrderID;
	private String serverId, serverAreaName, roleid, roleName, roleLevel, roleCreateTime;
	private String uid;

	@Override
	public void onCreate(Context context) {

	}

	public void init(final Context context, final HashMap params, executeCallback callback) {
		this.initcallback = callback;
		this.context = context;
		initBDGameSDK();
		setSuspendWindowChangeAccountListener();
		setSessionInvalidListener();
	}

	private void initBDGameSDK() { // 初始化游戏SDK
		BDGameSDKSetting mBDGameSDKSetting = new BDGameSDKSetting();
		mBDGameSDKSetting.setAppID(10816201); // APPID设置
		mBDGameSDKSetting.setAppKey("eFH8GtLzBSfMD0fe4TH5MGwa"); // APPKEY设置
		mBDGameSDKSetting.setDomain(Domain.RELEASE); // 设置为正式模式
		mBDGameSDKSetting.setOrientation(Orientation.LANDSCAPE);

		BDGameSDK.init((Activity) context, mBDGameSDKSetting, new IResponse<Void>() {

			@Override
			public void onResponse(int resultCode, String resultDesc, Void extraData) {
				switch (resultCode) {
				case ResultCode.INIT_SUCCESS:
					// 初始化成功
					initcallback.onExecutionSuccess(null);
					break;

				case ResultCode.INIT_FAIL:
				default:

					// 初始化失败
				}

			}

		});
	}

	/**
	 * 悬浮窗切换账号回调
	 */
	private void setSuspendWindowChangeAccountListener() { // 设置切换账号事件监听（个人中心界面切换账号）
		BDGameSDK.setSuspendWindowChangeAccountListener((Activity) context, new IResponse<Void>() {

			@Override
			public void onResponse(int resultCode, String resultDesc, Void extraData) {
				switch (resultCode) {
				case ResultCode.LOGIN_SUCCESS:
					// TODO 登录成功，不管之前是什么登录状态，游戏内部都要切换成新的用户
					uid = BDGameSDK.getLoginUid(); // TODO
					BDGameSDK.showFloatView((Activity) context); // 切换账号成功后必须更新uid给调用支付api使用

					break;
				case ResultCode.LOGIN_FAIL:
					// TODO
					// 登录失败，游戏内部之前如果是已经登录的，要清除自己记录的登录状态，设置成未登录。如果之前未登录，不用处理。
					BDGameSDK.closeFloatView((Activity)context);
					sdklogoutcallback.onCallback(extraData);
					break;
				case ResultCode.LOGIN_CANCEL:
					// TODO 取消，操作前后的登录状态没变化

					break;
				default:
					// TODO
					// 此时当登录失败处理，参照ResultCode.LOGIN_FAIL（正常情况下不会到这个步骤，除非SDK内部异常）

					break;

				}
			}

		});
	}

	/**
	 * @Description: 监听session失效时重新登录
	 */
	private void setSessionInvalidListener() {
		BDGameSDK.setSessionInvalidListener(new IResponse<Void>() {

			@Override
			public void onResponse(int resultCode, String resultDesc, Void extraData) {
				if (resultCode == ResultCode.SESSION_INVALID) {
					// 会话失效，开发者需要重新登录或者重启游戏
					baiduLogin();
				}

			}

		});
	}

	public void getRoleMessage(final Context context, HashMap params, final executeCallback callback) {

		roleid = TextUtils.isEmpty(params.get("roleid") + "") ? "" : params.get("roleid") + "";
		roleName = TextUtils.isEmpty(params.get("roleName") + "") ? "" : params.get("roleName") + "";
		roleLevel = TextUtils.isEmpty(params.get("roleLevel") + "") ? "" : params.get("roleLevel") + "";
		serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? "" : params.get("serverArea") + "";
		serverAreaName = TextUtils.isEmpty(params.get("serverAreaName") + "") ? "" : params.get("serverAreaName") + "";
		roleCreateTime = TextUtils.isEmpty(params.get("roleCreateTime") + "") ? "1" : params.get("roleCreateTime") + "";
		subRoleMessage();
	}

	private void subRoleMessage() {
		// 提交游戏用户信息

	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;

		baiduLogin();
	}

	private void baiduLogin() {
		BDGameSDK.login((Activity) context, new IResponse<Void>() {

			@SuppressWarnings("unused")
			@Override
			public void onResponse(int resultCode, String resultDesc, Void extraData) {
				LogUtil.d("login", "this resultCode is " + resultCode);
				switch (resultCode) {
				case ResultCode.LOGIN_SUCCESS:
					// 登录成功，此时玩家登录的账号有可能跟失效前登的账号不一致，开发者此时可通过BDGameSDK.getLoginUid获取当前登录的用户ID跟会话失效前的ID比对是否一致，
					// 如果一致则玩家继续游戏，如果不一致则开发者需要更改玩家在游戏中的游戏数据。
					String token = BDGameSDK.getLoginAccessToken();
					uid = BDGameSDK.getLoginUid();
					UserParams userParams = new UserParams();
					userParams.setToken(token);
					userParams.setSdkUserID(uid);
					userParams.setSuc(true);
					logincallback.onExecutionSuccess(userParams);
					break;
				case ResultCode.LOGIN_CANCEL:
					break;
				case ResultCode.LOGIN_FAIL:
				default:
					logincallback.onExecutionFailure(resultCode, "登陆失败 :" + resultDesc);
				}
			}
		});
	}

	public void setExitGame(final Context context, HashMap params, final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
	}

	public void pay(final Context context, HashMap params, final executeCallback callback) {
		this.paycallback = callback;
		this.context = context;
		String productName = params.get("productName") + "";
		mOrderID = params.get("orderID") + "";
		int price = (Integer) params.get("price");
		String productId = params.get("productId") + "";
		String extrol = params.get("channel_order_info") + "";
//		JSONObject jobj = new JSONObject();
//		try {
//
//			// 以下为非必要参数，只供参考，厂商可根据自身需求决定传什么参数与值或者不传
//			jobj.put("gamekey", PYWSDKManager.sGameKey);
//			jobj.put("game_version_code",
//					com.pengyouwan.sdk.utils.AppUtil.getVersionCode(SDKControler.getContext()) + "");
//			jobj.put("channel_order_sn", params.get("channel_order_sn") + "");
//			extrol = URLEncoder.encode(jobj.toString());
//		} catch (JSONException e) {
//			e.printStackTrace();
//		}
		String callBackUrl = "http://120.92.44.63:7842/pay";//支付回调URL,暂定

		int ratio = 1; // 该参数为非定额支付时生效 (支付金额为0时为非定额支付,具体参见使用手册)

		PayOrderInfo payOrderInfo = new PayOrderInfo();
		payOrderInfo.setCooperatorOrderSerial(params.get("channel_order_sn") + "");
		payOrderInfo.setTotalPriceCent(0);
		payOrderInfo.setProductName(productName);
		long p = Long.parseLong(price * 100 + "");
		payOrderInfo.setTotalPriceCent(p); // 以分为单位
		payOrderInfo.setRatio(ratio);
		payOrderInfo.setExtInfo(extrol); // 该字段将会在支付成功后原样返回给CP(不超过500个字符)
		payOrderInfo.setCpUid(uid); // 必传字段，需要验证uid是否合法,此字段必须是登陆后或者切换账号后保存的uid

		BDGameSDK.pay((Activity) context, payOrderInfo, null, new IResponse<PayOrderInfo>() {

			@Override
			public void onResponse(int resultCode, String resultDesc, PayOrderInfo extraData) {
				switch (resultCode) {
				case ResultCode.PAY_SUCCESS: // 支付成功
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
					break;
				case ResultCode.PAY_CANCEL: // 订单支付取消
					break;
				case ResultCode.PAY_FAIL: // 订单支付失败
					if (paycallback != null) {
						paycallback.onExecutionFailure(resultCode, "pay error  =" + resultDesc);
					}
					break;
				case ResultCode.PAY_SUBMIT_ORDER: // 订单已经提交，支付结果未知（比如：已经请求了，但是查询超时）
					// resultStr = "订单已经提交，支付结果未知";
					break;
				default:
					// resultStr = "订单已经提交，支付结果未知";
					break;
				}
			}
		});

	}

	public void logout(final Context context, HashMap params, executeCallback callback) {
		this.logoutcallback = callback;

		BDGameSDK.logout();
		logoutcallback.onExecutionSuccess(0);
	}

	public void gameExit(final Context context, HashMap params, final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;

		// 退出游戏
		BDGameSDK.gameExit((Activity) context, new OnGameExitListener() {

			@Override
			public void onGameExit() {
				gameExitcallback.onExecutionSuccess(0);

			}
		});

	}

	public void setCallback(Context context, final PYWPluginExecutor.Callback callback) {
		this.context = context;
		this.sdklogoutcallback = callback;
	}

	public void setLoginCallback(Context context, final executeCallback callback) {
		this.context = context;
		this.logincallback = callback;
	}

	@Override
	public String getName(Context context) {
		return "baidu";
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
			BDGameSDK.onPause((Activity) context);
	}

	@Override
	public void onResume(Context context) {
		if (context instanceof Activity)
			BDGameSDK.onResume((Activity) context);
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
