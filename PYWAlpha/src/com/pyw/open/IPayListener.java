package com.pyw.open;

public interface IPayListener {

	public void onPaySuccess(PayResult result);
	
	public void onPayFail(int code, String message);
	
}
