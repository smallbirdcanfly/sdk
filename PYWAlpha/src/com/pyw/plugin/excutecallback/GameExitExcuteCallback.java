package com.pyw.plugin.excutecallback;

import com.pyw.open.IGameExitListener;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

public class GameExitExcuteCallback implements executeCallback {

	private IGameExitListener listener;

	protected GameExitExcuteCallback(IGameExitListener listener) {
		this.listener = listener;
	}

	@Override
	public void onExecutionSuccess(Object obj) {

		if (obj != null && obj instanceof Integer) {

			int code = (Integer) obj;
			if (code == 0) {
				if (listener != null) {
					listener.onExit();
				}
			} else {
				if (listener != null) {
					listener.onCancel();
				}
			}
		}
	}

	@Override
	public void onExecutionFailure(int failCode, String failMessage) {
		if (listener != null) {
			listener.onExitError(failCode, failMessage);
		}
	}

}
