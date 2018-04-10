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
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.StringUtil;

/**
 * 描述:验证短信并且绑定通行证的接口调用类
 * 
 * @author Hanson
 * @since 2016-7-5 下午4:17:42
 */
public abstract class CheckSmsAndBindTask extends AbstractResponseCallback {
	private CheckSmsAndBindResponse responseObj;

	public void request(String sms, int smstype, String phoneno)
			throws AppException {
		HashMap<String, String> params = new HashMap<String, String>();
		SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
		String tid = AppUtil.getTid();
		String api2 = AppUtil.getApiSecret2(tid, InitManager.getInstance()
				.getApisecret());
		params.put("token", user.getToken());
		String sign = MD5Util.getMd5(smstype + phoneno + api2).toLowerCase();
		params.put("sign", sign);
		params.put("gameid", InitManager.getInstance().getGameId());
		params.put("account", user.getUserName());
		params.put("passport", phoneno);
		params.put("smscode", sms);
		params.put("tid", tid);
		params.put("smstype", smstype + "");
		// 生成响应类
		responseObj = new CheckSmsAndBindResponse();
		// 执行请求
		RequestNetUtil.getInstance().request(params,
				com.pengyouwan.sdk.net.UrlManager.URL_CHECK_AND_BIND, listener,
				errorListener);
	}

	// 请求成功
	private Listener<String> listener = new Listener<String>() {

		public void onResponse(String response) {

			try {
				JSONObject jobj = new JSONObject(response);
				int ack = jobj.getInt("ack");
				if (ack == 200) {
					JSONObject data = jobj.getJSONObject("data");
					String code = data.getString("type");
					if (!StringUtil.isEmpty(code)) {
						responseObj.setCode(Integer.parseInt(code));
					}
					responseObj.setErrorMsg(jobj.getString("msg"));
					responseObj.setOk(true);
				} else {
					responseObj.setErrorMsg(jobj.getString("msg"));
					responseObj.setOk(false);
				}
			} catch (JSONException e) {
				responseObj.setErrorMsg("数据解析异常");
				e.printStackTrace();
			} finally {
				callback(responseObj);
			}

		}
	};

	// 请求失败
	private ErrorListener errorListener = new ErrorListener() {

		public void onErrorResponse(VolleyError error) {
			responseObj.setErrorMsg("网络错误，登录失败");
            if (error != null) {
                if (error.networkResponse != null) {
                    responseObj.setErrorMsg("error:" + error.toString());
                }
            }
            callback(responseObj);
		}

	};

	public class CheckSmsAndBindResponse extends HttpResponse {
		private static final long serialVersionUID = 1L;

		/*
		 * 手机已是通行证：1，短信校验失败； 2，绑定成功； 3，绑定失败； 手机不是通行证：4，短信校验成功
		 */
		public static final int RESULT_CODE_BIND_CHECKSMS_FAIL = 1;

		public static final int RESULT_CODE_BIND_SUCCESS = 2;

		public static final int RESULT_CODE_BIND_FAIL = 3;

		public static final int RESULT_CODE_CHECKSMS_SUCCESS = 4;

		private String errorMsg;

		private int code;

		public int getCode() {
			return code;
		}

		public void setCode(int code) {
			this.code = code;
		}

		public String getErrorMsg() {
			return errorMsg;
		}

		public void setErrorMsg(String errorMsg) {
			this.errorMsg = errorMsg;
		}

	}
}
