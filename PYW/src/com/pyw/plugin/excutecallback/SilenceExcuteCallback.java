package com.pyw.plugin.excutecallback;

import com.pyw.plugin.PYWPluginExecutor.executeCallback;

/**
 * 不做任何处理的空回调
 * @author zhj
 *
 */
public class SilenceExcuteCallback implements executeCallback {
	
	protected SilenceExcuteCallback(){
		
	}
	
	@Override
	public void onExecutionSuccess(Object obj) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onExecutionFailure(int failCode, String failMessage) {
		// TODO Auto-generated method stub

	}

}
