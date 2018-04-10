package com.pengyouwan.sdk.db;

public class ErrorCollectTable {
	public static final String TABLE_NAME = "errorcollect";

	public static final String ID = "id";

	/**
	 * 错误发生时间
	 */
	public static final String CREAT_TIME = "extra1";

	/**
	 * 错误信息
	 */
	public static final String LOG = "extra2";


	public static final String CREATE_TABLE_SQL = "CREATE TABLE IF NOT EXISTS "
			+ TABLE_NAME + " (" + ID + " INTEGER PRIMARY KEY AUTOINCREMENT," + CREAT_TIME
			+ " INTEGER," + LOG + " TEXT);";

}
