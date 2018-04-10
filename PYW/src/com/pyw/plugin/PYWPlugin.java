package com.pyw.plugin;

import java.lang.reflect.Method;
import java.util.HashMap;

import org.json.JSONArray;
import org.json.JSONObject;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;

import com.pengyouwan.framework.utils.LogUtil;
import com.pyw.open.KeyCodes;

/**
 * 插件类
 * 
 * 
 * @author tanxj
 * 
 */
public abstract class PYWPlugin {

	public abstract void onCreate(Context context);

	/**
	 * 获取插件名
	 */
	public abstract String getName(Context context);

	/**
	 * 获取插件版本
	 */
	public abstract int getVersion(Context context);

	/**
	 * 获取插件分类
	 * 
	 * @param context
	 * @return
	 */
	public abstract String getCategory(Context context);

	// activity 生命周期方法
	public abstract void onPause(Context context);

	public abstract void onResume(Context context);

	public abstract void onDestroy(Context context);

	public abstract void onRestart(Context context);

	public abstract void onStop(Context context);

	public abstract void onStart(Context context);

	public abstract void onNewIntent(Intent intent);

	public abstract void onConfigurationChanged(Configuration newConfig);

	public abstract void onActivityResult(int requestCode, int resultCode,
			Intent data);

	public JSONObject getPluginParams(String name, JSONArray data) {

		JSONObject jsn = null;
		for (int i = 0; i < data.length(); i++) {

			JSONObject temp = data.optJSONObject(i);
			if (null != temp && name.equals(temp.optString("name"))) {

				jsn = temp;
			}
		}

		return jsn;
	}

	/**
	 * 执行插件功能
	 * 
	 * @param context
	 *            Android上下文
	 * @param action
	 *            要执行的方法名
	 * @param params
	 *            执行参数
	 * @param callback
	 *            执行结果回调
	 * @return 执行结果
	 */
	final Object execute(Context context, String action, HashMap params,
			PYWPluginExecutor.executeCallback callback) {
		try {
			Method m = this.getClass().getDeclaredMethod(action, Context.class,
					HashMap.class, PYWPluginExecutor.executeCallback.class);
			return m.invoke(this, context, params, callback);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (callback != null) {
			callback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_MISS_PARAMS,
					"miss execute action!");
		}
		return null;
	}

	/**
	 * 设置插件回调
	 * 
	 * @param context
	 *            Android上下文
	 * @param action
	 *            要执行的方法名
	 * @param callback
	 *            执行结果回调
	 * @return 执行结果
	 */
	final Object setCallback(Context context, String action,
			PYWPluginExecutor.Callback callback) {
		try {
			Method m = this.getClass().getDeclaredMethod(action, Context.class,
					PYWPluginExecutor.Callback.class);
			return m.invoke(this, context, callback);
		} catch (Exception e) {

			e.printStackTrace();
		}
		return null;
	}

}
