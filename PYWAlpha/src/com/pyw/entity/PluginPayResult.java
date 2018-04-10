package com.pyw.entity;

import java.util.HashMap;

import com.pyw.open.PayResult;


/***
 * 支付参数
 *
 */
public class PluginPayResult{
	
	/**
	 * 直接返回参数给调用者
	 */
	public static final short MODE_NOMAL = 0;
	/**
	 * 通知服务器调用情况，不等待回执直接返回参数给调用者
	 */
	public static final short MODE_RESPONSE = 1;
	/**
	 * 通知服务器调用情况，等待回执再返回调用参数给调用者
	 */
	public static final short MODE_RESPONSE_NOMAL = 2;
	private short  resultMode;
	private HashMap<String, Object> params;
	private PayResult payResult;
	
	public short getResultMode() {
		return resultMode;
	}
	public void setResultMode(short resultMode) {
		this.resultMode = resultMode;
	}
	public HashMap<String, Object> getParams() {
		return params;
	}
	public void setParams(HashMap<String, Object> params) {
		this.params = params;
	}
	public PayResult getPayResult() {
		return payResult;
	}
	public void setPayResult(PayResult payResult) {
		this.payResult = payResult;
	}
}
