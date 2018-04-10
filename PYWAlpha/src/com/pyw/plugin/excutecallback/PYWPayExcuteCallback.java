package com.pyw.plugin.excutecallback;

import com.pyw.open.IPayListener;
import com.pyw.open.KeyCodes;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

/**
 * 朋友玩支付执行回调
 * 
 * @author zhj
 * 
 */
public class PYWPayExcuteCallback implements executeCallback {

	private IPayListener callback;

	protected PYWPayExcuteCallback(IPayListener callback) {
		this.callback = callback;
	}

	@Override
	public void onExecutionSuccess(Object obj) {
		if (obj instanceof PayResult) {
			if (callback != null) {
				callback.onPaySuccess((PayResult) obj);
			}

		} else {
			if (callback != null) {
				callback.onPayFail(KeyCodes.ERROR_CALLBACK_PARAMS, "pay callback params error!");
			}
		}
	}

	@Override
	public void onExecutionFailure(int failCode, String failMessage) {
		if (callback != null) {
			callback.onPayFail(KeyCodes.ERROR_CALLBACK_PARAMS, failMessage);
		}
	}

}
