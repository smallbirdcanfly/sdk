package com.pyw.plugin.yyb;

import java.io.ByteArrayOutputStream;
import java.util.HashMap;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.Toast;

import com.pengyouwan.framework.utils.LogUtil;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.open.KeyCodes;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;
import com.tencent.ysdk.api.YSDKApi;
import com.tencent.ysdk.framework.common.BaseRet;
import com.tencent.ysdk.framework.common.eFlag;
import com.tencent.ysdk.framework.common.ePlatform;
import com.tencent.ysdk.module.pay.PayListener;
import com.tencent.ysdk.module.pay.PayRet;
import com.tencent.ysdk.module.user.UserListener;
import com.tencent.ysdk.module.user.UserLoginRet;
import com.tencent.ysdk.module.user.UserRelationRet;
import com.tencent.ysdk.module.user.WakeupRet;

public class YYBChannel extends PYWPlugin implements UserListener, PayListener {

	public static final String TAG = "px";
	private Context context;
	private PYWPluginExecutor.Callback sdklogoutcallback;
	private executeCallback initcallback, paycallback, logincallback,
			logoutcallback, gameExitcallback;
	private String mOrderID;
	private UserParams userParams;
	private boolean isDiff;

	@Override
	public void onCreate(Context context) {
		LogUtil.d(TAG, "onCreate");
	}

	public void init(final Context context, final HashMap params,
			executeCallback callback) {
		this.initcallback = callback;
		this.context = context;
		userParams = new UserParams();
		isDiff = false;
		YSDKApi.onCreate((Activity) context);
		YSDKApi.setUserListener(this);
		if (null != initcallback) {
			initcallback.onExecutionSuccess(null);
		}
	}

	public void getRoleMessage(final Context context, HashMap params,
			final executeCallback callback) {
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;
		UserLoginRet ret = new UserLoginRet();
		YSDKApi.getLoginRecord(ret);

		if (TextUtils.isEmpty(ret.open_id) || isDiff) {
			new YybLoginDialog(context, 0).show();
		} else {
			String login_type = ret.pf.contains("wx") ? "wx" : "qq";
			userParams.setSdkUserID(ret.open_id);// 用户授权后平台返回的唯一标识
			if (login_type.equals("wx")) {
				userParams.setToken(ret.getPayToken() + "|" + login_type);
			} else {
				userParams.setToken(ret.getAccessToken() + "|" + login_type);
			}
			userParams.setPay_token(ret.getPayToken());
			userParams.setPf(ret.pf);
			userParams.setPfkey(ret.pf_key);
			logincallback.onExecutionSuccess(userParams);
		}

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
		String price = (Integer) params.get("price") * rate + "";// 根据返回的比例去支付对应价格

		if (TextUtils.isEmpty(mOrderID) || TextUtils.isEmpty(productName)
				|| TextUtils.isEmpty(price)) {
			Toast.makeText(context, "pay params error!!!", Toast.LENGTH_SHORT)
					.show();
		}
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		byte[] appResData = baos.toByteArray();
		YSDKApi.recharge("1", price, false, appResData, "ysdkExt", this);
	}

	// 获取当前登录平台
	private static ePlatform getPlatform() {
		UserLoginRet ret = new UserLoginRet();
		YSDKApi.getLoginRecord(ret);
		if (ret.flag == eFlag.Succ) {
			return ePlatform.getEnum(ret.platform);
		}
		return ePlatform.None;
	}

	public void logout(final Context context, HashMap params,
			executeCallback callback) {
		this.logoutcallback = callback;
		YSDKApi.logout();
		isDiff = true;

	}

