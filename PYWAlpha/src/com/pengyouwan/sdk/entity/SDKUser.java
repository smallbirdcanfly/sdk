
package com.pengyouwan.sdk.entity;

import java.io.Serializable;

import com.pengyouwan.sdk.open.User;

/**
 * 描述:登录用户
 * 
 * @author zhj
 * @since 2015年9月25日 上午11:35:02
 */
public class SDKUser implements Serializable {

    private static final long serialVersionUID = 1L;

    private String userId;// cp端调用的用户id

    private String userName;// 游戏账号

    private String nickName;// 昵称

    private String pwd;// 登录密码

    private boolean havePayPwd;// 是否有交易密码

    private String token;// 用户token信息

    private String phoneNoToken;// 通行证token

    private String phoneNo;// 通行证号码

    private int accountType;// 账号类别 1-通行证 2-游戏账号

    private int isNew;// 1为新购账号
    
    private boolean isVerify;//是否有身份证验证

    public void setIsNew(int i) {
        isNew = i;
    }

    public int getIsNew() {
        return isNew;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public boolean isHavePayPwd() {
        return havePayPwd;
    }

    public void setHavePayPsw(boolean havePayPwd) {
        this.havePayPwd = havePayPwd;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public int getAccountType() {
        return accountType;
    }

    public void setAccountType(int accountType) {
        this.accountType = accountType;
    }

    public String getPhoneNoToken() {
        return phoneNoToken;
    }

    public void setPhoneNoToken(String phoneNoToken) {
        this.phoneNoToken = phoneNoToken;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    /**
     * 过滤敏感信息，只把部分数据传出去
     */
    public User getCPUserInfo() {
        User user = new User();
        user.setToken(token);
        user.setUserId(userId);
        return user;
    }

	public boolean isVerify() {
		return isVerify;
	}

	public void setVerify(boolean isVerify) {
		this.isVerify = isVerify;
	}

}
