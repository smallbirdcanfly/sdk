package com.pyw.plugin.excutecallback;

import com.pyw.open.ILogoutListener;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

/**
 * 登出回调
 * 
 * @author zhj
 * 
 */
public class LogoutExecuteCallback implements executeCallback {

	private ILogoutListener listener;

	protected LogoutExecuteCallback(ILogoutListener listener) {
		this.listener = listener;
	}

	@Override
	public void onExecutionSuccess(Object obj) {

		if (obj != null && obj instanceof Integer) {

			int code = (Integer) obj;
			if (code == 0) {
				if (listener != null) {
					listener.success();
				}
			} else {
				if (listener != null)
					listener.fail(code);
			}
		}
	}

	@Override
	public void onExecutionFailure(int failCode, String failMessage) {
		if (listener != null) {
			listener.fail(failCode);
		}
	}

}
