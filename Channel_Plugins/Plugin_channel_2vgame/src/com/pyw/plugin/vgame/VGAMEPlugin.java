package com.pyw.plugin.vgame;

import java.net.URLEncoder;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.Log;

import com.mchsdk.open.GPExitResult;
import com.mchsdk.open.GPSDKInitResult;
import com.mchsdk.open.GPUserResult;
import com.mchsdk.open.IGPExitObsv;
import com.mchsdk.open.IGPSDKInitObsv;
import com.mchsdk.open.IGPUserObsv;
import com.mchsdk.open.MCApiFactory;
import com.mchsdk.open.OrderInfo;
import com.mchsdk.open.PayCallback;
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
 * game_key: 020986b2 渠道号： 0 渠道名称： 2V游戏
 * 
 * @author zhouq
 * 
 */
public class VGAMEPlugin extends PYWPlugin {

	private Context context;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, paycallback, logincallback,
			logoutcallback, gameExitcallback;
	private String mOrderID;

	@Override
	public void onCreate(Context context) {
	}

	public void init(Context context, final HashMap params,
			executeCallback callback) {
		this.initcallback = callback;
		this.context = context;

		initSDK();

		if (null != initcallback) {
			initcallback.onExecutionSuccess(null);
		}
	}

	private void initSDK() {
		MCApiFactory.getMCApi().setParams("0", // 渠道id
				"自然注册",// 渠道名称
				"147", // 游戏id(编号)
				"决战传奇(安卓版)",// 游戏名称
				"07E1E9BF4DFE68D17"// 游戏appid
				, "DRQCBFpTVllUXFVU",// 访问秘钥： (SDK访问服务器时的加密key)
				"http://www.2vyx.com/sdk.php/");// 联运SDK服务器地址

		// 2.初始化方法
		MCApiFactory.getMCApi().init(context, initObsv);

		/** 3. 个人中心里面点击退出登录执行的退出回调接口,根据实际需要选择 **/
		MCApiFactory.getMCApi().initExitFromPersonInfoParams(mExitObsvPerson);
		/** 设置测试 打包参数 ，设置以后，如果apk没有在平台打包，sdk会调用这里面设置的参数 */
		/** 渠道信息优先级，真实打包 > 这里填写的测试信息 > 联运后台设置的默认参数> sdk里面的测试参数 */
	}

	/** * 初始化回调接口 */
	private IGPSDKInitObsv initObsv = new IGPSDKInitObsv() {
		// 这个接口需要正常调用，回调不会执行
		@Override
		public void onInitFinish(GPSDKInitResult initResult) {
		}
	};

	/**
	 * 个人中心退出方法回调，这个接口现在用不到了
	 */
	private IGPExitObsv mExitObsvPerson = new IGPExitObsv() {

		@Override
		public void onExitFinish(GPExitResult gpExitResult) {
			switch (gpExitResult.mResultCode) {
			case GPExitResult.GPSDKResultCodeOfPersonInfo:
				// writeLog("个人中心的退出帐号的回调");
				break;
			default:
				break;
			}
		}
	};

	/** * 退出界面回调接口 */
	private IGPExitObsv mExitObsv = new IGPExitObsv() {
		@Override
		public void onExitFinish(GPExitResult exitResult) {
			switch (exitResult.mResultCode) {
			case GPExitResult.GPSDKExitResultCodeExitGame:
				// writeLog("退出回调:退出方法回调");
				// 关闭悬浮窗
				MCApiFactory.getMCApi().stopFloating(context);
				// 下面是退出逻辑,解决退出之后微信还在的问题
				Intent MyIntent = new Intent(Intent.ACTION_MAIN);
				MyIntent.addCategory(Intent.CATEGORY_HOME);
				context.startActivity(MyIntent);

				// 你自己的退出逻辑，退出程序
				gameExitcallback.onExecutionSuccess(0);
				break;
			default:
				break;
			}
		}
	};

