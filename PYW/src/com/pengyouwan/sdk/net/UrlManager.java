package com.pengyouwan.sdk.net;

import com.pengyouwan.sdk.entity.DynamicUrl;

import android.text.TextUtils;

/**
 * 描述：
 * 
 * @author Hanson
 * @since 创建时间：2016-6-30 下午4:00:11
 */
public class UrlManager {
	
	
	
	private static final String BASE_HOST = "http://api.sdk.pyw.cn";
	
	/**
	 * 60地址
	 */
	private static final String URL_HOSTS = TextUtils.isEmpty(DynamicUrl.OWN_DYNAMIC_URL)?BASE_HOST:DynamicUrl.OWN_DYNAMIC_URL;
	
	//此處注意，務必確保DynamicUrl.OWN_DYNAMIC_URL的值的設定在UrlManager類加載之前，否則，URL的值永久判定爲URL_Test_HOSTS
	public static final String REQUEST_URL = URL_HOSTS+"/ApiForSdk/";

	// public static final String REQUEST_URL = URL_HOSTS;

	/**
	 * init
	 */
	public static final String URL_INIT = REQUEST_URL + "init";

	/**
	 * 登录
	 */
	public static final String URL_LOGIN = REQUEST_URL + "logon";

	/**
	 * 用户中心
	 */
	public static final String URL_USERCENTER = REQUEST_URL + "userCenter";

	/**
	 * 获取账号列表
	 */
	public static final String URL_GET_ACCOUNTS = REQUEST_URL + "getAccountListByPassport";

	/**
	 * 代金券列表
	 */
	public static final String URL_GET_VOUCHERS = REQUEST_URL + "getCouponListByType";

	/**
	 * 校验支付密码
	 */
	public static final String URL_CHECK_PAY_PWD = REQUEST_URL + "checkPayPsd";

	/**
	 * 设置登录密码
	 */
	public static final String URL_SET_LOGIN_PWD = REQUEST_URL + "setNewPwd";

	/**
	 * 免密码登录
	 */
	public static final String URL_LOGIN_NOPWD = REQUEST_URL + "accountLoginNoPwd";

	/**
	 * 游戏账号注册
	 */
	public static final String URL_ACCOUNT_REGISTER = REQUEST_URL + "accountRegister";

	/**
	 * 快速注册
	 */
	public static final String URL_ACCOUNT_FAST_REGISTER = REQUEST_URL + "fastRegiste";

	/**
	 * 通行证注册
	 */
	public static final String URL_PASSPORT_REGISTER = REQUEST_URL + "passportRegister";

	/**
	 * 获取验证码
	 */
	public static final String URL_GET_CODE = REQUEST_URL + "getSmsCode";

	/**
	 * 兼容游戏账号获取验证码
	 */
	public static final String URL_GET_CODE_BY_USERNAME = REQUEST_URL + "getSmsCodeByUsername";

	/**
	 * 校验验证码
	 */
	public static final String URL_CHECK_CODE = REQUEST_URL + "checkSmsCode";

	/**
	 * 重置密码
	 */
	public static final String URL_RESET_PWD = REQUEST_URL + "setPwd";

	/**
	 * 通行证登陆绑定游戏账号
	 */
	public static final String URL_BIND_ACCOUNT = REQUEST_URL + "accountBindToPassport";

	/**
	 * 取消支付
	 */
	public static final String URL_CANCEL_PAY = REQUEST_URL + "cancelPay";

	/**
	 * 解绑游戏账号
	 */
	public static final String URL_UNBIND_ACCOUNT = REQUEST_URL + "accountUnbindFromPassport";

	/**
	 * 通行证登陆下设置游戏账号独立密码
	 */
	public static final String URL_RESET_ACCOUNT_PWD = REQUEST_URL + "setSubAccountPwd";

	/**
	 * 校验短信并且绑定通行证
	 */
	public static final String URL_CHECK_AND_BIND = REQUEST_URL + "checkSmsCodeAndBind";

	/**
	 * 创建订单
	 */
	public static final String URL_CREATE_ORDER = REQUEST_URL + "createOrder";
	/**
	 * 删除游戏账号
	 */
	public static final String URL_DELETE_ACCOUNT = REQUEST_URL + "deleteAccount";

	/**
	 * 删除缓存
	 */
	public static final String URL_DEL_CACHE = REQUEST_URL + "deleteCache";

	/**
	 * 账号登陆绑定手机号（未注册通行证）
	 */
	public static final String URL_BIND_PHONE = REQUEST_URL + "passportRegAndBindAccount";

	/**
	 * 账号列表新建账号
	 */
	public static final String URL_CREATE_ACCOUNT = REQUEST_URL + "addAccount";

	/**
	 * 获取订单支付方式
	 */
	public static final String URL_SECOND_INIT = REQUEST_URL + "secondeInit";

	/**
	 * 实名验证
	 */
	public static final String URL_IDCARDVERIFYVIEW_INDEX = URL_HOSTS+"/IdCardVerifyView/index2";
	
	/**
	 * 游戏内数据采集
	 */
	public static final String URL_DATA_COLLECT =  URL_HOSTS+"/GameInnerDataCollectApi/dataCollect";
	
	public static final String URL_MIANZE = URL_HOSTS+"/DisclaimerView/index/";
}
