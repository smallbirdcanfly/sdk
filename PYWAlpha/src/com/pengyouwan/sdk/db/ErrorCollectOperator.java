package com.pengyouwan.sdk.db;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;

import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.Base64;

import org.json.JSONArray;
import org.json.JSONObject;

import java.net.URLDecoder;
import java.net.URLEncoder;

/**
 * 错误日志统计操作类
 *
 * @author pengpx
 */
public class ErrorCollectOperator {
    private static ErrorCollectOperator mOperator = null;

    private ErrorCollectOperator() {
    }

    public static ErrorCollectOperator getInstance() {
        if (mOperator == null) {
            synchronized (StaticsOperator.class) {
                if (mOperator == null) {
                    mOperator = new ErrorCollectOperator();
                }
            }
        }
        return mOperator;
    }

    /**
     * 插入数据
     *
     * @param error_log
     */
    public void insert(String error_log) {
        LogUtil.d("insert---->>" + error_log);
        ContentValues cv = new ContentValues();
        cv.put(ErrorCollectTable.CREAT_TIME, System.currentTimeMillis());
        cv.put(ErrorCollectTable.LOG, error_log);

        PYWDBHelper.getInstance().getWritableDatabase()
                .insert(ErrorCollectTable.TABLE_NAME, null, cv);
    }

    /**
     * 获取所有错误日志数据
     *
     * @return
     */
    public String getErrorlogDatas() {
        LogUtil.d("getErrorlogDatas---->>");
        String returnS = "";
        Cursor cursor = PYWDBHelper
                .getInstance()
                .getReadableDatabase()
                .query(ErrorCollectTable.TABLE_NAME, null, null, null, null,
                        null, ErrorCollectTable.CREAT_TIME, "50");
        if (cursor != null && cursor.getCount() > 0) {
            StringBuilder stringBuilder = new StringBuilder();
            try {
                stringBuilder.append("[");
                while (cursor.moveToNext()) {
                    JSONObject jsonObject = new JSONObject();
                    long time = cursor.getLong(cursor
                            .getColumnIndexOrThrow(ErrorCollectTable.CREAT_TIME));
                    String msg = cursor.getString(cursor
                            .getColumnIndexOrThrow(ErrorCollectTable.LOG));
                    jsonObject.put("time", URLEncoder.encode(new String(AppUtil.encode((time + "").getBytes())
                            , "ISO-8859-1"), "ISO-8859-1"));
                    jsonObject.put("msg", URLEncoder.encode(new String(AppUtil.encode(msg.getBytes())
                            , "ISO-8859-1"), "ISO-8859-1"));

                    stringBuilder.append(jsonObject.toString() + ",");
                }
                returnS = stringBuilder.toString();
                if (returnS.contains(",")) {
                    returnS = returnS.substring(0, returnS.length() - 1);
                }
                returnS = returnS + "]";
            } catch (Exception e) {
                LogUtil.d("error  " + e.toString());
            } finally {
                cursor.close();
            }
        }
        return returnS;
    }

    /**
     * 删除所有数据
     */
    public void clearTable() {
        LogUtil.d("delete all------");
        PYWDBHelper
                .getInstance()
                .getWritableDatabase()
                .delete(ErrorCollectTable.TABLE_NAME,
                        null,
                        new String[]{});
    }

    /**
     * 删除某条错误日志数据
     */
    public void deleteOneErrorLog(long time) {
        PYWDBHelper
                .getInstance()
                .getWritableDatabase()
                .delete(ErrorCollectTable.TABLE_NAME,
                        ErrorCollectTable.CREAT_TIME + " = ?",
                        new String[]{time + ""});
    }

    public synchronized void destroy() {
        PYWDBHelper.getInstance().close();
        PYWDBHelper.destroy();
        mOperator = null;
    }
}
