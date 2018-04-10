
package com.pengyouwan.framework.base;

import java.lang.ref.WeakReference;

import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

/**
 * Copyright (C) pengpuxin Inc.All Rights Reserved. 
* FileName：com.pengyouwan.framework.base.
* @Description：可处理耗时操作的fragment
* History： 
* 版本号  作者               日期           简要介绍相关操作 
* 2.1.3 chenys     2015-5-28  Create
 */
public abstract class BaseWorkerFragment extends BaseFragment implements IWorkerFragment {

    protected HandlerThread mHandlerThread;

    protected BackgroundHandler mBackgroundHandler;

    // 后台Handler
    private static class BackgroundHandler extends Handler {

        private final WeakReference<BaseWorkerFragment> mFragmentReference;

        BackgroundHandler(BaseWorkerFragment fragment, Looper looper) {
            super(looper);
            mFragmentReference = new WeakReference<BaseWorkerFragment>(fragment);
        }

        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (mFragmentReference.get() != null) {
                mFragmentReference.get().handleBackgroundMessage(msg);
            }
        }

    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mHandlerThread = new HandlerThread("fragment worker:" + getClass().getSimpleName());
        mHandlerThread.start();
        mBackgroundHandler = new BackgroundHandler(this, mHandlerThread.getLooper());
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (mBackgroundHandler != null && mBackgroundHandler.getLooper() != null) {
            mBackgroundHandler.getLooper().quit();
        }
    }

    /**
     * 处理后台操作
     */
    public void handleBackgroundMessage(Message msg) {
    }

    /**
     * 发送后台操作
     *
     * @param msg
     */
    protected void sendBackgroundMessage(Message msg) {
        if (mBackgroundHandler != null) {
            mBackgroundHandler.sendMessage(msg);
        }
    }

    protected void sendBackgroundMessageDelayed(Message msg, long delayMillis) {
        if (mBackgroundHandler != null) {
            mBackgroundHandler.sendMessageDelayed(msg, delayMillis);
        }
    }

    /**
     * 发送后台操作
     *
     * @param what
     */
    protected void sendEmptyBackgroundMessage(int what) {
        if (mBackgroundHandler != null) {
            mBackgroundHandler.sendEmptyMessage(what);
        }
    }

    protected void sendEmptyBackgroundMessageDelayed(int what, long delayMillis) {
        if (mBackgroundHandler != null) {
            mBackgroundHandler.sendEmptyMessageDelayed(what, delayMillis);
        }
    }

    protected void removeBackgroundMessage(int what) {
        if (mBackgroundHandler != null) {
            mBackgroundHandler.removeMessages(what);
        }
    }

    protected Message obtainBackgroundMessage() {
        return mBackgroundHandler.obtainMessage();
    }

}
