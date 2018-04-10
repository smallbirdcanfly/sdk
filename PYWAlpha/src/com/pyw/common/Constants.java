package com.pyw.common;

import com.pengyouwan.sdk.entity.DynamicUrl;

import android.text.TextUtils;

public class Constants {

	//靜態默認地址
	private static String DEFAULT_URL =  "http://unitysdkapi.pyw.cn/CommonSdkApi/";
	
	//此處注意，務必確保DynamicUrl.DYNAMIC_URL的值的設定在Constants類加載之前，否則，URL的值永久判定爲DEFAULT_URL
	private static final String URL = TextUtils.isEmpty(DynamicUrl.DYNAMIC_URL)?DEFAULT_URL:DynamicUrl.DYNAMIC_URL+"/CommonSdkApi/";
	
	public static final String URL_INIT = URL + "init";//该接口为聚合SDK初始化接口
	public static final String URL_LOGIN = URL + "login";//该接口为渠道登录后信息转换接口
	public static final String URL_CREATORDER = URL + "createOrder";//该接口为渠道支付后订单信息转换接口
	public static final String URL_PAY = URL + "pay";//该接口为客户端调用应用宝支付完成后通知服务端付款接口
	
	public static final String KEY_CONFIG_JSON_GAMEKEY = "game_key";
	public static final String KEY_CONFIG_JSON_CHANNELID = "channel_id";
	
	public static final String URL_BEHAVIOR_COLLECTION = "http://dt.pyw.cn/sdk/userActionData";
	public static final String URL_ERROR_COLLECTION = "http://dt.pyw.cn/Sdk/sdkGameCrashDataCollect";
	
}
