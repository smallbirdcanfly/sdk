
package com.pengyouwan.sdk.db;

import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.sdk.manager.SDKControler;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class PYWDBHelper extends SQLiteOpenHelper {

    public static final String PYW_DB_NAME = "pywDb.db";

    public static final int PYW_DB_VERSION = 4;

    private static volatile PYWDBHelper mHelper = null;

    private PYWDBHelper(Context context, String name, CursorFactory factory, int version) {
        super(context, name, factory, version);
        // TODO Auto-generated constructor stub
    }

    private PYWDBHelper(Context context) {
        super(context, PYW_DB_NAME, null, PYW_DB_VERSION);
    }

    /**
     * 懒汉式单例
     *
     * @return
     */
    public static PYWDBHelper getInstance() {
        if (mHelper == null) {
            synchronized (PYWDBHelper.class) {
                if (mHelper == null) {
                    mHelper = new PYWDBHelper(SDKControler.getContext());
                }
            }
        }
        return mHelper;
    }

    public static void destroy() {
        mHelper = null;
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        // 创建用户信息表
        db.execSQL(UserTable.CREATE_TABLE_SQL);

        //version 2
        db.execSQL(StaticsTable.CREATE_TABLE_SQL);

        //version 3  创建用户行为统计数据库表
        db.execSQL(BehavioralTable.CREATE_TABLE_SQL);

        //version 4  创建错误收集数据库表
        db.execSQL(ErrorCollectTable.CREATE_TABLE_SQL);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        LogUtil.d("onUpgrade---->>>" + "-oldVersion:" + oldVersion + "-newVersion:" + newVersion);
        switch (oldVersion) {
            case 1:
                db.execSQL(StaticsTable.CREATE_TABLE_SQL);
                //创建用户行为统计数据库表
                db.execSQL(BehavioralTable.CREATE_TABLE_SQL);
                break;
            case 2:
                //创建用户行为统计数据库表
                db.execSQL(BehavioralTable.CREATE_TABLE_SQL);
                break;
            case 3:
                //创建错误收集数据库表
                db.execSQL(ErrorCollectTable.CREATE_TABLE_SQL);
                break;
        }
    }

}
