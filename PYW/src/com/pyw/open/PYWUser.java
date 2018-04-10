package com.pyw.open;

/**
 * 登录回调实体类
 * 
 * @author CJ
 * 
 */
public class PYWUser {
	private String userId;// cp端调用的用户id

	private String token;// 用户token信息

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}
}
