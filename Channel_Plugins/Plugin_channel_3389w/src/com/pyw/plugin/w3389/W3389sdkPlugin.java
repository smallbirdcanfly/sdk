package com.pyw.plugin.w3389;

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
import com.yyjia.sdk.center.GMcenter;
import com.yyjia.sdk.data.Information;
import com.yyjia.sdk.listener.InitListener;
import com.yyjia.sdk.listener.LoginListener;
import com.yyjia.sdk.listener.PayListener;

/*
 * game_key :020986b2  渠道号：84  渠道名称： 逆风鳞 3899W
 * 注意：需要将 comdragonstarsdkplugin.bin 放到assets下面
 * @author pengpx
 */
public class W3389sdkPlugin extends PYWPlugin {

	private Context context;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, paycallback, logincallback,
			logoutcallback, gameExitcallback;
	private String mOrderID, serverId, roleId;
	private GMcenter mCenter = null;

	@Override
	public void onCreate(Context context) {
		// if (mCenter != null && context instanceof Activity) {
		// mCenter.onCreate((Activity) context);
		// }
//		LogUtil.d("W3389--onCreate---->>");
	}

	public void init(Context context, final HashMap params,
			executeCallback callback) {
		this.initcallback = callback;
		this.context = context;
		if (mCenter == null) {
			mCenter = GMcenter.getInstance(context);
		}
		mCenter.setInitListener(new InitListener() {

			@Override
			public void onSuccess(int code) {
				LogUtil.d("W3389--onInitSuccess---->>" + "code:" + code);
				if (null != initcallback) {
					initcallback.onExecutionSuccess(null);
				}
			}

			@Override
			public void onFailure(int code, String msg) {
				LogUtil.d("W3389--onInitSuccess---->>" + "code:" + code
						+ "\nmsg:" + msg);
				if (null != initcallback) {
					initcallback.onExecutionFailure(0, msg);
				}
				if (code == Information.CODE_GET_APP_ID_ERROR) {
					// 获取AppId失败
				} else if (code == Information.CODE_NET_TIME_OUT) {
					// 网络连接超时
				} else if (code == Information.CODE_SERVER_RETURN_DATA_ERROR) {
					// 服务端返回数据错误
				}
			}
		});
		mCenter.onCreate((Activity) context);
	}

