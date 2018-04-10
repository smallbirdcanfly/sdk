package com.pyw.open;

public class KeyCodes {

	public static final int ERROR_PLUGIN_DEFAULT = 0;//默认错误号，一般插件内部错误使用
	public static final int ERROR_PLUGIN_NOT_READY = 1;//插件管理类没有加载所有插件
	public static final int ERROR_PLUGIN_MISS_PARAMS = 2;//插件参数缺失
	public static final int ERROR_PLUGIN_NOT_FOUND = 3;//未找到插件
	public static final int ERROR_CALLBACK_PARAMS = 20;//返回参数错误
	public static final int ERROR_PARAMS_TRANSFORM = 21;//参数转换错误
	public static final int ERROR_NETWORKING = 22;//聯網錯誤
}
