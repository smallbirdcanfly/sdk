package com.pengyouwan.sdk.preference;

import com.pengyouwan.sdk.manager.SDKControler;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class SDKPereferenceUtil {

	private static final String PYW_ACCOUNT = "pyw_account";

	private static final String PYW_SCR = "pyw_scr";

	private static final String PYW_INFO = "pyw_info";

	private static final String DIALOG_TIME = "dialog_time";

	private static final String PYW_ACCOUNT_INFOS = "pyw_account_infos";

	private static final String CHANGE_ACCOUNT_TAG = "change_account_tag";

	public static void saveDialogTime(Context context, long dialogTime) {
		SharedPreferences sp = context.getSharedPreferences(PYW_INFO,
				Context.MODE_PRIVATE);
		sp.edit().putLong(DIALOG_TIME, dialogTime).commit();
	}

	public static long getDialogTime(Context context) {
		SharedPreferences sp = context.getSharedPreferences(PYW_INFO,
				Context.MODE_PRIVATE);
		return sp.getLong(DIALOG_TIME, 0);

	}

	public static void saveUserInfo(Context context, String account, String psw) {
		SharedPreferences sp = context.getSharedPreferences(PYW_INFO,
				Context.MODE_PRIVATE);
		sp.edit().putString(PYW_ACCOUNT, account).commit();
		sp.edit().putString(PYW_SCR, psw).commit();
	}

	public static void saveAccountInfos(Context context, String jsonStr) {
		SharedPreferences sp = context.getSharedPreferences(PYW_INFO,
				Context.MODE_PRIVATE);
		sp.edit().putString(PYW_ACCOUNT_INFOS, jsonStr).commit();
	}

	public static String getAccountInfos(Context context) {
		SharedPreferences sp = context.getSharedPreferences(PYW_INFO,
				Context.MODE_PRIVATE);
		return sp.getString(PYW_ACCOUNT_INFOS, "");
	}

	public static String getAccount(Context context) {
		SharedPreferences sp = context.getSharedPreferences(PYW_INFO,
				Context.MODE_PRIVATE);
		return sp.getString(PYW_ACCOUNT, "");

	}

	/**
	 * 获取了旧账号之后清除sp
	 * 
	 * @param context
	 */
	public static void clearAccountInfos(Context context) {
		try {
			SharedPreferences sp = context.getSharedPreferences(PYW_INFO,
					Context.MODE_PRIVATE);
			sp.edit().remove(PYW_ACCOUNT);
			sp.edit().remove(PYW_SCR);
			sp.edit().remove(PYW_ACCOUNT_INFOS);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获取切换账号tag
	 * 
	 * @return
	 */
	public static int getChangeAccountTag() {
		return SDKControler
				.getContext()
				.getSharedPreferences(
						PYW_INFO,
						Context.MODE_PRIVATE)
				.getInt(CHANGE_ACCOUNT_TAG, 0);
	}

	/**
	 * 设置切换账号tag
	 * 
	 * @param tag
	 */
	public static void setChangeAccountTag(int tag) {
		SDKControler
				.getContext()
				.getSharedPreferences(
						PYW_INFO,
						Context.MODE_PRIVATE).edit()
				.putInt(CHANGE_ACCOUNT_TAG, tag).commit();
	}

	public static String getPsw(Context context) {
		SharedPreferences sp = context.getSharedPreferences(PYW_INFO,
				Context.MODE_PRIVATE);
		return sp.getString(PYW_SCR, "");
	}

	public static void setPreferenceInfo(String type, Context c, String key,
			boolean value) {
		try {
			SharedPreferences mPreferences = c.getSharedPreferences(type, 0);
			Editor mEditor = mPreferences.edit();
			if (key != null) {
				mEditor.putBoolean(key, value);
			}
			mEditor.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static String getPreferenceInfo(String type, Context c, String key) {
		String value = "";
		SharedPreferences preferences = c.getSharedPreferences(type, 0);
		if (preferences == null) {
			return value;
		}
		value = preferences.getString(key, "");
		return value;
	}

	public static boolean getPreferenceBooleanFalse(String type, Context c,
			String key) {
		Boolean value = false;
		SharedPreferences preferences = c.getSharedPreferences(type, 0);
		if (preferences == null) {
			return false;
		}
		value = preferences.getBoolean(key, false);
		return value;
	}

	public static void setPreferenceInfo(String type, Context c, String key,
			String value) {
		try {
			SharedPreferences mPreferences = c.getSharedPreferences(type, 0);
			Editor mEditor = mPreferences.edit();
			if (key != null) {
				mEditor.putString(key, value);
			}
			mEditor.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
