package com.pyw.plugin.okwan;

public class EventDispacther {

	private static OkwanCallback callback;


	private static EventDispacther I;
	
	public static EventDispacther get() {
		return I;
	}
	
	private EventDispacther(OkwanCallback c) {
		callback = c;
	}
	
	public static void create(OkwanCallback c) {
		I = new EventDispacther(c);
	}


	public void onLogin(String uid,String scode) {
		if(callback!=null) {
			callback.onLogin(uid, scode);
		}
	}
	
	public void onPay(String status) {
		if(callback!=null) {
			callback.onPay(status);
		}
	}
	
	public void destroy() { 
		callback = null;
		I = null;
	}
	
}
