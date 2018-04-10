package com.pengyouwan.sdk.ui.widget.gridpasswordview;

/**
 * 描述：密码输入框的基类
 * 
 * @author Hanson
 * @version 创建时间：2016-7-2 上午10:27:54
 * 
 */
public interface PasswordView {
	
	public enum PasswordType {

		  NUMBER, TEXT, TEXTVISIBLE, TEXTWEB;
	}

	String getPassWord();

	void clearPassword();

	void setPassword(String password);

	void setPasswordVisibility(boolean visible);

	void togglePasswordVisibility();

	void setOnPasswordChangedListener(
			GridPasswordView.OnPasswordChangedListener listener);

	void setPasswordType(PasswordType passwordType);
}
