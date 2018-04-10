
package com.pengyouwan.sdk.db;

/**
 * 描述:用户信息表
 * 
 * @author zhj
 * @since 2016年3月31日 下午9:07:48
 */
public class UserTable {

    public static final String TABLE_NAME = "info";

    public static final String ID = "id";

    /**
     * 账号
     */
    public static final String EXTRA0 = "extra0";

    /**
     * 密码(2.1.3之后修改为extra5)
     */
    public static final String EXTRA1 = "extra1";

    /**
     * 账号类型
     */
    public static final String EXTRA2 = "extra2";

    /**
     * 创建时间
     */
    public static final String CREATE_AT = "extra7";

    /**
     * 修改时间
     */
    public static final String MODIFIED_AT = "extra8";

    /**
     * should change account
     */
    public static final String EXTRA3 = "extra3";

    /**
     * 昵称
     */
    public static final String EXTRA4 = "extra4";

    /**
     * 密码(已被2.1.3新密码使用)
     */
    public static final String EXTRA5 = "extra5";

    /**
     * 拓展字段
     */
    public static final String EXTRA6 = "extra6";

    public static final String CREATE_TABLE_SQL = "CREATE TABLE IF NOT EXISTS " + TABLE_NAME + " ("
            + ID + " INTEGER PRIMARY KEY," + UserTable.EXTRA0 + " TEXT," + UserTable.EXTRA1
            + " TEXT," + UserTable.EXTRA2 + " INTEGER," + UserTable.EXTRA3 + " TEXT,"
            + UserTable.EXTRA4 + " TEXT," + UserTable.EXTRA5 + " TEXT," + UserTable.EXTRA6
            + " TEXT," + CREATE_AT + " INTEGER," + MODIFIED_AT + " INTEGER);";
}
