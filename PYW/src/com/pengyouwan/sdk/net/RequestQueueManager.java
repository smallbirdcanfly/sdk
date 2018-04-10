
package com.pengyouwan.sdk.net;


import android.app.Application;
import android.content.Context;
import android.text.TextUtils;

import com.pengyouwan.framework.volley.Request;
import com.pengyouwan.framework.volley.RequestQueue;
import com.pengyouwan.framework.volley.VolleyLog;
import com.pengyouwan.framework.volley.toolbox.Volley;

/**
 * 描述:请求网络工具类
 *
 * @author Hanson
 * @version 创建时间：2016-6-30 下午3:16:33
 */
public class RequestQueueManager {
    private static final String DEFAULT_TAG = "DEFAULT";

    private static RequestQueueManager sInstance;

    private RequestQueue mRequestQueue;

    private static Context mContext; // application context

    private RequestQueueManager(Context context) {
        mContext = context;
        mRequestQueue = getRequestQueue();
    }

    public static synchronized void init(Context context) {
        if (context instanceof Application) {
            sInstance = new RequestQueueManager(context);
        } else {
            throw new RuntimeException("must be call on Application");
        }
    }

    public static synchronized RequestQueueManager getInstance() {
        if (sInstance == null) {
            throw new RuntimeException(
                    "must be call init() on subApplication onCreate function before call getInstance()");
        }
        return sInstance;
    }

    public RequestQueue getRequestQueue() {
        if (mRequestQueue == null) {
            // getApplicationContext() is key, it keeps you from leaking the
            // Activity or BroadcastReceiver if someone passes one in.
            mRequestQueue = Volley.newRequestQueue(mContext);
        }
        return mRequestQueue;
    }

    public <T> void addToRequestQueue(Request<T> req) {
        req.setTag(DEFAULT_TAG);
        getRequestQueue().add(req);
    }

    public <T> void addToRequestQueue(Request<T> req, String tag) {
        // set the default tag if tag is empty
        req.setTag(TextUtils.isEmpty(tag) ? DEFAULT_TAG : tag);
        VolleyLog.d("Adding request to queue: %s", req.getUrl());
        getRequestQueue().add(req);
    }
}
