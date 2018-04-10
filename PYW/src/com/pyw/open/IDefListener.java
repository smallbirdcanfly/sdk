package com.pyw.open;


public interface IDefListener {
	public void onSuccess();
	
	public void onFail(int code, String message);
}
