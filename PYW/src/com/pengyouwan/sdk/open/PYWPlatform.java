package com.pengyouwan.sdk.open;

import java.io.IOException;
import java.util.Map;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.text.TextUtils;

import com.pengyouwan.framework.http.PYWHttpURLConnection;
import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.sdk.db.BehavioralOperator;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.utils.BehavioralHelper;
import com.pengyouwan.sdk.utils.ForegroundCallbacks;
import com.pengyouwan.sdk.utils.StaticsHelper;
import com.pengyouwan.sdk.utils.ToastUtil;
import com.pyw.common.Constants;

/**
 * Copyright (C) pengpuxin Inc.All Rights Reserved.
 * FileName：com.pengyouwan.sdk.api.
 * 
 * @Description：PYWPlatform SDK 入口 History： 版本号 作者 日期 简要介绍相关操作 2.1.3 pengpuxin
 *                          2016-7-2 Create
 */
public class PYWPlatform {

	public static final int VERSION_CODE = 2220;

	public static final String VERSION_NAME = "2.2.20";

	private static long lastuploadTime =0L;

	public static void initSDK(Application app, final Context context,
			SDKConfig config, OnSDKEventListener onSDKEventListener) {
		SDKControler.init(context, config, onSDKEventListener, VERSION_CODE,
				VERSION_NAME);
		ForegroundCallbacks.init(app);
		ForegroundCallbacks.get().addListener(
				new ForegroundCallbacks.Listener() {
					@Override
					public void onBecameForeground() {
						StaticsHelper.getInstance().onBecameForeground();
						BehavioralHelper.getInstance().onBecameForeground();
					}

					@Override
					public void onBecameBackground() {
						StaticsHelper.getInstance().onBecameBackground();
						BehavioralHelper.getInstance().onBecameBackground();
						upload();
					}
				});
	}


	private static void upload() {
		long temp = System.currentTimeMillis();
		//距离上次上传间隔不够1分钟
		if(temp-lastuploadTime<60000) return;
		lastuploadTime = temp;
		// 上传用户行为数据
		new Thread(new Runnable() {

			@Override
			public void run() {
				String behaviorData = BehavioralOperator.getInstance()
						.getBehavioralDatas();
				if (!TextUtils.isEmpty(behaviorData)) {
					StringBuilder sBuilder = new StringBuilder(behaviorData);
					try {

						PYWHttpURLConnection.getInstance().postRequest(
								Constants.URL_BEHAVIOR_COLLECTION, sBuilder);

					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			}
		}).start();
	}

	/**
	 * 打开登录界面
	 */
	public static void openLogin(Activity activity) {
		if (checkInit()) {
			SDKControler.openLogin(activity);
		}
	}

	/**
	 * 打开个人中心
	 */
	public static void openUsercenter(Activity activity) {
		if (checkInit()) {
			SDKControler.openUsercenter(activity);
		}
	}

	/**
	 * 打开充值中心
	 * 
	 * @param activity
	 * @param paramMap
	 *            支付参数
	 * @param isAnyAmount
	 *            是否任意充 true-任意充 false--定额充值
	 */
	public static void openChargeCenter(Activity activity,
			Map<String, Object> paramMap, boolean isAnyAmount) {
		if (checkInit()) {
			SDKControler.openChargeCenter(activity, paramMap, isAnyAmount);
		}
	}

	/**
	 * 收集游戏内角色信息
	 * 
	 * @param activity
	 * @param params
	 */
	public static void getRoleMessage(Activity activity,
			Map<String, Object> params) {
		if (checkInit()) {
			SDKControler.getRoleMessage(activity, params);
		}
	}

	/**
	 * 获取当前登录的用户信息，已经把密码信息过滤掉
	 */
	public static User getCurrentUser() {
		if (checkInit()) {
			return UserManager.getInstance().getCurrentUser();
		} else {
			return null;
		}
	}

	/**
	 * 退出方法
	 */
	public static void exit(Activity activity) {
		if (checkInit()) {
			SDKControler.exit(activity);
		}
	}

	// /**
	// * 在微信支付接收回调信息处触发
	// * @param respCode 微信响应码
	// */
	// public static void onChargeComplete(int respCode) {
	// SDKControler.onChargeComplete(respCode);
	// }

	/**
	 * 检查SDK是否初始化
	 */
	private static boolean checkInit() {
		if (!SDKControler.isInit()) {
			ToastUtil.showMsg("初始化失败");
			LogUtil.e("context can not be null");
			return false;
		} else {
			return true;
		}
	}
}
