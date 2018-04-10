package com.pyw.plugin;

import java.util.HashMap;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;

import com.pyw.open.KeyCodes;

/**
 * 插件执行类
 * 
 * @author tanxj
 * 
 */
public class PYWPluginExecutor {

	/**
	 * 插件执行结果回调
	 */
	public interface executeCallback {
		/**
		 * 插件执行成功时回调
		 * 
		 * @param obj
		 *            回调参数，根据不同的插件功能而不同
		 */
		public void onExecutionSuccess(Object obj);

		/**
		 * 插件执行失败时回调
		 * 
		 * @param failCode
		 *            回调参数，包含插件执行失败的错误码
		 * @param failMessage
		 *            回调参数，包含插件执行失败的错误信息
		 */
		public void onExecutionFailure(int failCode, String failMessage);
	}

	/**
	 * 插件回调
	 */
	public interface Callback {

		public void onCallback(Object obj);
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
	public final static Object execute(Context context, PYWPlugin plugin,
			String action, HashMap params, executeCallback callback) {
		if (!PYWPluginManager.isReady()) {
			if (context != null) {
				PYWPluginManager.load(context);
			} else {
				if (null != callback) {
					callback.onExecutionFailure(
							KeyCodes.ERROR_PLUGIN_NOT_READY,
							"plugin manager not ready!");
				}
				return null;
			}
		}

		if (TextUtils.isEmpty(action)) {
			if (null != callback) {
				callback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_MISS_PARAMS,
						"miss plugin action!");
			}
			return null;
		}

		// PYWPlugin plugin = PYWPluginManager.getChannelPlugin(context);
		if (plugin == null) {
			if (null != callback) {
				callback.onExecutionFailure(KeyCodes.ERROR_PLUGIN_NOT_FOUND,
						"plugin not found!");
			}
			return null;
		}
		return plugin.execute(context, action, params, callback);
	}

	/**
	 * 设置插件回调
	 * 
	 * @param context
	 *            Android上下文
	 * @param pluginName
	 *            插件名
	 * @param action
	 *            要执行的方法名，必须与插件定义的方法名一致
	 * @param callback
	 *            执行结果回调
	 * @return 执行结果
	 */
	public final static Object setCallback(Context context, PYWPlugin plugin,
			String action, Callback callback) {

		if (!PYWPluginManager.isReady()) {
			if (context != null) {
				PYWPluginManager.load(context);
			}
		}

		if (TextUtils.isEmpty(action)) {
			return null;
		}

		// PYWPlugin plugin = PYWPluginManager.getChannelPlugin(context);
		if (plugin == null) {
			Log.e("setCallback", "plugin not found!");
		}

		return plugin.setCallback(context, action, callback);
	}

}