	public void getRoleMessage(final Context context, HashMap params,
			final executeCallback callback) {

		serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? ""
				: (params.get("serverArea") + "");
		roleId = TextUtils.isEmpty(params.get("roleid") + "") ? "" : (params
				.get("roleid") + "");
		String roleLevel = TextUtils.isEmpty(params.get("roleLevel") + "") ? ""
				: (params.get("roleLevel") + "");
		int role_level = 0;
		try {
			role_level = Integer.parseInt(roleLevel);
		} catch (Exception e) {
			role_level = 0;
		}
		String roleName = TextUtils.isEmpty(params.get("roleName") + "") ? ""
				: (params.get("roleName") + "");
		String serverAreaName = TextUtils.isEmpty(params.get("serverAreaName")
				+ "") ? "" : (params.get("serverAreaName") + "");

		// 当角色信息变动的时候调用这个接口（例如角色创建、升级等情况）
		mCenter.submitRoleInfo(serverId, serverAreaName, roleId, roleName,
				role_level + "", "" + System.currentTimeMillis() / 1000);
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;

		// 登录登出监听器
		mCenter.setLoginListener(new LoginListener() {
			// 登录监听方法
			@Override
			public void loginSuccessed(String code) {
				if (code == Information.LOGIN_SUSECCEDS) {
					// SDK登录成功 游戏(服务端)请求 登录验证
					// 一般登陆成功后需要显示浮点
					mCenter.showFloatingView((Activity) context);
					LogUtil.d("W3389--loginSuccessed---->>" + "登陆成功 memId="
							+ mCenter.getUid() + "  token=" + mCenter.getSid());
					UserParams userParams = new UserParams();
					userParams.setToken(mCenter.getSid());
					userParams.setSdkUserID(mCenter.getUid() + "");
					userParams.setSuc(true);
					logincallback.onExecutionSuccess(userParams);
				} else {
					LogUtil.d("W3389--loginError---->>" + " code=" + code);
					logincallback.onExecutionFailure(0, "登陆失败 ");
				}
			}

			// 登出监听方法
			public void logoutSuccessed(String code) {
				if (code == Information.LOGOUT_SUSECCED) {
					// 账号 退出 游戏需要重启到 登录界面
					LogUtil.d("W3389--LOGOUT_SUSECCED---->>" + " code=" + code);
					if (logoutcallback != null) {
						logoutcallback.onExecutionSuccess(0);
					}
				} else {
					LogUtil.d("W3389--logoutError---->>" + " code=" + code);
					if (logoutcallback != null) {
						logoutcallback.onExecutionFailure(0, "登出失败");
					}
				}
			}

			@Override
			public void logcancelSuccessed(String code) {
				if (code == Information.LOGCANCEL_SUSECCED) {
					// ToastUtil.showShortToast(MainActivity.this,
					// "CACEL LOGIN");
				}
			}
		});
		mCenter.checkLogin();
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
		final float amount = Float.valueOf(params.get("price") + "");

		String channel_order_sn = params.get("channel_order_sn") + "";
		// serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? ""
		// : (params.get("serverArea") + "");
		// String roleid = TextUtils.isEmpty(params.get("roleid") + "") ? ""
		// : (params.get("roleid") + "");
		String extrol = params.get("channel_order_info") + "";
		String game_key = PYWSDKManager.sGameKey;
		String game_version_code = com.pengyouwan.sdk.utils.AppUtil
				.getVersionCode(SDKControler.getContext()) + "";
//		LogUtil.d("W3389--game_key---->>" + game_key);

//		JSONObject jobj = new JSONObject();
//		try {
//
//			// 以下为非必要参数，只供参考，厂商可根据自身需求决定传什么参数与值或者不传
//			jobj.put("gamekey", PYWSDKManager.sGameKey);
//			jobj.put("game_version_code", game_version_code);
//			extrol = URLEncoder.encode(jobj.toString());
//		} catch (JSONException e) {
//			e.printStackTrace();
//		}

//		LogUtil.d("W3389--extrol---->>" + extrol);
//		LogUtil.d("W3389--roleId---->>" + roleId);
//		LogUtil.d("W3389--serverId---->>" + serverId);

		mCenter.pay((Activity) context, amount, productName, serverId, roleId,
				channel_order_sn, extrol, new PayListener() {
					@Override
					public void paySuccessed(String code, String cporderid) {
						if (code == Information.PAY_SUSECCED) {
							float money = amount;
							LogUtil.d("W3389--paySuccessed---->>" + "-code:"
									+ code);
							PayResult payResult = new PayResult();
							payResult.setExtension("支付成功");
							payResult.setOrderID(cporderid);
							payResult.setPayResult(true);
							PluginPayResult pluginPayResult = new PluginPayResult();
							pluginPayResult
									.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
							pluginPayResult.setPayResult(payResult);
							paycallback.onExecutionSuccess(pluginPayResult);
						} else {
							LogUtil.d("W3389--PAY FAIL---->>");
							paycallback.onExecutionFailure(0, "pay error  =");
						}
					}

					@Override
					public void payGoBack() {
						LogUtil.d("W3389--payGoBack---->>");
						paycallback.onExecutionFailure(0, "pay error  =");
					}

				});
	}

	public void logout(final Context context, HashMap params,
			executeCallback callback) {
		this.logoutcallback = callback;

		mCenter.logout();
		if (logoutcallback != null) {
			logoutcallback.onExecutionSuccess(0);
		}
	}

	public void gameExit(final Context context, HashMap params,
			final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
		LogUtil.d("W3389--gameExit---->>");
		if (context instanceof Activity) {
			Activity activity = (Activity) context;
			mCenter.exitGame((Activity) context);

			if (gameExitcallback != null) {
				gameExitcallback.onExecutionSuccess(0);
			}
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
		return "w3389";
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
		if (mCenter != null && context instanceof Activity) {
			mCenter.onPause((Activity) context);
			mCenter.hideFloatingView((Activity) context);
		}
	}

	@Override
	public void onResume(Context context) {
		if (mCenter != null && context instanceof Activity) {
			mCenter.onResume((Activity) context);
		}
	}

	@Override
	public void onDestroy(Context context) {
		if (mCenter != null && context instanceof Activity) {
			mCenter.onDestroy((Activity) context);
		}
	}

	@Override
	public void onRestart(Context context) {
		if (mCenter != null && context instanceof Activity) {
			mCenter.onRestart((Activity) context);
		}
	}

	@Override
	public void onStop(Context context) {
		if (mCenter != null && context instanceof Activity) {
			mCenter.onStop((Activity) context);
		}
	}

	@Override
	public void onStart(Context context) {
		if (mCenter != null && context instanceof Activity) {
			mCenter.onStart((Activity) context);
		}
	}

	@Override
	public void onNewIntent(Intent intent) {

	}

	@Override
	public void onConfigurationChanged(Configuration newConfig) {

	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		if (mCenter != null && context instanceof Activity) {
			mCenter.onActivityResult((Activity) context, requestCode,
					resultCode, data);
		}
	}

}
