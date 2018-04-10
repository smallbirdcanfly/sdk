package com.pyw.plugin;

import java.util.ArrayList;
import java.util.Enumeration;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;

import com.pengyouwan.framework.utils.LogUtil;

import dalvik.system.DexFile;

/**
 * 插件管理类
 * 
 * @author tanxj
 * 
 */
public class PYWPluginManager {
	private final static String TAG = "PYWPluginManager";
	private final static String PLUGIN_PACKAGE_PREFIX = "com.pyw.plugin.";
	private static PYWPlugin sChannelPlugin;
	private static PYWPlugin sPYWChannelPlugin;
	private static boolean sIsLoaded = false;

	/**
	 * 插件管理类是否已经就绪
	 * 
	 * @return
	 */
	public final static synchronized boolean isReady() {
		return sIsLoaded;
	}

	/**
	 * 初始化插件管理类
	 * 
	 * @param context
	 */
	public final static synchronized void load(Context context) {

		if (sIsLoaded) {
			return;
		}
		sIsLoaded = true;

		ArrayList<Class<PYWPlugin>> pulginClasses = scanPlugins(context);
		if (pulginClasses != null) {
			for (Class cls : pulginClasses) {
				try {
					PYWPlugin plugin = (PYWPlugin) cls.newInstance();
					plugin.onCreate(context);
					String name = plugin.getName(context);
					String category = plugin.getCategory(context);
					
					if (!TextUtils.isEmpty(name)) {
						if ("pyw_channel".equals(category)) {
							sPYWChannelPlugin = plugin;
							LogUtil.d(TAG, plugin.toString());
						} else if ("channel".equals(category)) {
							sChannelPlugin = plugin;
							LogUtil.d(TAG, plugin.toString());
						}
					}
				} catch (Exception e) {
					LogUtil.e(TAG, "load plugin error: " + e);
				}
			}
		}
	}

	/**
	 * 获取渠道插件
	 * 
	 * @param context
	 * @return 返回渠道插件对象
	 */
	public final static PYWPlugin getChannelPlugin(final Context context) {
		if (null != sChannelPlugin) {
			return sChannelPlugin;
		}
		return null;
	}

	/**
	 * 获取朋友玩插件
	 * 
	 * @param context
	 * @return
	 */
	public final static PYWPlugin getPYWChannelPlugin(final Context context) {
		if (null != sPYWChannelPlugin) {
			return sPYWChannelPlugin;
		}
		return null;
	}

	private static ArrayList<Class<PYWPlugin>> scanPlugins(Context context) {

		ArrayList<String> pluginsData = new ArrayList<String>();
		DexFile df = null;
		try {
			String packagePath = context.getPackageManager()
					.getApplicationInfo(context.getPackageName(), 0).sourceDir;
			df = new DexFile(packagePath);
		} catch (Exception e) {
			LogUtil.e(TAG, e.getMessage());
			return null;
		}
		Enumeration<String> n = df.entries();

		while (n.hasMoreElements()) {
			String p = n.nextElement();
			if (p.startsWith(PLUGIN_PACKAGE_PREFIX) && !p.contains("$")) {
				pluginsData.add(p);
			}
		}
		ArrayList<Class<PYWPlugin>> pluginClasses = new ArrayList<Class<PYWPlugin>>();
		for (String s : pluginsData) {
			s = s.replace('/', '.');
			try {
				Class cls = Class.forName(s);
				if (cls != PYWPlugin.class
						&& PYWPlugin.class.isAssignableFrom(cls)) {
					pluginClasses.add(cls);
				}
			} catch (ClassNotFoundException e) {

				e.printStackTrace();
			}
		}
		return pluginClasses;
	}

	public final static void pluginsPause(Context context) {
		if (isReady()) {
			sPYWChannelPlugin.onPause(context);
			if (null != sChannelPlugin)
				sChannelPlugin.onPause(context);
		}
	}

	public final static void pluginsResume(Context context) {
		if (isReady()) {
			sPYWChannelPlugin.onResume(context);
			if (null != sChannelPlugin)
				sChannelPlugin.onResume(context);
		}
	}

	public final static void pluginsRestart(Context context) {
		if (isReady()) {
			sPYWChannelPlugin.onRestart(context);
			if (null != sChannelPlugin)
				sChannelPlugin.onRestart(context);
		}
	}

	public final static void pluginsStop(Context context) {
		if (isReady()) {
			sPYWChannelPlugin.onStop(context);
			if (null != sChannelPlugin)
				sChannelPlugin.onStop(context);
		}
	}

	public final static void pluginsStart(Context context) {
		if (isReady()) {
			sPYWChannelPlugin.onStart(context);
			if (null != sChannelPlugin)
				sChannelPlugin.onStart(context);
		}
	}

	public final static void pluginsNewIntent(Intent intent) {
		if (isReady()) {
			sPYWChannelPlugin.onNewIntent(intent);
			if (null != sChannelPlugin)
				sChannelPlugin.onNewIntent(intent);
		}
	}

	public final static void pluginsActivityResult(int requestCode,
			int resultCode, Intent data) {
		if (isReady()) {
			sPYWChannelPlugin.onActivityResult(requestCode, resultCode, data);
			if (null != sChannelPlugin)
				sChannelPlugin.onActivityResult(requestCode, resultCode, data);
		}
	}

	public final static void pluginsConfigurationChanged(Configuration newConfig) {
		if (isReady()) {
			sPYWChannelPlugin.onConfigurationChanged(newConfig);
			if (null != sChannelPlugin)
				sChannelPlugin.onConfigurationChanged(newConfig);
		}
	}

	/**
	 * 释放所有插件
	 * 
	 * @param context
	 */
	public final static void destroyAll(Context context) {

		if (isReady() && sChannelPlugin != null) {
			sChannelPlugin.onDestroy(context);
		}

		if (isReady() && sPYWChannelPlugin != null) {
			sPYWChannelPlugin.onDestroy(context);
		}
	}

}
