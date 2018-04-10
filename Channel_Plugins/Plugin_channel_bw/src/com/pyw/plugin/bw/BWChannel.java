package com.pyw.plugin.bw;

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
import android.widget.Toast;

import com.mchsdk.open.GPExitResult;
import com.mchsdk.open.GPSDKInitResult;
import com.mchsdk.open.GPUserResult;
import com.mchsdk.open.IGPExitObsv;
import com.mchsdk.open.IGPSDKInitObsv;
import com.mchsdk.open.IGPUserObsv;
import com.mchsdk.open.MCApiFactory;
import com.mchsdk.open.OrderInfo;
import com.mchsdk.open.PayCallback;
import com.mchsdk.open.UploadRoleCallBack;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

/**
 * 
 * @author px 渠道号 58 gamekey 23aec5f9
 * 
 */
public class BWChannel extends PYWPlugin {

	private Context context;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, paycallback, logincallback,
			logoutcallback, gameExitcallback;
	private String mOrderID, roleID, serverId;

	@Override
	public void onCreate(Context context) {
	}

	public void init(final Context context, final HashMap params,
			executeCallback callback) {

		this.initcallback = callback;
		this.context = context;
		MCApiFactory.getMCApi().setParams("0", // 渠道id
				"自然注册",// 渠道名称
				"295", // 游戏id(编号)
				"沙城英雄(安卓版)",// 游戏名称
				"9A761B8B6A46597F3"// 游戏appid
				, "BQsPFB8CCQ0KAA==",// 访问秘钥：
				"http://www.91931.com/sdk.php/");// 联运SDK服务器地址

		// 2.初始化方法
		MCApiFactory.getMCApi().init(context, new IGPSDKInitObsv() {
  
			@Override
			public void onInitFinish(GPSDKInitResult arg0) {
				// TODO Auto-generated method stub

			}
		});
		if (null != initcallback) {
			initcallback.onExecutionSuccess(null);
		}

	}

