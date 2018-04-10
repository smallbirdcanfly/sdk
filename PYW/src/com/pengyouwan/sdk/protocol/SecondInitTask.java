package com.pengyouwan.sdk.protocol;

import java.util.HashMap;
import org.json.JSONObject;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.PayManager;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;

/**
 * 描述:获取订单支付方式与排序
 * 
 * @author CJ
 * @since 2017-4-7 下午4:25:02
 */
public abstract class SecondInitTask extends AbstractResponseCallback {
	private SecondInitResponse responseObj;

	public void request() throws AppException {
		HashMap<String, String> params = new HashMap<String, String>();
		String tid = AppUtil.getTid();
		String api2 = AppUtil.getApiSecret2(tid, InitManager.getInstance()
				.getApisecret());
		String gameid = InitManager.getInstance().getGameId();
		SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
		String account = user.getUserName();
		String sign = MD5Util.getMd5(account + api2).toLowerCase();
		params.put("sign", sign);
		params.put("gameid", gameid);
		params.put("gamekey", SDKControler.getGameKey());
		params.put("account", account);
		params.put("tid", tid);
		// 生成响应类
		responseObj = new SecondInitResponse();
		// 执行请求
		RequestNetUtil.getInstance().request(params,
				com.pengyouwan.sdk.net.UrlManager.URL_SECOND_INIT, listener,
				errorListener);
	}

	// 请求成功
	private Listener<String> listener = new Listener<String>() {

		public void onResponse(String response) {

			try {
				JSONObject jobj = new JSONObject(response);
				int ack = jobj.getInt("ack");
				if (ack == 200) {
					responseObj.setOk(true);
					JSONObject data = jobj.optJSONObject("data");
                    if (data != null) {
                        // 解析支付方式
                        String payment = data.optString("pay_type_order");
                        String wxUrl = data.optString("pay_url");
                        SDKControler.getSDKConfig().setPayment(payment);
                        PayManager.setWxurl(wxUrl);
                    }else {
                        // 回调失败提示msg
                    	responseObj.setErrorMsg(jobj.optString("msg"));
                    }
				} else {
					responseObj.setErrorMsg(jobj.getString("msg"));
					responseObj.setOk(false);
				}
			} catch (Exception e) {
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
			responseObj.setErrorMsg("网络错误，充值失败");
			if (error != null) {
				if (error.networkResponse != null) {
					responseObj.setErrorMsg("error:" + error.toString());
				}
			}
			callback(responseObj);
		}

	};

	public class SecondInitResponse extends HttpResponse {
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