	public void gameExit(final Context context, HashMap params,
			final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;
		System.exit(0);
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
	public void OnPayNotify(PayRet ret) {
		// PayResult [productID=null, productName=null,
		// orderID=201704261434106622, extension=支付成功, payResult=true]
		PayResult payResult;

		if (PayRet.RET_SUCC == ret.ret) {
			// 支付流程成功
			switch (ret.payState) {
			// 支付成功
			case PayRet.PAYSTATE_PAYSUCC:
				payResult = new PayResult();
				payResult.setExtension("支付成功");
				payResult.setOrderID(mOrderID);
				payResult.setPayResult(true);
				PluginPayResult pluginPayResult = new PluginPayResult();
				pluginPayResult.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
				pluginPayResult.setPayResult(payResult);
				paycallback.onExecutionSuccess(pluginPayResult);
				break;
			// 取消支付
			case PayRet.PAYSTATE_PAYCANCEL:
				paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
						"取消支付");

				break;
			// 支付结果未知
			case PayRet.PAYSTATE_PAYUNKOWN:
				paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
						"充值失败");
				break;
			// 支付失败
			case PayRet.PAYSTATE_PAYERROR:
				paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
						" 支付失败");
				break;
			}
		} else {
			// 支付流程失败
			switch (ret.flag) {
			case eFlag.Login_TokenInvalid:
				letUserLogout();
				paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
						"充值失败");
				break;
			case eFlag.Pay_User_Cancle:
				// 用户取消支付
				paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
						"充值失败");
				break;
			case eFlag.Pay_Param_Error:
				paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
						"充值失败");
				break;
			default:
				paycallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
						"充值失败");
				break;
			}
		}
	}

	@Override
	public void OnLoginNotify(UserLoginRet ret) {
		String login_type = ret.pf.contains("wx") ? "wx" : "qq";
		switch (ret.flag) {
		case eFlag.Succ:
			Log.d("px", "应用宝登录成功");
			userParams.setSdkUserID(ret.open_id);// 用户授权后平台返回的唯一标识
			if (login_type.equals("wx")) {
				userParams.setToken(ret.getPayToken() + "|" + login_type);
			} else {
				userParams.setToken(ret.getAccessToken() + "|" + login_type);
			}
			userParams.setPay_token(ret.getPayToken());
			userParams.setPf(ret.pf);
			userParams.setPfkey(ret.pf_key);
			if (logincallback != null) {
				isDiff = false;
				logincallback.onExecutionSuccess(userParams);
			}
			break;
		case eFlag.QQ_NotSupportApi:
			Toast.makeText(context, "手机未安装手Q，请安装后重试", Toast.LENGTH_SHORT)
					.show();
			if (logincallback != null) {
				logincallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
						"手机未安装手Q，请安装后重试");
				// 显示登陆界面
				letUserLogout();
			}
			break;
		case eFlag.QQ_NotInstall:
			Toast.makeText(context, "手机手Q版本太低，请升级后重试", Toast.LENGTH_SHORT)
					.show();
			if (logincallback != null) {
				logincallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
						"手机手Q版本太低，请升级后重试");
				// 显示登陆界面
				letUserLogout();
			}
			break;
		// 游戏逻辑，对登陆失败情况分别进行处理
		case eFlag.QQ_NetworkErr:
			Toast.makeText(context, "QQ登录异常，请重试", Toast.LENGTH_SHORT).show();
			if (logincallback != null) {
				logincallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
						"QQ登录异常，请重试");
				// 显示登陆界面
				letUserLogout();
			}
			break;
		case eFlag.WX_UserCancel:
		case eFlag.QQ_UserCancel:
			Toast.makeText(context, "用户取消授权，请重试", Toast.LENGTH_SHORT).show();
			if (logincallback != null) {
				logincallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
						"用户取消授权，请重试");
				// 显示登陆界面
				letUserLogout();
			}
			break;
		case eFlag.WX_NotInstall:
			Toast.makeText(context, "手机未安装微信，请安装后重试", Toast.LENGTH_SHORT)
					.show();
			if (logincallback != null) {
				logincallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
						"手机未安装微信，请安装后重试");
				// 显示登陆界面
				letUserLogout();
			}
			break;
		case eFlag.WX_NotSupportApi:
			Toast.makeText(context, "手机微信版本太低，请升级后重试", Toast.LENGTH_SHORT)
					.show();
			if (logincallback != null) {
				logincallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
						"手机微信版本太低，请升级后重试");
				// 显示登陆界面
				letUserLogout();
			}
			break;
		case eFlag.WX_LoginFail:
		case eFlag.QQ_LoginFail:
			if (logincallback != null) {
				logincallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
						"登录失败");
				// 显示登陆界面
				letUserLogout();
			}
			break;
		case eFlag.Login_TokenInvalid:
			if (logincallback != null) {
				logincallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
						"您尚未登录或者之前的登录已过期，请重试");
				// 显示登陆界面
				letUserLogout();
			}
			break;
		case eFlag.Login_NotRegisterRealName:
			if (logincallback != null) {
				logincallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
						"您的账号没有进行实名认证，请实名认证后重试");
				// 显示登陆界面
				letUserLogout();
			}
			break;
		default:
			if (logincallback != null) {
				logincallback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_DEFAULT,
						"登录失败");
				LogUtil.d(TAG, "login_fail-" + ret.flag);
				// 显示登陆界面
				letUserLogout();
			}
			break;
		}

	}

	@Override
	public void OnRelationNotify(UserRelationRet arg0) {

	}

	@Override
	public void OnWakeupNotify(WakeupRet ret) {
		if (eFlag.Wakeup_YSDKLogining == ret.flag) {
			// 用拉起的账号登录，登录结果在OnLoginNotify()中回调
		} else if (ret.flag == eFlag.Wakeup_NeedUserSelectAccount) {
			// 异账号时，游戏需要弹出提示框让用户选择需要登录的账号
			logoutcallback.onExecutionSuccess(0);
		} else if (ret.flag == eFlag.Wakeup_NeedUserLogin) {
			// 没有有效的票据，登出游戏让用户重新登录
		} else {
			letUserLogout();
		}

	}

	// 平台授权成功,让用户进入游戏. 由游戏自己实现登录的逻辑
	public void letUserLogin() {
		((Activity) context).runOnUiThread(new Runnable() {
			@Override
			public void run() {
				UserLoginRet ret;
				try {
					ret = new UserLoginRet();
					YSDKApi.getLoginRecord(ret);
				} catch (Exception e) {
					e.printStackTrace();
					letUserLogout();
					return;
				}
				if (ret.ret != BaseRet.RET_SUCC) {
					Toast.makeText(context, "登录出错，请稍后重试" + ret.flag, 0).show();
					LogUtil.d(TAG, "login_fail-" + ret.flag);
					letUserLogout();
					return;
				}
				if (ret.platform == ePlatform.PLATFORM_ID_QQ) {
					YSDKApi.queryUserInfo(ePlatform.QQ);// 查询QQ用户信息
				} else if (ret.platform == ePlatform.PLATFORM_ID_WX) {
					YSDKApi.queryUserInfo(ePlatform.WX);// 查询微信用户信息
				}
			}
		});
	}

	// 登出后, 更新view. 由游戏自己实现登出的逻辑
	public void letUserLogout() {
		YSDKApi.logout();
	}

	@Override
	public String getName(Context context) {
		return "yyb";
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
		YSDKApi.onStop((Activity) context);
		LogUtil.d(TAG, "onStop");
	}

	public void onResume(Context context) {
		YSDKApi.onResume((Activity) context);
		LogUtil.d(TAG, "onResume");
	}

	@Override
	public void onPause(Context context) {
		YSDKApi.onPause((Activity) context);
		LogUtil.d(TAG, "onPause");
	}

	@Override
	public void onDestroy(Context context) {
		YSDKApi.onDestroy((Activity) context);
		LogUtil.d(TAG, "onDestroy");
	}

	@Override
	public void onRestart(Context context) {
		YSDKApi.onRestart((Activity) context);
		LogUtil.d(TAG, "onRestart");
	}

	@Override
	public void onNewIntent(Intent intent) {
	}

	@Override
	public void onConfigurationChanged(Configuration newConfig) {
	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		YSDKApi.onActivityResult(requestCode, resultCode, data);
		LogUtil.d(TAG, "YYBChannel onActivityResult!!!!");
	}

	@Override
	public void onStart(Context context) {

	}

	class YybLoginDialog extends Dialog {

		public YybLoginDialog(final Context context, int theme) {
			super(context, context.getResources()
					.getIdentifier("PYWTheme_Widget_Dialog", "style",
							context.getPackageName()));

			setContentView(context.getResources().getIdentifier("yyb_login",
					"layout", context.getPackageName()));
			findViewById(
					context.getResources().getIdentifier("yyb_qq", "id",
							context.getPackageName())).setOnClickListener(
					new View.OnClickListener() {

						@Override
						public void onClick(View arg0) {
							dismiss();
							if (getPlatform() == ePlatform.QQ) {

								// 如已登录直接进入相应模块视图
								Toast.makeText(context, "已登录",
										Toast.LENGTH_SHORT).show();
							} else if (getPlatform() == ePlatform.None) {
								YSDKApi.login(ePlatform.QQ);
							}
						}
					});
			findViewById(
					context.getResources().getIdentifier("yyb_wx", "id",
							context.getPackageName())).setOnClickListener(
					new View.OnClickListener() {

						@Override
						public void onClick(View arg0) {
							dismiss();
							if (getPlatform() == ePlatform.WX) {

								// 如已登录直接进入相应模块视图
								Toast.makeText(context, "已登录",
										Toast.LENGTH_SHORT).show();
							} else if (getPlatform() == ePlatform.None) {
								YSDKApi.login(ePlatform.WX);
							}
						}
					});
		}

		@Override
		public void show() {
			super.show();
			WindowManager m = ((Activity) context).getWindowManager();
			Display d = m.getDefaultDisplay(); // 获取屏幕宽、高用
			LayoutParams layoutParams = getWindow().getAttributes();

			layoutParams.width = LayoutParams.MATCH_PARENT;
			layoutParams.height = LayoutParams.WRAP_CONTENT;
			layoutParams.horizontalMargin = 10;
			layoutParams.y = (int) (d.getHeight() * 0.25);
			getWindow().getDecorView().setPadding(0, 0, 0, 0);
			getWindow().setAttributes(layoutParams);

		}
	}
}
