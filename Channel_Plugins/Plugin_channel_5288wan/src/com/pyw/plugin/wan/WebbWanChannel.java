package com.pyw.plugin.wan;

import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.widget.Toast;

import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.Base64;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.KeyCodes;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;
import com.yyjia.sdk.center.GMcenter;
import com.yyjia.sdk.data.Information;
import com.yyjia.sdk.listener.InitListener;
import com.yyjia.sdk.listener.LoginListener;
import com.yyjia.sdk.listener.PayListener;
/**
 * 穎銘
 * 渠道號：39
 * @author zhj
 *
 */
public class WebbWanChannel extends PYWPlugin {
	public static final String TAG = "WebbWanChannel";
	private GMcenter mCenter = null;
	private String mOrderID;
	private HashMap<String, Object> mSdkParams;
	private executeCallback initcallback, playerInfocallback, paycallback, logincall, logoutcallback;
	private Context context;
	private Activity mActivity;

	@Override
	public void onCreate(Context context) {
		this.context = context;
	}

	public void init(final Context context, HashMap params, executeCallback callback) {
		this.initcallback = callback;
		if (mCenter == null) {
			mCenter = GMcenter.getInstance(context);
			// 登录登出监听器
			mCenter.setLoginListener(new LoginListener() {
				// 登录监听方法
				@Override
				public void loginSuccessed(String code) {
					if (logincall != null) {
						if (code == Information.LOGIN_SUSECCEDS) {
							mCenter.showFloatingView((Activity) context);
							UserParams pa = new UserParams();
							pa.setSdkUserID(mCenter.getUid() + "");
							pa.setToken(mCenter.getSid());
							pa.setUsername(mCenter.getUsername());
							logincall.onExecutionSuccess(pa);
							LogUtil.d(TAG, "loginsuccess:" + pa.toString());
						} else {
							logincall.onExecutionFailure(0, "login failed");
						}
					}
				}

				// 登出监听方法
				public void logoutSuccessed(String code) {
					if (logoutcallback != null) {
						if (code == Information.LOGOUT_SUSECCED) {
							LogUtil.d(TAG, "loutsuccess");
							// 账号 退出 游戏需要重启到 登录界面
							logoutcallback.onExecutionSuccess(null);
						} else {
							logoutcallback.onExecutionFailure(-1, "logout failed");
						}
					}
				}

				@Override
				public void logcancelSuccessed(String code) {
					if (code == Information.LOGCANCEL_SUSECCED) {

					}
				}
			});

			mCenter.setInitListener(new InitListener() {
				@Override
				public void initSuccessed(String code) {
					// 监听SDK初始化 如果初始化成功 可以选择适合时间登陆
					if (code == Information.INITSUCCESSEDS) {
						initcallback.onExecutionSuccess(null);
					}
				}
			});

		}

		mCenter.onCreate((Activity) context);
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincall = callback;
		mActivity = (Activity) context;
		mCenter.checkLogin();
	}

	public void switchLogin(Context context, HashMap params, executeCallback callback) {
		this.logoutcallback = callback;
		this.context = context;
		mCenter.logout();
	}

	public void getRoleMessage(Context context, HashMap params, final executeCallback callback) {
		try {
			mCenter.submitRoleInfo(
					TextUtils.isEmpty(params.get("serverArea") + "") ? "" : params.get("serverArea") + "",
					TextUtils.isEmpty(params.get("serverAreaName") + "") ? "" : params.get("serverAreaName") + "",
					TextUtils.isEmpty(params.get("roleid") + "") ? "" : params.get("roleid") + "",
					TextUtils.isEmpty(params.get("roleName") + "") ? "" : params.get("roleName") + "",
					TextUtils.isEmpty(params.get("roleLevel") + "") ? "" : params.get("roleLevel") + "",
					TextUtils.isEmpty(params.get("roleCreateTime") + "") ? "" : params.get("roleCreateTime") + "");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void pay(final Context context, HashMap params, final executeCallback callback) {
		this.paycallback = callback;


		String price = params.get("price") + "";
		mOrderID = params.get("orderID") + "";
		String productName = params.get("productName") + "";
		String serverId = params.get("serverId") + "";
		String roleId = params.get("roleId") + "";
		float d = Float.parseFloat(price);
		String extention = params.get("channel_order_info") + "";
//		String extention = getextention(params);

		if (d < 1) {
			Toast.makeText(context, "金额不能少于0.01元", 1).show();
			return;
		}

		if (TextUtils.isEmpty(mOrderID) || TextUtils.isEmpty(productName) || TextUtils.isEmpty(price)) {

			callback.onExecutionFailure(0, "pay params error!!!");
		}


		mCenter.pay((Activity) context, d, productName, serverId, roleId, mOrderID, extention, new PayListener() {

			@Override
			public void paySuccessed(String code, String cporderid) {
				if (code == Information.PAY_SUSECCED) {
					com.pyw.open.PayResult p = new com.pyw.open.PayResult();
					p.setExtension("支付成功");
					p.setOrderID(cporderid);
					p.setPayResult(true);
					PluginPayResult pluginPayResult = new PluginPayResult();
					pluginPayResult.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
					pluginPayResult.setPayResult(p);
					paycallback.onExecutionSuccess(pluginPayResult);
				} else {
					paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT, "pay failed");
				}
			}

			@Override
			public void payGoBack() {
				paycallback.onExecutionFailure(0, "pay cancle");
			}
		});
	}

//	private String getextention(HashMap map) {
//		JSONObject jobj = new JSONObject();
//		try {
//			jobj.put("gamekey", PYWSDKManager.sGameKey);
//			jobj.put("game_version_code", AppUtil.getVersionCode(mActivity) + "");
//			jobj.put("channel_order_sn", map.get("channel_order_sn") + "");
//		} catch (JSONException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return Base64.encodeToString(jobj.toString());
//	}

	public void setCallback(Context context, final Callback callback) {

	}

	public void hideFloatView(Context context, HashMap params, executeCallback callback) {
		if (mCenter != null)
			mCenter.hideFloatingView(mActivity);
	}

	public void showFloatView(Context context, HashMap params, executeCallback callback) {
		if (mCenter != null)
			mCenter.showFloatingView(mActivity);
	}

	public void logout(Context context, HashMap params, executeCallback callback) {
		mCenter.logout();
		logoutcallback = callback;
		mCenter.logout();
	}

	public void gameExit(final Context context, HashMap params, final executeCallback callback) {
		callback.onExecutionSuccess(0);
	}

	public String getName(Context context) {
		return "webbwan";
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
		if (mCenter != null) {
			mCenter.hideFloatingView(mActivity);
		}
	}

	@Override
	public void onResume(Context context) {
		if (mCenter != null) {
			mCenter.showFloatingView(mActivity);
		}
	}

	@Override
	public void onDestroy(Context context) {
		if (mCenter != null) {
			mCenter.onDestroy(mActivity);
		}
	}

	@Override
	public void onRestart(Context context) {

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
	public void onStop(Context context) {

	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		if (mCenter != null) {
			mCenter.onActivityResult(mActivity, requestCode, resultCode, data);
		}
	}

}
