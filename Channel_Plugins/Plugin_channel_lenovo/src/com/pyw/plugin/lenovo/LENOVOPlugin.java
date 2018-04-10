package com.pyw.plugin.lenovo;

import java.net.URLEncoder;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.Log;

import com.lenovo.lsf.gamesdk.GamePayRequest;
import com.lenovo.lsf.gamesdk.IAuthResult;
import com.lenovo.lsf.gamesdk.IPayResult;
import com.lenovo.lsf.gamesdk.LenovoGameApi;
import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

/**
 * game_key: 78c23e62 渠道号： 129 渠道名称： 联想
 * <p>
 * Created by zhouq on 2018/2/27.
 */

public class LENOVOPlugin extends PYWPlugin {
	private static final String TAG = "LENOVOPlugin";

	private Context context;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, paycallback, logincallback, logoutcallback, gameExitcallback;
	private String mOrderID;
	private String serverId, serverAreaName, roleid, roleName, roleLevel, roleCreateTime;
	private String username;

	@Override
	public void onCreate(Context context) {

	}

	public void init(final Context context, final HashMap params, executeCallback callback) {
		this.initcallback = callback;
		this.context = context;
		LenovoGameApi.doInit((Activity) context, Config.appid);
		initcallback.onExecutionSuccess(null);
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
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;

		// 请不要在回调函数里进行UI操作，如需进行UI操作请使用handler将UI操作抛到主线程
		LenovoGameApi.doAutoLogin((Activity) context, new IAuthResult() {

			@Override
			public void onFinished(boolean ret, String data) {

				if (ret) {
					String token = data;
					UserParams userParams = new UserParams();
					userParams.setToken(token);
					userParams.setSdkUserID("channel_uid_is_null");
					userParams.setSuc(true);
					logincallback.onExecutionSuccess(userParams);

				} else {
					// 后台快速登录失败(失败原因开启飞行模式、 网络不通等)
					logincallback.onExecutionFailure(0, "登陆失败 :" + data);
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

		// String callBackUrl =
		// "http://unitysdkapi.pyw.cn/ChannelPayCallback/paySuccess/111/610048497433edc1c653744175570f67";
		int waresid = 0;
		if ("charge_6".equals(productId)) {
			waresid = 198981;
		} else if ("charge_30".equals(productId)) {
			waresid = 198982;
		} else if ("charge_98".equals(productId)) {
			waresid = 198983;
		} else if ("charge_198".equals(productId)) {
			waresid = 198984;
		} else if ("charge_328".equals(productId)) {
			waresid = 198985;
		} else if ("charge_648".equals(productId)) {
			waresid = 198986;
		} else if ("charge_1000".equals(productId)) {
			waresid = 198987;
		} else if ("charge_3000".equals(productId)) {
			waresid = 198988;
		}

		GamePayRequest payRequest = new GamePayRequest();
		// 请填写商品自己的参数
		payRequest.addParam("notifyurl", "");// 当前版本暂时不用，传空String
		payRequest.addParam("appid", Config.appid);
		payRequest.addParam("waresid", waresid);
		payRequest.addParam("exorderno", params.get("channel_order_sn") + "");
		payRequest.addParam("price", price * 100);
		payRequest.addParam("cpprivateinfo", extrol);

		LenovoGameApi.doPay((Activity) context, Config.appkey, payRequest, new IPayResult() {

			@Override
			public void onPayResult(int resultCode, String signValue, String resultInfo) {// resultInfo =
				// 应用编号&商品编号&外部订单号
				switch (resultCode) {
				case LenovoGameApi.PAY_SUCCESS:
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
				case LenovoGameApi.PAY_CANCEL:

					break;
				default:
					if (paycallback != null) {
						paycallback.onExecutionFailure(resultCode, "pay error  =" + resultInfo);
					}
					break;
				}

			}
		});

	}

	public void logout(final Context context, HashMap params, executeCallback callback) {
		this.logoutcallback = callback;
		// logoutcallback.onExecutionSuccess(0);
	}

	public void gameExit(final Context context, HashMap params, final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;

		// 退出游戏
		LenovoGameApi.doQuit((Activity) context, new IAuthResult() {

			@Override
			public void onFinished(boolean arg0, String arg1) {
				if (arg0) {
					gameExitcallback.onExecutionSuccess(0);
				} else {
				}

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
		return "lenovo";
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
