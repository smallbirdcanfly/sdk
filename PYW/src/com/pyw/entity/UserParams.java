package com.pyw.entity;

public class UserParams {

	private boolean suc;
	private int userID;
	private String sdkUserID;
	private String username;
	private String sdkUsername;
	private String token;
	private String extension;
	
	private String pf;
	private String pfkey;
	private String pay_token;
	private String agentgame;
	
	private String roleid;//角色id
	private String roleName;//角色名称
	private String roleLevel;//角色等级
	private String serverArea;//区服标识
	private String serverAreaName;//区服完整信息
	private String roleCreateTime;//角色创建时间
	

	public String getRoleid() {
		return roleid;
	}

	public String getRoleCreateTime() {
		return roleCreateTime;
	}

	public void setRoleCreateTime(String roleCreateTime) {
		this.roleCreateTime = roleCreateTime;
	}

	public void setRoleid(String roleid) {
		this.roleid = roleid;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getRoleLevel() {
		return roleLevel;
	}

	public void setRoleLevel(String roleLevel) {
		this.roleLevel = roleLevel;
	}

	public String getServerArea() {
		return serverArea;
	}

	public void setServerArea(String serverArea) {
		this.serverArea = serverArea;
	}

	public String getServerAreaName() {
		return serverAreaName;
	}

	public void setServerAreaName(String serverAreaName) {
		this.serverAreaName = serverAreaName;
	}

	public String getAgentgame() {
		return agentgame;
	}

	public void setAgentgame(String agentgame) {
		this.agentgame = agentgame;
	}

	public String getPf() {
		return pf;
	}

	public void setPf(String pf) {
		this.pf = pf;
	}

	public String getPfkey() {
		return pfkey;
	}

	public void setPfkey(String pfkey) {
		this.pfkey = pfkey;
	}

	public String getPay_token() {
		return pay_token;
	}

	public void setPay_token(String pay_token) {
		this.pay_token = pay_token;
	}

	public UserParams(){
		this.suc = false;
	}
	
	public UserParams(int userID, String sdkUserID, String username, String sdkUsername, String token, String extension){
		this.userID = userID;
		this.sdkUserID = sdkUserID;
		this.username = username;
		this.sdkUsername = sdkUsername;
		this.token = token;
		this.extension = extension;
		this.suc = true;
	}
	
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getSdkUserID() {
		return sdkUserID;
	}
	public void setSdkUserID(String sdkUserID) {
		this.sdkUserID = sdkUserID;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}

	public boolean isSuc() {
		return suc;
	}

	public void setSuc(boolean suc) {
		this.suc = suc;
	}

	public String getExtension() {
		return extension;
	}

	public void setExtension(String extension) {
		this.extension = extension;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getSdkUsername() {
		return sdkUsername;
	}

	public void setSdkUsername(String sdkUsername) {
		this.sdkUsername = sdkUsername;
	}
	
}
