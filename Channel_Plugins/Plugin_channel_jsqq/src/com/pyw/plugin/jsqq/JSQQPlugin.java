package com.pyw.plugin.jsqq;

import java.util.HashMap;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;

import com.cs.master.callback.CSMasterCallBack;
import com.cs.master.callback.CSMasterQuitCallBack;
import com.cs.master.contacts.CSMasterError;
import com.cs.master.contacts.CSMasterGameAction;
import com.cs.master.entity.CSMasterErrorInfo;
import com.cs.master.entity.pay.CSMasterCpPayInfo;
import com.cs.master.entity.user.CSMasterCpUserInfo;
import com.cs.master.entity.user.CSMasterGotUserInfo;
import com.cs.master.entity.user.CSMasterPlatformSubUserInfo;
import com.lib.csmaster.sdk.CSMasterSDK;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

/**
 * game_key: 7d9240a5 渠道号： 111 渠道名称： 9377
 * <p>
 * Created by zhouq on 2018/1/24.
 */

public class JSQQPlugin extends PYWPlugin {
	private static final String TAG = "JSQQPlugin";

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
		initSDK();
		initcallback.onExecutionSuccess(null);
	}

	private void initSDK() {
		// 必须保证游戏运行期间 该activity不被销毁，否则会引起crash
		getCSMasterSDK().initGameActivity((Activity) context);// 必须先于onCreate的调用
		getCSMasterSDK().onCreate((Activity) context);
		// 悬浮窗切换用户
		getCSMasterSDK().setFloatViewSwitchAccountListener((Activity) context, switchCallback);
	}

	private CSMasterSDK getCSMasterSDK() {
		return CSMasterSDK.getInstance();
	}

	/**
	 * 悬浮窗切换账号回调
	 */
	private CSMasterCallBack<CSMasterGotUserInfo> switchCallback = new CSMasterCallBack<CSMasterGotUserInfo>() {
		@Override
		public void onSuccess(CSMasterGotUserInfo userInfo) {
			// 提交游戏用户信息
			subRoleMessage();
		}

		@Override
		public void onFailed(CSMasterErrorInfo errorInfo) {
			switch (errorInfo.getErrorCode()) {
			case CSMasterError.CODE_LOGIN_CANCEL:
				// 登陆取消
				break;
			case CSMasterError.CODE_LOGIN_LOADING:
				// 正在登陆
				break;
			case CSMasterError.CODE_USER_INVALID:
				// 登陆失败MasterError.CODE_USER_INVALID返回,请厂商在收到此返回时把游戏退出到首页，否则测试不会通过，谢谢合作！
				sdklogoutcallback.onCallback(errorInfo);
				break;
			default:
				// 其他异常
				break;
			}
		}
	};

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
		CSMasterPlatformSubUserInfo.Builder info = new CSMasterPlatformSubUserInfo.Builder();
		info.setPower(0)// 角色战斗力，如无请填写：0
				.setProfessionId(0)// 登陆角色的职业ID，如无请填写：0
				.setProfession("无")// 登陆角色的职业名称，如无请填写"无"
				.setGuildName("无")// 当前角色所属帮派帮派名称，如无请填写：无
				.setGuildId(0)// 当前角色所属帮派帮派Id，如无请填写:0
				.setGuildTitleId(0)// 角色在帮派中的帮派称号Id,帮主则必填：1，其他可自定义，如无请填写：0
				.setGuildTitleName("无")// 角色在帮派中的帮派称号,如无请填写："无"
				.setGender("无")// 登陆角色的性别，不能为空，可选：“男、女、无”
				.setUserName(username)// 用户名，成功返回
				.setRoleName(roleName)// 当前角色昵称
				.setRoleId(roleid)// 角色ID
				.setGameLevel(roleLevel)// 当前角色等级
				.setZoneId(serverId)// 服务器Id
				.setZoneName(serverAreaName)// 服务器名称
				// v1.2.0新增
				.setRoleCTime(Long.parseLong(roleCreateTime))// 角色创建时间(单 位:秒),长度 10, 获取服务器存储 的时间,不可用手机本地时间
				// 玩家战斗力，如无请填写：0
				.setVipLevel("0");// 当前用户的VIP等级，如无请填写：0
		// 如果游戏没有好友等社交功能。使用info.setFriendsList(null);即可
		// 模拟该角色下的好友
		info.setFriendsList(null);
		getCSMasterSDK().submitUserInfo((Activity) context, CSMasterGameAction.LEVEL_UP, info.build());
	}

	public void login(final Context context, HashMap<String, Object> params,
			PYWPluginExecutor.executeCallback callback) {
		this.logincallback = callback;
		this.context = context;
		getCSMasterSDK().login((Activity) context, new CSMasterCallBack<CSMasterGotUserInfo>() {
			@Override
			public void onSuccess(CSMasterGotUserInfo csMasterGotUserInfo) {
				String token = csMasterGotUserInfo.getToken();
				username = csMasterGotUserInfo.getUserName();
				UserParams userParams = new UserParams();
				String extension = token + "|" + csMasterGotUserInfo.getUserName() + "|"
						+ csMasterGotUserInfo.getTimestamp();
				userParams.setToken(extension);
				userParams.setSdkUserID(csMasterGotUserInfo.getUserName());
				userParams.setSuc(true);
				logincallback.onExecutionSuccess(userParams);
			}

			@Override
			public void onFailed(CSMasterErrorInfo csMasterErrorInfo) {
				logincallback.onExecutionFailure(csMasterErrorInfo.getErrorCode(),
						"登陆失败 :" + csMasterErrorInfo.getErrorMsg());
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
		
		String callBackUrl = "http://unitysdkapi.pyw.cn/ChannelPayCallback/paySuccess/111/610048497433edc1c653744175570f67";

		CSMasterCpPayInfo payInfo = new CSMasterCpPayInfo();
		CSMasterCpUserInfo.Builder userBuild = new CSMasterCpUserInfo.Builder();
		userBuild.setRoleName(roleName) // fuckingman 角色名
				.setRoleId(roleid)// 当前登陆的角色ID
				.setUserName(username)// 用户名，登录成功返回
				.setGameLevel(roleLevel)// 角色等级
				.setVipLevel("0")// vip等级
				.setBalance("0");// 余额 rmb 单位：元
		payInfo.setCpUserInfo(userBuild.build());
		payInfo.setDeveloperUrl(callBackUrl);// 支付回调接口
		payInfo.setAmount(price + "");// 金额 rmb 单位：元
		payInfo.setRatio(1);// 交易比率，如1元＝10元宝，比率请填写10,默认为1:1 即1元＝1元宝
		payInfo.setProductName(productName);// 商品名
		payInfo.setProductId(productId);// 商品id 001
		payInfo.setAppName(getAppName((Activity) context));// 游戏名
		payInfo.setZoneId(serverId);// （必选参数) 游戏服务器id
		payInfo.setZoneName(serverAreaName); // 服务器名称
		payInfo.setTerminalId(AppUtil.getImei((Activity) context));// (可选参数) 设备标识符
		payInfo.setExtraData(extrol);// (必填参数) CP 透传信息test
		payInfo.setProductNameNoCount(productName);// 无商品数量的商品名
		payInfo.setCount(1);// 商品数量
		getCSMasterSDK().doPayBySDK((Activity) context, payInfo, new CSMasterCallBack<Bundle>() {
			@Override
			public void onSuccess(Bundle bundle) {
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
			}

			@Override
			public void onFailed(CSMasterErrorInfo masterErrorInfo) {
				if (paycallback != null) {
					paycallback.onExecutionFailure(masterErrorInfo.getErrorCode(),
							"pay error  =" + masterErrorInfo.getErrorMsg());
				}
			}
		});
	}

	public void logout(final Context context, HashMap params, executeCallback callback) {
		this.logoutcallback = callback;
		getCSMasterSDK().logout((Activity) context, new CSMasterCallBack<String>() {
			@Override
			public void onSuccess(String s) {
				logoutcallback.onExecutionSuccess(0);
			}

			@Override
			public void onFailed(CSMasterErrorInfo csMasterErrorInfo) {

			}
		});
	}

	public void gameExit(final Context context, HashMap params, final executeCallback callback) {
		this.gameExitcallback = callback;
		this.context = context;

		// 退出游戏
		if (getCSMasterSDK().hadPlatformQuitUI()) {
			getCSMasterSDK().quit((Activity) context, new CSMasterQuitCallBack() {

				@Override
				public void quit() {
					// 回收sdk资源
					getCSMasterSDK().destroySDK((Activity) context);
					gameExitcallback.onExecutionSuccess(0);
				}

				@Override
				public void cancel() {

				}
			});
		} else {
			AlertDialog.Builder builder = new AlertDialog.Builder(context);
			builder.setTitle("退出确认");
			builder.setMessage("现在还早，要不要再玩一会？");
			builder.setCancelable(true);
			builder.setPositiveButton("一会再玩", new DialogInterface.OnClickListener() {
				public void onClick(DialogInterface dialog, int whichButton) {
					// 回收sdk资源
					getCSMasterSDK().destroySDK((Activity) context);
					// 退出游戏
					AppUtil.gc();
					gameExitcallback.onExecutionSuccess(null);
					System.exit(0);
				}
			});
			builder.setNeutralButton("好吧", new DialogInterface.OnClickListener() {
				public void onClick(DialogInterface dialog, int whichButton) {
					
				}
			});
			builder.show();

		}

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
		return "jsqq";
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
			getCSMasterSDK().onPause((Activity) context);
	}

	@Override
	public void onResume(Context context) {
		if (context instanceof Activity)
			getCSMasterSDK().onResume((Activity) context);
	}

	@Override
	public void onDestroy(Context context) {
		if (context instanceof Activity)
			getCSMasterSDK().onDestroy((Activity) context);
	}

	@Override
	public void onRestart(Context context) {
		if (context instanceof Activity)
			getCSMasterSDK().onRestart((Activity) context);
	}

	@Override
	public void onStop(Context context) {
		if (context instanceof Activity)
			getCSMasterSDK().onStop((Activity) context);
	}

	@Override
	public void onStart(Context context) {
		if (context instanceof Activity)
			getCSMasterSDK().onStart((Activity) context);
	}

	@Override
	public void onNewIntent(Intent intent) {
		getCSMasterSDK().onNewIntent((Activity) context, intent);
	}

	@Override
	public void onConfigurationChanged(Configuration newConfig) {
		// 需重写activity的onConfigurationChanged，并调用如下方法
		getCSMasterSDK().onConfigurationChanged((Activity) context, newConfig);
	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		// 必须在发起支付的activity重写onActivityResult,并调用以下方法
		getCSMasterSDK().onActivityResult((Activity) context, requestCode, resultCode, data);
	}

	/**
	 * 获取应用程序名称
	 */
	public static String getAppName(Context context) {
		try {
			PackageManager packageManager = context.getPackageManager();
			PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
			int labelRes = packageInfo.applicationInfo.labelRes;
			return context.getResources().getString(labelRes);
		} catch (NameNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}

}
