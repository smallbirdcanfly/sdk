package com.pyw.plugin.excutecallback;

import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.IUserListener;
import com.pyw.open.PYWUser;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

/**
 * 朋友玩渠道回调
 * @author Administrator
 *
 */
public class PYWLoginExcuteCallback implements executeCallback {
	private PYWSDKManager mManager;

	private IUserListener callback;
	
	protected PYWLoginExcuteCallback(PYWSDKManager m,IUserListener callback){
		this.mManager =m;
		this.callback = callback;
	}

	@Override
	public void onExecutionSuccess(Object obj) {
		if (null != obj
				&& obj instanceof UserParams) {
			PYWUser user = new PYWUser();
			UserParams userParams = (UserParams) obj;
			// 参数转换
			user.setUserId(userParams
					.getSdkUserID());
			user.setToken(userParams.getToken());
			mManager.setCurrentChannel2PYW();
			if(callback != null){
				callback.onLoginSuccess(user);
			}
		}
	}

	@Override
	public void onExecutionFailure(int failCode,
			String failMessage) {
		if(callback != null){
			callback.onLoginFail(failCode, failMessage);
		}
	}

}
