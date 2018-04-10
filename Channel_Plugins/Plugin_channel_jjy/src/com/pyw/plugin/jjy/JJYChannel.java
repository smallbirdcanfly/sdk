package com.pyw.plugin.jjy;

import java.util.HashMap;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.gamesdk.jjyx.WqGamesApi;
import com.gamesdk.jjyx.bean.PayData;
import com.gamesdk.jjyx.bean.SDKConfig;
import com.gamesdk.jjyx.constant.ISDKEventCode;
import com.gamesdk.jjyx.constant.JConstant;
import com.gamesdk.jjyx.interfaces.OnGameExitListener;
import com.gamesdk.jjyx.interfaces.OnInitSdkListener;
import com.gamesdk.jjyx.interfaces.OnSDKEventListener;
import com.pyw.entity.UserParams;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

public class JJYChannel extends PYWPlugin implements OnSDKEventListener {
	public static final String TAG = "JJYChannel";
	private String uid;
	private String mOrderID;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, playerInfocallback, paycallback,
			logoutcallback, logincall;
	private Context context;

	@Override
	public void onCreate(Context context) {
		this.context = context;
	}

	public void init(final Context context, HashMap params,
			executeCallback callback) {
		this.context = context;
		this.initcallback = callback;

		WqGamesApi.getInstance().initSdk((Activity) context,
				new SDKConfig("dcq"), new OnInitSdkListener() {
					@Override
					public void onEvent(int code, int onEventCode) {
						switch (onEventCode) {
						case ISDKEventCode.CODE_INIT_SUCCESS:
							if (null != initcallback) {
								initcallback.onExecutionSuccess(null);
							}
							break;
						case ISDKEventCode.CODE_INIT_FALL:
							if (null != initcallback) {
								initcallback.onExecutionFailure(
										ISDKEventCode.CODE_INIT_FALL, "初始化错误");
							}
							break;
						}
						// 成功或失败
					}
				});

		// 注册sdk的统一回调接口
		WqGamesApi.getInstance().reCallBack(this);

	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincall = callback;
		this.context = context;
		WqGamesApi.getInstance().login((Activity) context);
	}

	public void switchLogin(Context context, HashMap params,
			executeCallback callback) {
		this.logincall = callback;
		this.context = context;

	}

	public void setLoginCallback(Context context, final executeCallback callback) {
		this.context = context;
		this.logincall = callback;
		Log.d("px", "setLoginCallback");
	}

	public void pay(final Context context, HashMap params,
			final executeCallback callback) {
		this.paycallback = callback;

		mOrderID = params.get("orderID") + "";
		String productName = params.get("productName") + "";
		String productId = params.get("productId") + "";
		HashMap<String, Object> data = (HashMap<String, Object>) params
				.get("nameValuePairs");
		int rate = (Integer) data.get("rate");
		String price = (Integer) params.get("price") * rate + "";// 根据返回的比例去支付对应价格

		if (TextUtils.isEmpty(mOrderID) || TextUtils.isEmpty(productName)
				|| TextUtils.isEmpty(price)) {
			Toast.makeText(context, "pay params error!!!", Toast.LENGTH_SHORT)
					.show();
		}
		// 调用支付接口时创建PayData()实体类,将支付参数封装到该实体类
		PayData payData = new PayData();
		payData.setUid(uid);// 用户id
		payData.setCporder("020718544221118");// CP订单号(测试时随机六位数)
		payData.setSid("1");// 服务器序号
		payData.setAmount("10");// 订单金额(单位：分)
		payData.setItem_id("10000");// 商品ID(可传可不传，不传为空)
		payData.setItem_name("黄金月卡");// 商品名称
		payData.setExtra("8569123654");// CP透传字段，通知CP支付结果时原样返回

		// payData.setCporder(mOrderID);// CP订单号(测试时随机六位数)
		// payData.setSid("1");// 服务器序号
		// payData.setAmount(price);// 订单金额(单位：分)
		// payData.setItem_id("10000");// 商品ID(可传可不传，不传为空)
		// payData.setItem_name("黄金月卡");// 商品名称
		// payData.setExtra(mOrderID);// CP透传字段，通知CP支付结果时原样返回
		WqGamesApi.getInstance().pay((Activity) context, payData);
	}

