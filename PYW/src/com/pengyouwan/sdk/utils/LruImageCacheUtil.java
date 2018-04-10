/**
 * 
 */
package com.pengyouwan.sdk.utils;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.util.LruCache;

import com.pengyouwan.framework.volley.toolbox.ImageLoader.ImageCache;

/**
 * 描述:图片缓存工具类
 * 
 * @author Hanson
 * @since 2016-7-2 下午2:19:10
 */
public class LruImageCacheUtil implements ImageCache {

	private static LruCache<String, Bitmap> mMemoryCache;

	private static LruImageCacheUtil mLruImageCacheUtil;

	@SuppressLint("NewApi")
	private LruImageCacheUtil() {
		int maxMemory = (int) Runtime.getRuntime().maxMemory();
		int cacheSize = maxMemory / 8;
		mMemoryCache = new LruCache<String, Bitmap>(cacheSize) {
			@Override
			protected int sizeOf(String key, Bitmap bitmap) {
				return bitmap.getRowBytes() * bitmap.getHeight();
			}
		};
	}

	public static LruImageCacheUtil instance() {
		if (mLruImageCacheUtil == null) {
			mLruImageCacheUtil = new LruImageCacheUtil();
		}
		return mLruImageCacheUtil;
	}

	@SuppressLint("NewApi")
	@Override
	public Bitmap getBitmap(String arg0) {
		return mMemoryCache.get(arg0);
	}

	@SuppressLint("NewApi")
	@Override
	public void putBitmap(String arg0, Bitmap arg1) {
		if (getBitmap(arg0) == null) {
			mMemoryCache.put(arg0, arg1);
		}
	}

}