	public void getRoleMessage(final Context context, HashMap params,
			final executeCallback callback) {
		serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? ""
				: params.get("serverArea") + "";
		roleID = TextUtils.isEmpty(params.get("roleName") + "") ? "" : params
				.get("roleName") + "";
		MCApiFactory.getMCApi().uploadRole(
				context,
				"295",
				serverId,
				TextUtils.isEmpty(params.get("serverAreaName") + "") ? ""
						: params.get("serverAreaName") + "",
				TextUtils.isEmpty(params.get("roleName") + "") ? "" : params
						.get("roleName") + "",
				TextUtils.isEmpty(params.get("roleLevel") + "") ? "" : params
						.get("roleLevel") + "", new UploadRoleCallBack() {

					@Override
					public void onUploadComplete(String arg0) {
					}
				});
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;
		MCApiFactory.getMCApi().startlogin(context, new IGPUserObsv() {

			@Override
			public void onFinish(GPUserResult result) {
				switch (result.getmErrCode()) {
				case GPUserResult.USER_RESULT_LOGIN_FAIL:

					((Activity) context).runOnUiThread(new Runnable() {

						@Override
						public void run() {
							logincallback.onExecutionFailure(0, "登录失败");
						}
					});

					break;
				case GPUserResult.USER_RESULT_LOGIN_SUCC:
					String uid = result.getAccountNo();// 登录用户id
					String token = result.getToken();
					final UserParams userParams = new UserParams();
					userParams.setSdkUserID(uid);
					userParams.setToken(token);
					userParams.setSuc(true);
					((Activity) context).runOnUiThread(new Runnable() {

						@Override
						public void run() {
							MCApiFactory.getMCApi().startFloating(context);
							logincallback.onExecutionSuccess(userParams);
						}
					});

					break;
				}
			}

		});
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
		System.out.println(params.toString());

		HashMap<String, Object> data = (HashMap<String, Object>) params
				.get("nameValuePairs");
		int rate = (Integer) data.get("rate");
		String price = (Integer) params.get("price") * rate * 100 + "";// 根据返回的比例去支付对应价格

		if (TextUtils.isEmpty(mOrderID) || TextUtils.isEmpty(productName)
				|| TextUtils.isEmpty(price)) {
			Toast.makeText(context, "pay params error!!!", Toast.LENGTH_SHORT)
					.show();
		}
		String extrol = params.get("channel_order_info") + "";
//		JSONObject jobj = new JSONObject();
//		try {
//
//			// 以下为非必要参数，只供参考，厂商可根据自身需求决定传什么参数与值或者不传
//			jobj.put("gamekey", PYWSDKManager.sGameKey);
//			jobj.put("game_version_code",
//					AppUtil.getVersionCode(SDKControler.getContext()) + "");
//			jobj.put("channel_order_sn", params.get("channel_order_sn") + "");
//			extrol = URLEncoder.encode(jobj.toString());
//		} catch (JSONException e) {
//			e.printStackTrace();
//		}
		OrderInfo order = new OrderInfo();
		order.setProductName(productName);// 物品名称
		order.setProductDesc(productName); // 物品描述
		order.setAmount(Integer.valueOf(price));// 商品价格（单位分）
		order.setExtendInfo(extrol); // 用于确认交易给玩家发 送商品
		order.setRoleName(roleID);
		order.setServerName(serverId);
		MCApiFactory.getMCApi().pay(context, order, new PayCallback() {

			@Override
			public void callback(String errorcode) {

				if ("0".equals(errorcode) || "1".equals(errorcode)) {
					PayResult payResult = new PayResult();
					payResult.setExtension("支付成功");
					payResult.setOrderID(mOrderID);
					payResult.setPayResult(true);
					final PluginPayResult pluginPayResult = new PluginPayResult();
					pluginPayResult
							.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
					pluginPayResult.setPayResult(payResult);
					((Activity) context).runOnUiThread(new Runnable() {

						@Override
						public void run() {
							paycallback.onExecutionSuccess(pluginPayResult);
						}
					});

				} else if ("2".equals(errorcode)) {
					((Activity) context).runOnUiThread(new Runnable() {

						@Override
						public void run() {
							paycallback.onExecutionFailure(1, mOrderID);
						}
					});

				}
			}
		});
	}

	public void logout(final Context context, HashMap params,
			executeCallback callback) {
		this.logoutcallback = callback;

	}

	public void gameExit(final Context context, HashMap params,
			final executeCallback callback) {

		this.gameExitcallback = callback;
		this.context = context;
		((Activity) context).runOnUiThread(new Runnable() {

			@Override
			public void run() {
				MCApiFactory.getMCApi().exitDialog(context, new IGPExitObsv() {

					@Override
					public void onExitFinish(GPExitResult exitResult) {
						switch (exitResult.mResultCode) {
						case GPExitResult.GPSDKExitResultCodeExitGame:
							// 关闭悬浮窗
							MCApiFactory.getMCApi().stopFloating(context);
							gameExitcallback.onExecutionSuccess(0);
							MCApiFactory.getMCApi().stopFloating(context);
							System.exit(0);
							break;
						default:
							break;
						}

					}
				});
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
		return "bw";
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
	public void onStop(Context context) {
		MCApiFactory.getMCApi().stopFloating(context);
		MCApiFactory.getMCApi().onStop(context);

	}

	public void onResume(Context context) {
		// 操作悬浮窗
		MCApiFactory.getMCApi().startFloating(context);
		MCApiFactory.getMCApi().onResume();
	}

	@Override
	public void onPause(Context context) {
	}

	@Override
	public void onDestroy(Context context) {
		MCApiFactory.getMCApi().stopFloating(context);
	}

	@Override
	public void onRestart(Context context) {
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

	@Override
	public void onStart(Context context) {

	}

}
