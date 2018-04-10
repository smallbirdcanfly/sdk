
package com.pengyouwan.sdk.db;

import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ToastUtil;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * 描述:用户信息表操作类
 * 
 * @author zhj
 * @since 2016年3月31日 下午9:08:04
 */
public class UserOperator {

    private static volatile UserOperator mOperator = null;

    private UserOperator() {

    }

    /**
     * 懒汉式，单例
     * 
     * @return
     */
    public static UserOperator getInstance() {
        if (mOperator == null) {
            synchronized (UserOperator.class) {
                if (mOperator == null) {
                    mOperator = new UserOperator();
                }
            }
        }
        return mOperator;
    }

    public static void destroy() {
        mOperator = null;
    }

    /**
     * 获取可读数据库
     * 
     * @return
     */
    protected SQLiteDatabase getReadableDatabase() {
        return PYWDBHelper.getInstance().getReadableDatabase();
    }

    /**
     * 获取可读写数据库
     * 
     * @return
     */
    protected SQLiteDatabase getWritableDatabase() {
        return PYWDBHelper.getInstance().getWritableDatabase();
    }

    /**
     * 插入一个用户信息，只保留用户的账号和密码
     * 
     * @param user
     * @return
     */
    public long insertUser(SDKUser user) {
        ContentValues cv = null;
        if (user != null) {
            cv = getUserContentValues(user.getUserName(), user.getPwd());
            return getWritableDatabase().insert(UserTable.TABLE_NAME, null, cv);
        }
        return -1;
    }

    private ContentValues getUserContentValues(String account, String psw) {
        return getUserContentValues(account, psw, false);
    }

    private ContentValues getUserContentValues(String account, String psw, boolean isUpdate) {
        String p = psw;
        try {
            p = new String(AppUtil.encode(psw.getBytes("ISO-8859-1")), "ISO-8859-1");
        } catch (Exception e) {
            p = psw;
        }

        ContentValues cv = new ContentValues();
        cv.put(UserTable.EXTRA0, account == null ? "" : account);
        cv.put(UserTable.EXTRA5, p == null ? "" : p);
        long time = System.currentTimeMillis();
        if (isUpdate) {
            cv.put(UserTable.CREATE_AT, time);
        }
        cv.put(UserTable.MODIFIED_AT, time);
        return cv;
    }

    /**
     * 更新或者插入一个user信息
     * 
     * @param user
     * @return
     */
    public long insertOrUpdateUserInfo(SDKUser user) {
        long l = updateUserInfo(user);
        if (l == -1 || l == 0) {
            // 如果更新不成功，则可能为原本不存在此数据
            l = insertUser(user);
        }
        return l;
    }

    /**
     * 更新或者插入一串user信息列表
     * 
     * @param userList
     * @return
     */
    public long insertOrUpdateUserInfos(List<SDKUser> userList) {
        if (userList == null) {
            return -1;
        }
        if (userList.size() > 0) {
            for (SDKUser sdkUser : userList) {
                long l = updateUserInfo(sdkUser);
                if (l == -1 || l == 0) {
                    // 如果更新不成功，则可能为原本不存在此数据
                    insertUser(sdkUser);
                }
            }
        }
        return 0;
    }

    /**
     * 插入用户的账号名和密码
     * 
     * @param account
     * @param psw
     * @return
     */
    public long insert(String account, String psw) {
        ContentValues cv = getUserContentValues(account, psw);
        return getWritableDatabase().insert(UserTable.TABLE_NAME, null, cv);
    }

    /**
     * 根据传入的user里的账号名来删除一个记录
     * 
     * @param user
     * @return 0或者-1都是删除失败
     */
    public long deleteUser(SDKUser user) {
        if (user != null) {
            String name = user.getUserName();
            if (!TextUtils.isEmpty(name)) {
                return getWritableDatabase().delete(UserTable.TABLE_NAME, UserTable.EXTRA0 + "=?",
                        new String[] {
                            name
                        });
            }
        }
        return -1;
    }