	/** * 登录回调接口 */
	private IGPUserObsv mUserObsv = new IGPUserObsv() {
		@Override
		public void onFinish(GPUserResult result) {
			switch (result.getmErrCode()) {
			case GPUserResult.USER_RESULT_LOGIN_FAIL:
				Log.d("px", "登录失败:" + GPUserResult.USER_RESULT_LOGIN_FAIL);
				logincallback.onExecutionFailure(
						GPUserResult.USER_RESULT_LOGIN_FAIL, "登陆失败 :"
								+ GPUserResult.USER_RESULT_LOGIN_FAIL);
				break;
			case GPUserResult.USER_RESULT_LOGIN_SUCC:
				Log.d("px", "登录成功：" + GPUserResult.USER_RESULT_LOGIN_SUCC);
				MCApiFactory.getMCApi().startFloating(context);
				String userid = result.getAccountNo();// 登录用户id
				String token = result.getToken();

				UserParams userParams = new UserParams();
				userParams.setToken(token);
				userParams.setSdkUserID(userid);
				userParams.setSuc(true);
				logincallback.onExecutionSuccess(userParams);

				// 设置防沉迷回调
				// MCApiFactory.getMCApi().initAnnounceTimeCallBack(announceTimeCallBack);
				break;
			}
		}
	};
	/**
	 * 支付结果回调
	 */
	private PayCallback payCallback = new PayCallback() {
		@Override
		public void callback(String errorcode) {
			if (TextUtils.isEmpty(errorcode)) {
				return;
			}
			if ("0".equals(errorcode) || "1".equals(errorcode)) {
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
			} else {
				if (paycallback != null) {
					paycallback.onExecutionFailure(
							KeyCodes.ERROR_PLUGIN_DEFAULT, "pay error  ="
									+ errorcode);
				}
			}

			// if (TextUtils.isEmpty(errorcode)) {
			// return;
			// }
			// if ("0".equals(errorcode)) {
			// Toast.makeText(context, "支付成功", Toast.LENGTH_LONG).show();
			// } else if ("1".equals(errorcode)) {
			// // 可以当做支付成功
			// Toast.makeText(context, "支付宝支付正在确认", Toast.LENGTH_LONG).show();
			// } else if ("2".equals(errorcode)) {
			// Toast.makeText(context, "支付宝支付未获取到支付结果", Toast.LENGTH_LONG)
			// .show();
			// } else {
			// Toast.makeText(context, "支付失败", Toast.LENGTH_LONG).show();
			// }
		}
	};

	public void getRoleMessage(final Context context, HashMap params,
			final executeCallback callback) {

		String roleid = TextUtils.isEmpty(params.get("roleid") + "") ? ""
				: params.get("roleid") + "";
		String roleName = TextUtils.isEmpty(params.get("roleName") + "") ? ""
				: params.get("roleName") + "";
		String roleLevel = TextUtils.isEmpty(params.get("roleLevel") + "") ? ""
				: params.get("roleLevel") + "";
		String serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? ""
				: params.get("serverArea") + "";
		String serverAreaName = TextUtils.isEmpty(params.get("serverAreaName")
				+ "") ? "" : params.get("serverAreaName") + "";
		MCApiFactory.getMCApi().changePlayerLevel(roleLevel, null);
		MCApiFactory.getMCApi().changeRoleName(roleName, null);

	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;

		MCApiFactory.getMCApi().startlogin(context, mUserObsv);

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
		int amount = (Integer) params.get("price") * 100;

		String extrol = params.get("channel_order_info") + "";
//		JSONObject jobj = new JSONObject();
//		try {
//
//			// 以下为非必要参数，只供参考，厂商可根据自身需求决定传什么参数与值或者不传
//			jobj.put("gamekey", PYWSDKManager.sGameKey);
//			jobj.put(
//					"game_version_code",
//					com.pengyouwan.sdk.utils.AppUtil
//							.getVersionCode(SDKControler.getContext()) + "");
//			jobj.put("channel_order_sn", params.get("channel_order_sn") + "");
//			extrol = URLEncoder.encode(jobj.toString());
//		} catch (JSONException e) {
//			e.printStackTrace();
//		}

		OrderInfo order = new OrderInfo();
		order.setProductName(productName);// 物品名称
		order.setProductDesc(productName); // 物品描述
		order.setAmount(amount);// 商品价格（单位分）
		order.setExtendInfo(extrol); // 用于确认交易给玩家发送商品
		MCApiFactory.getMCApi().pay(context, order, payCallback);

	}

	public void logout(final Context context, HashMap params,
			executeCallback callback) {
		this.logoutcallback = callback;

		logoutcallback.onExecutionSuccess(0);
	}

	public void gameExit(final Context context, HashMap params,
			final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
		MCApiFactory.getMCApi().exitDialog(context, mExitObsv);

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
		return "2vgame";
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
		// 操作悬浮窗
		MCApiFactory.getMCApi().startFloating(context);
		MCApiFactory.getMCApi().onResume();
	}

	@Override
	public void onDestroy(Context context) {
		MCApiFactory.getMCApi().stopFloating(context);
	}

	@Override
	public void onRestart(Context context) {
	}

	@Override
	public void onStop(Context context) {
		MCApiFactory.getMCApi().stopFloating(context);
		MCApiFactory.getMCApi().onStop(context);
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
		MCApiFactory.getMCApi().startFloating(context);
	}

	/**
	 * 
	 * 隐藏浮点
	 * 
	 */
	public void hideFloatView() {
		MCApiFactory.getMCApi().stopFloating(context);
	}

}
