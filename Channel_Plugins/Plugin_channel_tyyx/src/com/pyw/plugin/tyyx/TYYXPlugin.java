package com.pyw.plugin.tyyx;

import java.net.URLEncoder;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;

import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;
import com.sdk.tysdk.TYFactory;
import com.sdk.tysdk.bean.ErrorMsg;
import com.sdk.tysdk.bean.LoginSucParam;
import com.sdk.tysdk.bean.PaymentCallbackInfo;
import com.sdk.tysdk.bean.PaymentErrorMsg;
import com.sdk.tysdk.bean.RealNameInfo;
import com.sdk.tysdk.bean.TYParam;
import com.sdk.tysdk.bean.TYPayParam;
import com.sdk.tysdk.interfaces.InitSDKListener;
import com.sdk.tysdk.interfaces.NeedLogoutCallBack;
import com.sdk.tysdk.interfaces.OnLoginListener;
import com.sdk.tysdk.interfaces.OnPaymentListener;
import com.sdk.tysdk.interfaces.SwitchUserCallBack;
import com.sdk.tysdk.interfaces.UserLoginOutFinishCallBack;

/**
 * 
 * game_key: 020986b2 渠道号： 94 渠道名称： 天宇游戏
 * 
 * @author zhouq
 * 
 */
public class TYYXPlugin extends PYWPlugin {

	private static final String TAG = "TYYXPlugin";

	private Context context;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, paycallback, logincallback,
			logoutcallback, gameExitcallback;
	private String mOrderID;
	private String serverId, serverAreaName, roleid, roleName, roleLevel;
	private TYParam mTyParam = new TYParam();

	@Override
	public void onCreate(Context context) {
	}

	public void init(final Context context, final HashMap params,
			executeCallback callback) {
		this.initcallback = callback;
		this.context = context;

		initSDK();
		switchUser();
	}

	private void initSDK() {
		mTyParam.TY_APPID = "61939";
		mTyParam.TY_CLIENTID = "1942";
		mTyParam.TY_CLIENTKEY = "4690e7bd8947ba099fb62309d5f96650";
		TYFactory.getTYApi().initSDK((Activity) context, mTyParam, false,
				new InitSDKListener() {
					@Override
					public void onSuccess() {
						initcallback.onExecutionSuccess(null);
					}
				});
	}

	private void switchUser() {
		// 切换用户回调
		TYFactory.getTYApi().switchUser((Activity) context,
				new SwitchUserCallBack() {
					@Override
					public void onSwitch() {
						// 切换用户 需要重新调用SDK初始化功能和登录
						TYFactory.getTYApi().initSDK((Activity) context,
								mTyParam, new InitSDKListener() {
									@Override
									public void onSuccess() {
										// 此处根据游戏需要 自行决定是否调用
										sdkLogin();
									}
								});
					}
				});
	}

	private void sdkLogin() {
		TYFactory.getTYApi().Login((Activity) context, new OnLoginListener() {

			@Override
			public void loginSuccess(LoginSucParam arg0, RealNameInfo arg1) {
				LogUtil.d(TAG, "LoginSucParam: user_token " + arg0.user_token + ",mem_id " + arg0.mem_id);
				TYFactory.getTYApi().showFloatView((Activity) context);
				String token = arg0.user_token;
				String userid = arg0.mem_id;
				UserParams userParams = new UserParams();
				userParams.setToken(token);
				userParams.setSdkUserID(userid);
				userParams.setSuc(true);
				logincallback.onExecutionSuccess(userParams);
			}

			@Override
			@Deprecated
			public void loginError(ErrorMsg arg0) {
				logincallback
						.onExecutionFailure(arg0.code, "登陆失败 :" + arg0.msg);
			}
		}, new NeedLogoutCallBack() {

			@Override
			public void onLoginOut() {
				TYFactory.getTYApi().exit((Activity) context);
				logoutcallback.onExecutionSuccess(0);
			}
		});
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

		JSONObject jsonObject = new JSONObject();
		try {
			jsonObject.put("roleid", roleid); // 当前登录的玩家角色 ID，必须为数字
			jsonObject.put("rolename", roleName); // 当前登录的玩家角色名，不能为空，不能为 null
			jsonObject.put("rolelevel", roleLevel); // 当前登录的玩家角色等级，必须为数字，且不能为 0，
													// 若无，传入
			// 1
			jsonObject.put("zoneid", serverId); // 当前登录的游戏区服 ID，必须为数字，且不能为 0，
												// 若无，传入 1
			jsonObject.put("zonename", serverAreaName); // 当前登录的游戏区服名称，不能为空，不能为
														// null
			jsonObject.put("balance", "0"); // 用户游戏币余额，必须为数字，若无，传入 0
			jsonObject.put("vip", "1"); // 当前用户 VIP 等级，必须为数字，若无，传入 1
			jsonObject.put("partyname", "无帮派");// 当前角色所属帮派，不能为空，不能为 null，若无，
												// 传入“无帮派”
			jsonObject.put("rolectime", System.currentTimeMillis() + ""); // 单位为秒，创建角色的时间
			jsonObject.put("rolelevelimtime", System.currentTimeMillis() + ""); // 单位为秒，角色等级变化时间
		} catch (JSONException e) {
			e.printStackTrace();
		}
		TYFactory.getTYApi().setInfo((Activity) context, jsonObject);
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;
		sdkLogin();
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
		int price = (Integer) params.get("price");
		String extrol = params.get("channel_order_info") + "";
		TYPayParam p = new TYPayParam();
		p.roleid = roleid;
		p.money = (double) price;
		p.serverid = serverId;
		p.productname = productName;
		p.productdesc = productName;
		p.attach = extrol;
		p.remark = "备注";
		TYFactory.getTYApi().Pay((Activity) context, p,
				new OnPaymentListener() {
					@Override
					public void paymentSuccess(PaymentCallbackInfo callbackInfo) {
						String msg = callbackInfo.msg;
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
					}

					@Override
					public void paymentError(PaymentErrorMsg errorMsg) {
						double money = errorMsg.money;
						if (paycallback != null) {
							paycallback.onExecutionFailure(errorMsg.code,
									"pay error  =" + errorMsg.msg);
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
		TYFactory.getTYApi().LogOut((Activity) context, // 当前activity实例
				new UserLoginOutFinishCallBack() { // 调用退出回调
					@Override
					public Activity LoginOut() {
						// 返回最外层activity的实例,由SDK来关闭app
						// 如果传null 则由调用者自行决定是否关闭app
						gameExitcallback.onExecutionSuccess(0);
						return (Activity) context;
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
		return "tyyx";
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
		TYFactory.getTYApi().showFloatView((Activity) context);
	}

	@Override
	public void onDestroy(Context context) {

	}

	@Override
	public void onRestart(Context context) {
	}

	@Override
	public void onStop(Context context) {
		TYFactory.getTYApi().removeFloatView((Activity) context);
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
		TYFactory.getTYApi().showFloatView((Activity) context);
	}

	/**
	 * 
	 * 隐藏浮点
	 * 
	 */
	public void hideFloatView() {
		TYFactory.getTYApi().removeFloatView((Activity) context);
	}

}
