package com.pyw.plugin.excutecallback;

import java.util.HashMap;

import org.json.JSONObject;

import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pyw.common.Constants;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.ILogoutListener;
import com.pyw.open.IUserListener;
import com.pyw.open.KeyCodes;
import com.pyw.open.PYWUser;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

/**
 * 第三方渠道的登录执行回调
 * 
 * @author zhj
 * 
 */
public class OtherChannelLoginCallback implements executeCallback {

	private PYWSDKManager mManager;

	private PYWPlugin sChannelPlugin;

	private IUserListener callback;

	private HashMap<String, String> sPayParams;

	protected OtherChannelLoginCallback(PYWSDKManager m, PYWPlugin p,
			IUserListener callback) {
		mManager = m;
		sChannelPlugin = p;
		this.callback = callback;
	}

	@Override
	public void onExecutionSuccess(Object obj) {
		if (mManager == null)
			return;
		if (null != obj && obj instanceof UserParams) {
			mManager.setPlugin(sChannelPlugin);
			UserParams userData = (UserParams) obj;
			// 成功返回参数，调用朋友玩信息轉換接口實現登錄
			HashMap<String, String> pywLoginParams = new HashMap<String, String>();
			pywLoginParams.put("gameid", mManager.getGameId());
			pywLoginParams.put("gamekey", mManager.getGameKey());
			pywLoginParams.put("tid", AppUtil.getTid());
			pywLoginParams.put("channel_id", mManager.getLoginChannelId());
			pywLoginParams.put("channel_uid", userData.getSdkUserID());// 渠道登录完成后的用户id
			pywLoginParams.put("channel_token", userData.getToken());// 渠道登录完成后的token
			if (userData.getAgentgame() != null) {
				pywLoginParams.put("agentgame", userData.getAgentgame());// 渠道登录完成后的agentgame
			}
			sPayParams = mManager.getPayParams();
			if (null == sPayParams) {
				sPayParams = new HashMap<String, String>();
				mManager.setPayParams(sPayParams);
			}

			sPayParams.put("pf", userData.getPf());
			sPayParams.put("pfkey", userData.getPfkey());
			sPayParams.put("pay_token", userData.getPay_token());
			sPayParams.put("channel_token", userData.getToken());
			RequestNetUtil.getInstance().request(pywLoginParams,
					Constants.URL_LOGIN, getNetworkSuccessListener(userData),
					new ErrorListener() {

						@Override
						public void onErrorResponse(VolleyError error) {
							// 去朋友玩服务器信息转换失败，直接登出三方渠道
							logout();
							if (callback != null) {
								callback.onLoginFail(
										KeyCodes.ERROR_PARAMS_TRANSFORM,
										"login failed,net error, volleyError message: "
												+ error);
							}
						}
					});
		} else {
			// 去朋友玩服务器信息转换失败，直接登出三方渠道
			logout();
			if (callback != null) {
				callback.onLoginFail(KeyCodes.ERROR_CALLBACK_PARAMS,
						"login callback params error!");
			}
		}
	}

	/**
	 * 创建联网操作监听
	 * 
	 * @param userData
	 * @return
	 */
	private Listener<String> getNetworkSuccessListener(final UserParams userData) {
		return new Listener<String>() {
			@Override
			public void onResponse(String response) {
				try {
					JSONObject jobj = new JSONObject(response);
					int ack = jobj.getInt("ack");
					String msg = jobj.getString("msg");
					if (ack == 200) {
						JSONObject data = jobj.optJSONObject("data");
						if (data != null) {
							onNetworksuccessInternal(userData, data);
						} else {
							// 返回數據為空
							// 去朋友玩服务器信息转换失败，直接登出三方渠道
							logout();
							if (callback != null) {
								callback.onLoginFail(
										KeyCodes.ERROR_CALLBACK_PARAMS,
										"login failed,response data is null");
							}
						}
					} else {
						// 聯網錯誤
						// 去朋友玩服务器信息转换失败，直接登出三方渠道
						logout();
						if (callback != null) {
							callback.onLoginFail(KeyCodes.ERROR_NETWORKING,
									"login failed,net error,code is: " + ack
											+ " msg: " + msg);
						}
					}
				} catch (Exception e) {
					// 去朋友玩服务器信息转换失败，直接登出三方渠道
					logout();
					if (callback != null) {
						callback.onLoginFail(KeyCodes.ERROR_PARAMS_TRANSFORM,
								"login failed,response params analytic error.e: "
										+ e);
					}
				}
			}

		};
	}

	@Override
	public void onExecutionFailure(int failCode, String failMessage) {
		// 去朋友玩服务器信息转换失败，直接登出三方渠道
		logout();
		if (callback != null) {
			callback.onLoginFail(failCode, failMessage);
		}
	}

	private void logout() {
		if (mManager != null) {
			mManager.logout(null, new ILogoutListener() {
				@Override
				public void success() {
				}

				@Override
				public void fail(int code) {
				}
			});
		}
	}

	/**
	 * 处理网络请求成功操作
	 * 
	 * @param userData
	 * @param data
	 */
	private void onNetworksuccessInternal(final UserParams userData,
			JSONObject data) {
		// 组织回调数据
		String cpUID = data.optString("cp_uid");// 转换后的朋友玩用户id
		String account = data.optString("account");// 新建的朋友玩账号
		String token = data.optString("token");// 朋友玩账号登录后token
		// 保存下来支付使用
		if (null == sPayParams) {

			sPayParams = new HashMap<String, String>();
		}
		sPayParams.put("cp_uid", cpUID);
		sPayParams.put("account", account);
		sPayParams.put("token", token);
		if (userData.getSdkUserID().equals("channel_uid_is_null")) {
			PYWSDKManager.CHANNEL_UID = data.optString("channel_uid");
			sPayParams.put("channel_uid", data.optString("channel_uid"));
		} else {
			sPayParams.put("channel_uid", userData.getSdkUserID());
		}
		// 数据返回给用户
		PYWUser user = new PYWUser();
		user.setUserId(cpUID);
		user.setToken(token);
		PYWSDKManager.user = user;

		// 设置朋友玩的UserManager
		SDKUser pywSdkUser = new SDKUser();
		pywSdkUser.setUserId(cpUID);
		pywSdkUser.setUserName(account);
		pywSdkUser.setToken(token);
		pywSdkUser.setAccountType(2);// 游戏账号状态
		UserManager.getInstance().setCurrentUser(pywSdkUser);

		if (callback != null) {
			callback.onLoginSuccess(user);
		}
	}

}
