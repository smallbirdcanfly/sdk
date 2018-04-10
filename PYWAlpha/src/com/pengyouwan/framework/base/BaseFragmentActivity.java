
package com.pengyouwan.framework.base;

import java.lang.ref.WeakReference;
import java.util.ArrayList;

import com.pengyouwan.framework.v4.FragmentActivity;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.Window;

/**
 * Copyright (C) pengpuxin Inc.All Rights Reserved. 
* FileName：com.pengyouwan.framework.base.
* @Description：抽象FragmentActivity，提供刷新UI的Handler
* History： 
* 版本号  作者               日期           简要介绍相关操作 
* 2.1.3 chenys   2013-7-29  Create
 */
public abstract class BaseFragmentActivity extends FragmentActivity implements IActivity {

    private Handler mUiHandler = new UiHandler(this);

    private static class UiHandler extends Handler {
        private final WeakReference<BaseFragmentActivity> mActivityReference;

        public UiHandler(BaseFragmentActivity activity) {
            mActivityReference = new WeakReference<BaseFragmentActivity>(activity);
        }

        public void handleMessage(android.os.Message msg) {
            super.handleMessage(msg);
            if (mActivityReference.get() != null) {
                mActivityReference.get().handleUiMessage(msg);
            }
        };
    }

    private ArrayList<String> mActions = new ArrayList<String>();

    private BaseBroadcastReceiver mReceiver;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setupActions(mActions);
        if (mActions != null && mActions.size() > 0) {
            IntentFilter filter = new IntentFilter();
            for (String action : mActions) {
                filter.addAction(action);
            }
            mReceiver = new BaseBroadcastReceiver() {
                @Override
                public void onReceive(Context context, Intent intent) {
                    super.onReceive(context, intent);
                    handleBroadcast(context, intent);
                }
            };
            registerReceiver(mReceiver, filter);
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (mReceiver != null) {
            unregisterReceiver(mReceiver);
        }
    }

    @Override
    public void setupActions(ArrayList<String> actions) {
    }

    /**
     * 处理更新UI任务
     * 
     * @param msg
     */
    public void handleUiMessage(Message msg) {
    }

    public void handleBroadcast(Context context, Intent intent) {
    }

    /**
     * 发送UI更新操作
     * 
     * @param msg
     */
    protected void sendUiMessage(Message msg) {
        mUiHandler.sendMessage(msg);
    }

    protected void sendUiMessageDelayed(Message msg, long delayMillis) {
        mUiHandler.sendMessageDelayed(msg, delayMillis);
    }

    /**
     * 发送UI更新操作
     * 
     * @param what
     */
    protected void sendEmptyUiMessage(int what) {
        mUiHandler.sendEmptyMessage(what);
    }

    protected void sendEmptyUiMessageDelayed(int what, long delayMillis) {
        mUiHandler.sendEmptyMessageDelayed(what, delayMillis);
    }

    protected void removeUiMessages(int what) {
        mUiHandler.removeMessages(what);
    }

    protected Message obtainUiMessage() {
        return mUiHandler.obtainMessage();
    }

}
