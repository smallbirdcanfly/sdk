package com.pengyouwan.sdk.db;

public class BehavioralTable {
	public static final String TABLE_NAME = "behavioral";

	public static final String ID = "id";

	/**
	 * 行为时间
	 */
	public static final String CREAT_TIME = "extra1";

	/**
	 * 设备号
	 */
	public static final String DEVICE = "extra2";

	/**
	 * 类型编号
	 */
	public static final String TYPE_SN = "extra3";

	/**
	 * 游戏id
	 */
	public static final String GAME_ID = "extra4";

	/**
	 * 页面编号
	 * 
	 */
	public static final String PAGE_NAME = "extra5";

	/**
	 * 行为编号
	 */
	public static final String BEHAVIORAL_NAME = "extra6";

	/**
	 * ip
	 */
	public static final String IP_NAME = "extra7";

	/**
	 * account
	 */
	public static final String ACCOUNT = "extra8";

	public static final String CREATE_TABLE_SQL = "CREATE TABLE IF NOT EXISTS "
			+ TABLE_NAME + " (" + ID + " INTEGER PRIMARY KEY," + CREAT_TIME
			+ " INTEGER," + TYPE_SN + " TEXT," + DEVICE + " TEXT," + GAME_ID
			+ " TEXT," + PAGE_NAME + " TEXT," + IP_NAME + " TEXT," + ACCOUNT
			+ " TEXT," + BEHAVIORAL_NAME + " TEXT);";

}
