package com.pyw.plugin.okwan;

public interface OkwanCallback {

	void onLogin(String uid,String scode);
	
	void onPay(String status);
}
