/**
 * 
 */
package com.pengyouwan.sdk.protocol;

import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.framework.utils.RSA;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;

/**
 * 描述:游戏账号登陆绑定手机（手机非通行证才调用）
 *
 * @author Hanson
 * @since  2016-7-13 下午3:10:44
 */
public abstract class BindPhoneTask extends AbstractResponseCallback {
	private BindPhoneResponse responseObj;

    public void request(String account_pwd, String phoneno, String account) throws AppException {
        HashMap<String, String> params = new HashMap<String, String>();
        SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
        String tid = AppUtil.getTid();
        String api2 = AppUtil.getApiSecret2(tid, InitManager.getInstance().getApisecret());
        params.put("token", user.getToken());
        params.put("passport", phoneno);
        params.put("account", account);
        String gameid = InitManager.getInstance().getGameId();
        String sign = MD5Util.getMd5(gameid + account + phoneno + api2).toLowerCase();
        params.put("sign", sign);
        params.put("gameid", gameid);
        params.put("tid", tid);
        params.put("passport_pwd", RSA.encrypt(account_pwd));// 要RSA加密
        // 生成响应类
        responseObj = new BindPhoneResponse();
        // 执行请求
        RequestNetUtil.getInstance().request(params,
                com.pengyouwan.sdk.net.UrlManager.URL_BIND_PHONE, listener, errorListener);
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

    public class BindPhoneResponse extends HttpResponse {
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