	public void setCallback(Context context, Callback callback) {
		this.context = context;
		this.sdklogoutcallback = callback;
		Log.d("px", "setCallback");
	}

	public void logout(Context context, HashMap params, executeCallback callback) {
		this.logoutcallback = callback;
		logoutcallback.onExecutionSuccess(0);
	}

	public void gameExit(final Context context, HashMap params,
			final executeCallback callback) {

		this.context = context;
		// System.exit(0);
		// TODO 调用退出
		WqGamesApi.getInstance().gameExit((Activity) context,
				new OnGameExitListener() {
					@Override
					public void onEvent(int eventCode) {
						switch (eventCode) {
						case ISDKEventCode.CODE_EXIT_CANCEL:
							callback.onExecutionSuccess(1);
							break;
						case ISDKEventCode.CODE_EXIT_SUCCESS:
							callback.onExecutionSuccess(0);
							System.exit(0);
							break;
						}
					}
				});

	}

	public String getName(Context context) {
		return "jjy";
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
		WqGamesApi.getInstance().onPause((Activity) context);
	}

	@Override
	public void onResume(Context context) {
		// WqGamesApi.getInstance().onResume((Activity) context);
	}

	@Override
	public void onDestroy(Context context) {
		WqGamesApi.getInstance().onDestroy((Activity) context);
	}

	@Override
	public void onRestart(Context context) {
		WqGamesApi.getInstance().onRestart((Activity) context);
	}

	@Override
	public void onStart(Context context) {
		WqGamesApi.getInstance().onStart((Activity) context);
	}

	@Override
	public void onNewIntent(Intent intent) {
	}

	@Override
	public void onConfigurationChanged(Configuration newConfig) {
	}

	@Override
	public void onStop(Context context) {
		WqGamesApi.getInstance().onStop((Activity) context);
	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		WqGamesApi.getInstance()
				.onActivityResult(requestCode, resultCode, data);
	}

	// SDK 所有回调
	@Override
	public void onEvent(int eventCode, Bundle data) {
	
		switch (eventCode) {
		case ISDKEventCode.CODE_LOGIN_SUCCESS:// 登录成功
			uid = data.getString(JConstant.USERKEY);
			String token = data.getString(JConstant.TOKENKEY);
			Log.e("px", "demo 游戏SDK返回信息    " + "uid==" + uid + "     token=="
					+ token);
			UserParams userParams = new UserParams();
			userParams.setToken(token);
			userParams.setSdkUserID(uid);
			userParams.setSuc(true);
			if (logincall != null) {
				logincall.onExecutionSuccess(userParams);
			}
			break;
		case ISDKEventCode.CODE_LOGIN_FAIL:// 登录失败
			int code = data.getInt(JConstant.CODE);

			if (logincall != null) {
				logincall.onExecutionFailure(code, "登陆失败");
			}
			break;
		case ISDKEventCode.CODE_LOGOUT:
			/**
			 * 游戏需要在收到这个回调后 执行账户退出，并回到游戏的登录界面
			 */
			Log.d("px", " 游戏需要在收到这个回调后 执行账户退出，并回到游戏的登录界面");
			if (sdklogoutcallback != null) {
				sdklogoutcallback.onCallback(null);
			}else{
				Log.d("px", "callback 为空");
			}
			break;
		case ISDKEventCode.CODE_PAY_CANCEL:
			String orderid = data.getString(JConstant.ORDERID);

			break;
		case ISDKEventCode.CODE_PAY_COMPLETE:
			/**
			 * 需要注意 支付完成并不是支付成功， 游戏收到这个回调时需要以你们服务器的回调为准！！！
			 */
			String orderid1 = data.getString(JConstant.ORDERID);
			break;
		case ISDKEventCode.CODE_SYNC_SUCESS:
			break;
		case ISDKEventCode.CODE_SYNC_FAIL:
			break;

		}

	}

}
