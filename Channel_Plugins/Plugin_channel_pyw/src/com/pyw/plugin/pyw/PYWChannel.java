package com.pyw.plugin.pyw;

import java.util.HashMap;

import java.util.Map;

import org.json.JSONObject;

import android.app.Activity;

import android.content.Context;

import android.content.Intent;

import android.content.res.Configuration;

import android.os.Bundle;

import android.text.TextUtils;

import android.util.Log;

import android.view.TextureView;

import android.widget.Toast;

import com.pengyouwan.framework.utils.LogUtil;

import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.open.ISDKEventCode;
import com.pengyouwan.sdk.open.ISDKEventExtraKey;
import com.pengyouwan.sdk.open.PYWPlatform;
import com.pengyouwan.sdk.open.PayConstant;
import com.pengyouwan.sdk.open.User;
import com.pengyouwan.sdk.utils.FloatViewTool;

import com.pengyouwan.sdk.utils.ToastUtil;

import com.pyw.entity.UserParams;

import com.pyw.manager.PYWCallback;

import com.pyw.manager.SDKEventListener;

import com.pyw.open.KeyCodes;

import com.pyw.open.PayResult;

import com.pyw.plugin.PYWPlugin;

import com.pyw.plugin.PYWPluginExecutor;

import com.pyw.plugin.PYWPluginExecutor.Callback;

import com.pyw.plugin.PYWPluginExecutor.executeCallback;

/**
 * 
 * PYW插件入口类
 * 
 * 
 * 
 * @author tanxj
 * 
 * 
 * 
 */

public class PYWChannel extends PYWPlugin implements PYWCallback {

	public static final String TAG = "PYWChannel";

	private String mOrderID;

	private JSONObject mSdkParams;

	private executeCallback initcallback, playerInfocallback, paycallback,

	logincallback, logoutcallback, gameExitcallback;

	private PYWPluginExecutor.Callback sdklogoutcallback;

	private Context context;

	@Override

	public void onCreate(Context context) {

		LogUtil.d(TAG, "onCreate");

		FileUtil.getInstance().init(context);// 文件初始化

		FileUtil.getInstance().write(context, "onCreate");

	}

	public void init(final Context context, final HashMap params,

	executeCallback callback) {

		this.initcallback = callback;

		SDKEventListener.seteventcallback(this);

		if (null != initcallback) {

			initcallback.onExecutionSuccess(null);

		}

	}

	public void login(final Context context, HashMap<String, Object> params,

	PYWPluginExecutor.executeCallback callback) {

		LogUtil.d(TAG, "start login");

		this.logincallback = callback;

		this.context = context;

		// 调起登录界面

		((Activity) context).runOnUiThread(new Runnable() {

			@Override

			public void run() {

				PYWPlatform.openLogin((Activity) context);

			}

		});

	}

	// public void setSilenceLogin(final Context context, HashMap<String,

	// Object> params, PYWPluginExecutor.executeCallback callback){

	//

	// //TODO 访问http://aapi.comsdk.xpeng.com:8081/CommonSdkApi/login获取转换后的信息

	// RequestNetUtil.getInstance().request(params, Const, listener,

	// errorListener)

	// UserParams userParams = new UserParams();

	// userParams.setSdkUserID("testUserId");

	// userParams.setToken("token");

	// callback.onExecutionSuccess(userParams);

	// }

	public void pay(final Context context, HashMap params,

	final executeCallback callback) {

		this.paycallback = callback;

		this.context = context;

		String productId = params.get("productId") + "";

		String price = params.get("price") + "";

		mOrderID = params.get("orderID") + "";

		String productName = params.get("productName") + "";

		String extension = params.get("extension") + "";

		String charge_type = params.get("chargeType") + "";

		int intp = 0;

		try {

			intp = Integer.parseInt(price);

		} catch (NumberFormatException e) {

			Toast.makeText(context, "输入金额有误", 0).show();

			return;

		}

		if (TextUtils.isEmpty(mOrderID) || TextUtils.isEmpty(productName)

		|| TextUtils.isEmpty(price)) {

			paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,

			"pay params error!!!");

		}

		/**
		 * 
		 * 调用任意充值（产品id可不传，4个参数，用于CP方套餐较多价格常变的情况下调用）
		 * 
		 */

		Map<String, Object> paramsMap = new HashMap<String, Object>();

		// 产品名称，用于显示在朋友玩充值界面，请于游戏界面中的商品保持一致

		paramsMap.put(PayConstant.PAY_PRODUCE_NAME, productName);

		// 实际充值金额，单位元 可任意金额 不需要与产品id对应

		paramsMap.put(PayConstant.PAY_MONEY, intp);

		// 订单id，此项必须要填写，并且参数名必须为"order_id"，否则会出错

		paramsMap.put(PayConstant.PAY_ORDER_ID, mOrderID);

		if (!TextUtils.isEmpty(extension)) {

			// 厂商需要朋友玩回调时回传的参数，届时会原样返回

			paramsMap.put(PayConstant.PAY_EXTRA, extension);

		}

		// 产品id

		paramsMap.put(PayConstant.PAY_PRODUCT_ID, productId);

		if (params.get("roleName") + "" != null) {

			// 游戏中的角色名

			paramsMap.put(PayConstant.PAY_ROLE_NAME, params.get("roleName") + "");

		}

		if (params.get("serverName") + "" != null) {

			// 游戏中的区服

			paramsMap.put(PayConstant.PAY_SERVICE_AREA, params.get("serverName") + "");

		}

		// 调用定额充值--第三个参数为false

