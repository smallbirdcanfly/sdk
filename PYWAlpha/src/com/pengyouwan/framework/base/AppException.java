
package com.pengyouwan.framework.base;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.Date;

import android.os.Environment;

import com.pengyouwan.sdk.db.BehavioralOperator;
import com.pengyouwan.sdk.db.ErrorCollectOperator;

/**
 * Copyright (C) pengpuxin Inc.All Rights Reserved.
 * FileName：com.pengyouwan.framework.base.
 *
 * @Description：应用程序异常类：用于捕获异常和提示错误信息 History： 版本号 作者 日期 简要介绍相关操作 2.1.3 zhj
 * 2016-7-2 Create
 */
public class AppException extends Exception {

    /**
     * sdcard
     */
    public static final String SDCARD_FOLDER = Environment.getExternalStorageDirectory().toString();

    private static final long serialVersionUID = -4644709214646468113L;

    /**
     * 网络连接异常
     */
    public final static byte TYPE_CONNECT = 0x01;

    /**
     * 网络读取数据异常
     */
    public final static byte TYPE_SOCKET = 0x02;

    /**
     * 错误响应码
     */
    public final static byte TYPE_HTTP_CODE = 0x03;

    /**
     * 网络异常
     */
    public final static byte TYPE_HTTP_ERROR = 0x04;

    /**
     * XML解析出错
     */
    public final static byte TYPE_XML = 0x05;

    /**
     * io操作异常
     */
    public final static byte TYPE_IO = 0x06;

    /**
     * 运行时异常
     */
    public final static byte TYPE_RUN = 0x07;

    private int mType;

    private int mCode;

    /**
     * 日志目录
     */
    public static final String LOG_FOLDER = SDCARD_FOLDER + "/pywSDK/" + "log/";

    private AppException(int type, int code, Exception ex) {
        this.mType = type;
        this.mCode = code;
        saveErrorLog(ex);
    }

    public int getType() {
        return this.mType;
    }

    public int getCode() {
        return this.mCode;
    }

    /**
     * 保存异常日志
     *
     * @param ex
     */
    public static void saveErrorLog(Exception ex) {
        if (ex == null) {
            return;
        }
        ex.printStackTrace();
        String errorlog = "error.log";
        String savePath = LOG_FOLDER;
        String logFilePath = "";
        FileWriter fw = null;
        PrintWriter pw = null;
        try {
            // 判断是否挂载了SD卡
            String storageState = Environment.getExternalStorageState();
            if (storageState.equals(Environment.MEDIA_MOUNTED)) {
                File file = new File(savePath);
                if (!file.exists()) {
                    file.mkdirs();
                }
                logFilePath = savePath + errorlog;
            }
            // 没有挂载SD卡，无法写文件
            if (logFilePath == "") {
                return;
            }
            File logFile = new File(logFilePath);
            if (!logFile.exists()) {
                logFile.createNewFile();
            }
            fw = new FileWriter(logFile, true);
            pw = new PrintWriter(fw);
            pw.println("--------------------" + (new Date().toLocaleString())
                    + "---------------------");
            ex.printStackTrace(pw);
            pw.close();
            fw.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (pw != null) {
                pw.close();
            }
            if (fw != null) {
                try {
                    fw.close();
                } catch (IOException e) {
                }
            }
        }
    }

    /**
     * 保存异常日志
     *
     * @param errorStr
     */
    public static void saveErrorLog(String errorStr) {
        Exception ex = new Exception(errorStr);
        saveErrorLog(ex);
    }

    /**
     * HTTP错误响应码
     *
     * @param code
     * @return
     */
    public static AppException http(int code) {
        ErrorCollectOperator.getInstance().insert("error http:"
                + code);
        return new AppException(TYPE_HTTP_CODE, code, new Exception("error http responsecode:"
                + code));
    }

    /**
     * 网络异常
     *
     * @param e
     * @return
     */
    public static AppException http(Exception e, int code) {
        ErrorCollectOperator.getInstance().insert("error http:"
                + e.getMessage());
        return new AppException(TYPE_HTTP_ERROR, code, e);
    }

    /**
     * 读取数据异常
     *
     * @param e
     * @return
     */
    public static AppException socket(Exception e) {
        ErrorCollectOperator.getInstance().insert("error socket:"
                + e.getMessage());
        return new AppException(TYPE_SOCKET, 0, e);
    }

    /**
     * IO操作异常
     *
     * @param e
     * @return
     */
    public static AppException io(Exception e) {
        ErrorCollectOperator.getInstance().insert("error io:"
                + e.getMessage());
        if (e instanceof UnknownHostException || e instanceof ConnectException) {
            return new AppException(TYPE_CONNECT, 0, e);
        } else if (e instanceof IOException) {
            return new AppException(TYPE_IO, 0, e);
        }
        return run(e);
    }

    /**
     * XML解释异常
     *
     * @param e
     * @return
     */
    public static AppException xml(Exception e) {
        ErrorCollectOperator.getInstance().insert("error xml:"
                + e.getMessage());
        return new AppException(TYPE_XML, 0, e);
    }

    /**
     * 网络异常
     *
     * @param e
     * @return
     */
    public static AppException network(Exception e) {
        ErrorCollectOperator.getInstance().insert("error network:"
                + e.getMessage());
        return network(e, 0);
    }

    /**
     * 网络异常
     *
     * @param e
     * @return
     */
    public static AppException network(Exception e, int code) {
        ErrorCollectOperator.getInstance().insert("error network:"
                + e.getMessage());
        if (e instanceof UnknownHostException || e instanceof ConnectException) {
            return new AppException(TYPE_CONNECT, code, e);
        } else if (e instanceof SocketException) {
            return socket(e);
        }
        return http(e, code);
    }

    /**
     * 运行时异常
     *
     * @param e
     * @return
     */
    public static AppException run(Exception e) {
        ErrorCollectOperator.getInstance().insert("error runtime:"
                + e.getMessage());
        return new AppException(TYPE_RUN, 0, e);
    }
}
