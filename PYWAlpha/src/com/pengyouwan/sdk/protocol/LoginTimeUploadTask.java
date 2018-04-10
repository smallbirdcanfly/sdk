
package com.pengyouwan.sdk.protocol;

import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.StaticsHelper;

/**
 * 描述:激活时长上报任务
 * 
 * @author zhj
 */
public abstract class LoginTimeUploadTask extends AbstractResponseCallback {

	private LoginTimeUploadResponse responseObj;
	public void request(String startTime, String endTime) throws AppException {
		HashMap<String, String> params = new HashMap<String, String>();
		SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
		if(user==null){
			return;
		}
		String tid = AppUtil.getTid();
		String api2 = AppUtil.getApiSecret2(tid, InitManager.getInstance().getApisecret());
		int accountType = user.getAccountType();
		String username = "";
		if (accountType == 2) {// 1 为通行证,2 为游戏账号
			params.put("token", user.getToken());
			username = user.getUserName();
		} else {
			username = user.getUserName();
			params.put("token", user.getPhoneNoToken());
		}
		String gameId = InitManager.getInstance().getGameId();
		String sign = MD5Util.getMd5(gameId + username + api2).toLowerCase();
		params.put("tid", tid);
		params.put("sign", sign);
		params.put("gameid", gameId);
		params.put("gamekey", SDKControler.getGameKey());
		params.put("parameterList", getJsonList(endTime,username,startTime));
		// 生成响应类
		responseObj = new LoginTimeUploadResponse();
		// 执行请求
		RequestNetUtil.getInstance().request(params,  StaticsHelper.UPLOAD_URL, listener,
				errorListener);
	}
	
	
	/**
	 * 直接上传db中的所有未上报数据
	 * @param info
	 * @throws AppException
	 */
	public void uploadAll(String info) throws AppException {
		HashMap<String, String> params = new HashMap<String, String>();
		SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
		if(user==null){
			return;
		}
		String tid = AppUtil.getTid();
		String api2 = AppUtil.getApiSecret2(tid, InitManager.getInstance().getApisecret());
		int accountType = user.getAccountType();
		String username = "";
		if (accountType == 2) {// 1 为通行证,2 为游戏账号
			params.put("token", user.getToken());
			username = user.getUserName();
		} else {
			username = user.getUserName();
			params.put("token", user.getPhoneNoToken());
			return ;//值上传游戏账号登录时长
		}
		String gameId = InitManager.getInstance().getGameId();
		String sign = MD5Util.getMd5(gameId + username + api2).toLowerCase();
		params.put("tid", tid);
		params.put("sign", sign);
		params.put("gameid", gameId);
		params.put("gamekey", SDKControler.getGameKey());
		params.put("parameterList","["+info+"]");
		// 生成响应类
		responseObj = new LoginTimeUploadResponse();
		// 执行请求
		RequestNetUtil.getInstance().request(params, StaticsHelper.UPLOAD_URL, listener,
				errorListener);
	}
	
	private String getJsonList(String endTime,String username,String startTime){
		JSONObject jobj = new JSONObject();
		try {
			jobj.put("account", username);
			jobj.put("endTime", endTime);
			jobj.put("startTime", startTime);
		} catch (JSONException e) {
			e.printStackTrace();
		}	
		return "["+jobj.toString()+"]";
	}

	// 请求成功
	private Listener<String> listener = new Listener<String>() {

		public void onResponse(String response) {

			try {
				JSONObject jobj = new JSONObject(response);
				int ack = jobj.getInt("ack");
				if (ack == 200) {
					responseObj.setOk(true);
				} else {
					responseObj.setErrorMsg(jobj.getString("msg"));
					responseObj.setOk(false);
				}
			} catch (JSONException e) {
				e.printStackTrace();
			} finally {
				callback(responseObj);
			}

		}
	};

	// 请求失败
	private ErrorListener errorListener = new ErrorListener() {

		public void onErrorResponse(VolleyError error) {
			responseObj.setErrorMsg(error.getMessage());
			callback(responseObj);
		}

	};

	public class LoginTimeUploadResponse extends HttpResponse {
		private static final long serialVersionUID = 1L;

		private String errorMsg;

		public String getErrorMsg() {
			return errorMsg;
		}

		public void setErrorMsg(String errorMsg) {
			this.errorMsg = errorMsg;
		}

	}
}
