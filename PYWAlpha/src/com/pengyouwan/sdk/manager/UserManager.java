/**
 * 
 */

package com.pengyouwan.sdk.manager;

import com.pengyouwan.sdk.db.UserOperator;
import com.pengyouwan.sdk.entity.Constants.UserContants;
import com.pengyouwan.sdk.open.ISDKEventCode;
import com.pengyouwan.sdk.open.User;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.preference.SDKPereferenceUtil;

import org.json.JSONArray;

/**
 * 描述:User对象操作管理
 * 
 * @author CJ
 * @since 2016-6-30 下午7:08:52
 */
public class UserManager {

    public static final int CHANGE_ACCOUNT_DEFALUT = 0;// 默认注销值

    public static final int CHANGE_ACCOUNT_LOGOUT = 0xA002;// 正常用户中心注销

    public static final int CHANGE_ACCOUNT_OHTHER = 0xA003;// 游戏管理切换账号

    private int ischangeAccount = CHANGE_ACCOUNT_DEFALUT;

    private SDKUser currentUser;

    private JSONArray userList = null;// 子游戏账户列表

    private static class UserManagerHolder {
        private static UserManager INSTANCE = new UserManager();
    }

    public static final UserManager getInstance() {
        return UserManagerHolder.INSTANCE;
    }

    public void setCurrentUser(SDKUser user) {
        setCurrentUser(user, true);
    }

    public void setCurrentUser(SDKUser user, boolean isSave) {
        currentUser = user;
        // 保存用户信息加密然后保存到本地缓存
        if (isSave) {
            saveuserInfoToDB(user);
        }
    }

    /**
     * 获取当前用户信息,已经过滤敏感信息
     * 
     * @return
     */
    public User getCurrentUser() {
        if (currentUser != null) {
            return currentUser.getCPUserInfo();
        }
        return null;
    }
    
    /**
     * 获取当前用户信息，仅供sdk内部使用
     */
    public SDKUser getCurrentUserForSDK() {
        return currentUser;
    }

    public void saveuserInfoToDB(SDKUser user) {
        SDKUser userDb = new SDKUser();
        if(user.getAccountType()==UserContants.USER_TYPE_PASSPORT){
            userDb.setUserName(user.getPhoneNo());
        }else{
            userDb.setUserName(user.getUserName());
        }
        userDb.setPwd(user.getPwd());
        UserOperator.getInstance().insertOrUpdateUserInfo(userDb);
    }

    public int getChangeAccountType() {
        ischangeAccount = SDKPereferenceUtil.getChangeAccountTag();
        return ischangeAccount;
    }

    public void setChangeAccoutType(int changeType) {
        SDKPereferenceUtil.setChangeAccountTag(changeType);
        ischangeAccount = changeType;
    }

    public void setChangeAccount(boolean bool) {
        ischangeAccount = bool ? CHANGE_ACCOUNT_LOGOUT : CHANGE_ACCOUNT_DEFALUT;
        SDKPereferenceUtil.setChangeAccountTag(ischangeAccount);
    }

    public boolean isChangeAccount() 
    {
        ischangeAccount = SDKPereferenceUtil.getChangeAccountTag();
        return ischangeAccount > 0;
    }

    // 清除当前user对象
    public void cleanCurrenUser() {
        currentUser = null;
    }

    public JSONArray getUserList() {
        return userList;
    }

    public void setUserList(JSONArray userList) {
        this.userList = userList;
    }

    // 清除账号列表
    public void cleanUserList() {
        userList = null;
    }

    // 注销方法
    public void logout() {
        cleanCurrenUser();
        int code = ISDKEventCode.CODE_LOGOUT;
        SDKEventDispatcher.sendEventNow(code, null);
    }

}