		PYWPlatform.openChargeCenter((Activity) context, paramsMap,

		charge_type.equals("1") ? false : true);

	}

	public void setExitGame(final Context context, HashMap params,

	final executeCallback callback) {

		this.gameExitcallback = callback;

		this.context = context;

	}

	public void logout(final Context context, HashMap params,

	executeCallback callback) {

		this.logoutcallback = callback;

		// 朋友玩注销

		UserManager.getInstance().setChangeAccoutType(

		UserManager.CHANGE_ACCOUNT_LOGOUT);

		UserManager.getInstance().cleanCurrenUser();

		hideFloatView();

		// 游戏登出

		logoutcallback.onExecutionSuccess(0);

	}

	public void gameExit(final Context context, HashMap params,

	final executeCallback callback) {

		this.gameExitcallback = callback;

		this.context = context;

		// 调起退出界面

		((Activity) context).runOnUiThread(new Runnable() {

			@Override

			public void run() {

				PYWPlatform.exit((Activity) context);

			}

		});

	}

	public void setCallback(Context context, final Callback callback) {

		this.context = context;

		this.sdklogoutcallback = callback;

		Log.d("px", "setCallback");

	}

	public void setLoginCallback(Context context, final executeCallback callback) {

		this.context = context;

		this.logincallback = callback;

		Log.d("px", "setLoginCallback");

	}

	/**
	 * 
	 * 显示悬浮窗
	 * 
	 */

	public void showFloatView() {

		if (null != PYWPlatform.getCurrentUser()) { // 表示当前登录状态

			FloatViewTool.instance((Activity) context).showFloatView();

		}

	}

	/**
	 * 
	 * 隐藏浮点
	 * 
	 */

	public void hideFloatView() {

		FloatViewTool.instance((Activity) context).hideFloatView();

	}

	@Override

	public String getName(Context context) {

		return "pyw";

	}

	@Override

	public int getVersion(Context context) {

		return 0;

	}

	@Override

	public String getCategory(Context context) {

		return "pyw_channel";

	}

	@Override

	public void onEvent(int eventCode, Bundle data) {

		PayResult payResult;

		switch (eventCode) {

		case ISDKEventCode.CODE_LOGIN_SUCCESS:

			// 登录成功通知，bundle中会带有user信息

			if (data != null) {

				User user = (User) data

				.getSerializable(ISDKEventExtraKey.EXTRA_USER);

				if (user != null) {

					String token = user.getToken();

					String userId = user.getUserId(); // 朋友玩为用户分配的唯一标识

					UserParams userParams = new UserParams();

					userParams.setSdkUserID(userId);

					userParams.setToken(token);

					showFloatView();

					logincallback.onExecutionSuccess(userParams);

				}

			} else {

				// 登录失败

				logincallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,

				"登录失败");

			}

			break;

		case ISDKEventCode.CODE_LOGIN_FAILD:

			String erroMsg = data.getString(ISDKEventExtraKey.EXTRA_ERRO);

			logincallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,

			erroMsg);

			break;

		case ISDKEventCode.CODE_CHARGE_SUCCESS:

			// 充值成功

			payResult = new PayResult();

			payResult.setExtension("支付成功");

			payResult.setOrderID(mOrderID);

			payResult.setPayResult(true);

			paycallback.onExecutionSuccess(payResult);

			break;

		case ISDKEventCode.CODE_CHARGE_FAIL:

			paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,

			"充值失败");

			break;

		case ISDKEventCode.CODE_CHARGE_CANCEL:

			paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,

			"充值取消");

			break;

		case ISDKEventCode.CODE_LOGOUT:

			hideFloatView();

			if (sdklogoutcallback != null) {

				sdklogoutcallback.onCallback(null);

			} else {

				ToastUtil.showMsg("请检查登出接口是否对接正确！");

			}

			break;

		case ISDKEventCode.CODE_EXIT:

			// 退出

			if (gameExitcallback != null) {

				FloatViewTool.instance((Activity) context).destroyFloatView();

				gameExitcallback.onExecutionSuccess(0);

			}

		}

	}

	public void onStop(Context context) {

		FileUtil.getInstance().write(context, "onStop");

		LogUtil.d(TAG, "onStop");

	}

	@Override

	public void onResume(Context context) {

		FileUtil.getInstance().write(context, "onResume");

		LogUtil.d(TAG, "onResume");

	}

	@Override

	public void onPause(Context context) {

		FileUtil.getInstance().write(context, "onPause");

		LogUtil.d(TAG, "onPause");

	}

	@Override

	public void onDestroy(Context context) {

		FileUtil.getInstance().write(context, "onDestroy");

		LogUtil.d(TAG, "onDestroy");

	}

	@Override

	public void onRestart(Context context) {

		FileUtil.getInstance().write(context, "onRestart");

		LogUtil.d(TAG, "onRestart");

	}

	@Override

	public void onStart(Context context) {

		FileUtil.getInstance().write(context, "onStart");

		LogUtil.d(TAG, "onStart");

	}

	@Override

	public void onNewIntent(Intent intent) {

		FileUtil.getInstance().write(context, "onNewIntent");

		LogUtil.d(TAG, "onNewIntent");

	}

	@Override

	public void onConfigurationChanged(Configuration newConfig) {

		FileUtil.getInstance().write(context, "onConfigurationChanged");

		LogUtil.d(TAG, "onConfigurationChanged");

	}

	@Override

	public void onActivityResult(int requestCode, int resultCode, Intent data) {

		FileUtil.getInstance().write(context, "onActivityResult");

		LogUtil.d(TAG, "onActivityResult");

		// TODO Auto-generated method stub

	}

}
