package com.pengyouwan.framework.utils;

import android.content.Context;

import com.pengyouwan.sdk.db.ErrorCollectOperator;

import java.io.PrintWriter;
import java.io.StringWriter;

/**
 * crash异常log捕获
 * 捕获到的log会保存到sdcard文件里
 *
 * @author pengpx
 */
public class CrashHandler implements Thread.UncaughtExceptionHandler {
    private static CrashHandler instance;
    private Context context;
    /**
     * 系统默认的UncaughtException处理类
     */
    private Thread.UncaughtExceptionHandler defaultHandler;

    // 单例
    public static CrashHandler getInstance() {
        if (instance == null) {
            instance = new CrashHandler();
        }
        return instance;
    }

    // 初始化
    public void init(Context context) {
        this.context = context;
        LogUtil.d("handleException---->>" + "init");
        defaultHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    @Override
    public void uncaughtException(Thread arg0, Throwable arg1) {
        if (!handleException(arg1) && defaultHandler != null) {
            // 如果用户没有处理则让系统默认的异常处理器来处理
            defaultHandler.uncaughtException(arg0, arg1);
        } else {
            // 退出进程
            System.exit(16);
        }
    }

    // 处理异常
    private boolean handleException(Throwable ex) {
        if (ex == null) {
            return true;
        }
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
        ex.printStackTrace(pw);
        String errorMsg = sw.toString();
        ErrorCollectOperator.getInstance().insert("" + errorMsg);
        // 等待1s
//        try {
//            Thread.sleep(1000);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }

        // 关闭进程
        int nPid = android.os.Process.myPid();
        android.os.Process.killProcess(nPid);

        return true;
    }
}