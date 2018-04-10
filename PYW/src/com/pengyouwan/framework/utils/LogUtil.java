package com.pengyouwan.framework.utils;

import android.util.Log;

/**
 * 日志工具
 * 
 * @author zhj
 */
public class LogUtil {

	private static final String TAG = "PYW";

	private static boolean isOpen = false;// 是否打开日志 默认关闭

	/**
	 * 是否打开日志
	 * 
	 * @param debug
	 */
	public static boolean isOpen() {
		return isOpen;
	}

	public static void setOpen(boolean isOpen) {
		LogUtil.isOpen = isOpen;
	}

	public static void d(String msg) {
		if (isOpen()) {
			Log.d(TAG, msg);
		}
	}

	public static void d(String tag, String msg) {
		if (isOpen()) {
			Log.d(tag, msg);
		}
	}

	public static void e(String msg) {
		if (isOpen()) {
			Log.e(TAG, msg);
		}
	}

	public static void e(String tag, String msg) {
		if (isOpen()) {
			Log.e(tag, msg);
		}
	}

}
