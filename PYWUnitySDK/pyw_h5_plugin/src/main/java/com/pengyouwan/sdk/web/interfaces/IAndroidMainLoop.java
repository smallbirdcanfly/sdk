package com.pengyouwan.sdk.web.interfaces;

/**
 * Created by panyangjun on 2017/4/13.
 */

public interface IAndroidMainLoop {
    void runOnUiThread(Runnable runnable);

    void finishActivity();

    void showFloatView();

    void doLogin();
}
