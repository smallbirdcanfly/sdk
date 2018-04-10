package com.pengyouwan.sdk.db;

public class StaticsTable {
	
    public static final String TABLE_NAME = "statics";

    public static final String ID = "id";

    /**
     * 激活时间
     */
    public static final String START_AT = "extra1";

    /**
     * 结束时间
     */
    public static final String END_TIME = "extra2";

    /**
     *  游戏账号
     */
    public static final String ACCOUNT = "extra3";

    /**
     * 拓展字段
     */
    public static final String EXTRA4 = "extra4";

    public static final String EXTRA5 = "extra5";


    public static final String CREATE_TABLE_SQL = "CREATE TABLE IF NOT EXISTS " + TABLE_NAME + " ("
            + ID + " INTEGER PRIMARY KEY," + START_AT + " TEXT," + ACCOUNT
            + " TEXT," + END_TIME + " TEXT," + EXTRA4 + " TEXT,"
            + EXTRA5 + " TEXT);";
}
