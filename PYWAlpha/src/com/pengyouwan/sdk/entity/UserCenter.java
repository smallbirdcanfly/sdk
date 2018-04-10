/**
 * 
 */
package com.pengyouwan.sdk.entity;

import java.io.Serializable;

/**
 * 描述:个人中心数据类
 *
 * @author Hanson
 * @since  2016-7-4 上午11:53:57
 */
public class UserCenter implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String phoneNo;// 通行证

    private float pywBalance;// 朋友玩余额

    private int type;// 用户类型

    private int coupon_count;// 代金券数量

    private String setPwdUrl;// 设置密码链接

    private String modifyPwdUrl;// 修改密码链接

    private String forgetPwdUrl;// 忘记密码链接
    
    private String creditUrl;//余额链接
    
    private String nickname;//昵称
    
    private boolean have_pay_pwd;//是否已经设置交易密码
    
    private String account;//游戏账号
    
    private boolean isVerify = false;//是否已认证身份证
    
    private String idCardName;//身份证名称
    
    private String idCardNo;//身份证号码

    public float getPywBalance() {
		return pywBalance;
	}

	public void setPywBalance(float pywBalance) {
		this.pywBalance = pywBalance;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getCoupon_count() {
		return coupon_count;
	}

	public void setCoupon_count(int coupon_count) {
		this.coupon_count = coupon_count;
	}

	public String getSetPwdUrl() {
		return setPwdUrl;
	}

	public void setSetPwdUrl(String setPwdUrl) {
		this.setPwdUrl = setPwdUrl;
	}

	public String getModifyPwdUrl() {
		return modifyPwdUrl;
	}

	public void setModifyPwdUrl(String modifyPwdUrl) {
		this.modifyPwdUrl = modifyPwdUrl;
	}

	public String getForgetPwdUrl() {
		return forgetPwdUrl;
	}

	public void setForgetPwdUrl(String forgetPwdUrl) {
		this.forgetPwdUrl = forgetPwdUrl;
	}

	public String getCreditUrl() {
		return creditUrl;
	}

	public void setCreditUrl(String creditUrl) {
		this.creditUrl = creditUrl;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public boolean isHave_pay_pwd() {
		return have_pay_pwd;
	}

	public void setHave_pay_pwd(boolean have_pay_pwd) {
		this.have_pay_pwd = have_pay_pwd;
	}

	public boolean isVerify() {
		return isVerify;
	}

	public void setVerify(boolean isVerify) {
		this.isVerify = isVerify;
	}

	public String getIdCardName() {
		return idCardName;
	}

	public void setIdCardName(String idCardName) {
		this.idCardName = idCardName;
	}

	public String getIdCardNo() {
		return idCardNo;
	}

	public void setIdCardNo(String idCardNo) {
		this.idCardNo = idCardNo;
	}

 

}