    public long delete(String whereClause, String[] whereArgs) {
        return getWritableDatabase().delete(UserTable.TABLE_NAME, whereClause, whereArgs);
    }

    /**
     * 更新一个用户的信息，以用户名为查找条件
     * 
     * @param user
     * @return
     */
    public long updateUserInfo(SDKUser user) {
        if (user != null) {
            String name = user.getUserName();
            if (TextUtils.isEmpty(name)) {
                return -1;
            }

            ContentValues cv = getUserContentValues(user.getUserName(), user.getPwd(), true);
            return getWritableDatabase().update(UserTable.TABLE_NAME, cv, UserTable.EXTRA0 + "=?",
                    new String[] {
                        name
                    });
        }
        return -1;
    }

    // user passport username
    public long updateChangeAccountInfo(String passport, String account) {
        if (TextUtils.isEmpty(passport)) {
            return -1;
        }
        ContentValues cv = new ContentValues();
        cv.put(UserTable.EXTRA0, passport);
        cv.put(UserTable.EXTRA3, account);
        long time = System.currentTimeMillis();
        cv.put(UserTable.MODIFIED_AT, time);
        return getWritableDatabase().update(UserTable.TABLE_NAME, cv, UserTable.EXTRA0 + "=?",
                new String[] {
                    passport
                });
    }

    public String getChangeAccountInfo() {
        Cursor c = getReadableDatabase().query(UserTable.TABLE_NAME, null, null, null, null, null,
                UserTable.MODIFIED_AT + " desc");
        String account = null;
        if (c.moveToFirst()) {
            account = c.getString(c.getColumnIndexOrThrow(UserTable.EXTRA3));
        }
        if (account == null) {
            return "";
        }
        return account;
    }

    /**
     * 更新信息
     * 
     * @param cv
     * @param selection
     * @param selectionArgs
     * @return
     */
    public long update(ContentValues cv, String selection, String[] selectionArgs) {
        if (!cv.containsKey(UserTable.MODIFIED_AT)) {
            cv.put(UserTable.MODIFIED_AT, System.currentTimeMillis());
        }
        return getWritableDatabase().update(UserTable.TABLE_NAME, cv, selection, selectionArgs);
    }

    /**
     * 获取缓存的用户信息列表,按更改时间做降序排列
     * 
     * @return
     */
    public List<SDKUser> getUserInfos() {
        Cursor c = getReadableDatabase().query(UserTable.TABLE_NAME, null, null, null, null, null,
                UserTable.MODIFIED_AT + " desc");
        return getUserInfoFromCursor(c);
    }

    /**
     * 获取上次登陆的用户信息
     * 
     * @return
     */
    public SDKUser getLastLoginUserInfo() {
        List<SDKUser> list = getUserInfos();
        if (list != null && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    /**
     * 解析cursor
     * 
     * @param c
     * @return
     */
    public List<SDKUser> getUserInfoFromCursor(Cursor c) {
        if (c != null) {
            List<SDKUser> infos = new ArrayList<SDKUser>(c.getCount());
            SDKUser userInfo = null;
            try {
                for (c.moveToFirst(); !c.isAfterLast(); c.moveToNext()) {
                    userInfo = new SDKUser();
                    userInfo.setUserName(c.getString(c.getColumnIndexOrThrow(UserTable.EXTRA0)));
                    String esc = c.getString(c.getColumnIndexOrThrow(UserTable.EXTRA5));
                    esc = new String(AppUtil.decode(esc.getBytes("ISO-8859-1")), "ISO-8859-1");
                    userInfo.setPwd(esc);
                    infos.add(userInfo);
                }
            } catch (Exception e) {
                //ToastUtil.showMsg("用户数据解析失败");
            }
            c.close();
            return infos;
        }
        return null;
    }

}
