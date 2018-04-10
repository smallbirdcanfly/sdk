package com.pyw.open;

public interface IUserListener {
	public void onLoginSuccess(PYWUser user);
	public void onLoginFail(int code, String message);
}
