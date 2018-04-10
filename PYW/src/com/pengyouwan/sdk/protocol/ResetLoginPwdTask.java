
package com.pengyouwan.sdk.protocol;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.framework.utils.RSA;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;

import org.json.JSONObject;

import java.util.HashMap;

/**
 * 描述:忘记密码界面--重设密码请求
 * 
 * @author CJ
 * @since 2016-7-4 下午5:15:02
 */
public abstract class ResetLoginPwdTask extends AbstractResponseCallback {

    private ResetLoginPwdResponse responseObj;

    public void requet(String phone, String token, String password, int smsType, String isCheckCode)
            throws AppException {
        HashMap<String, String> params = new HashMap<String, String>();
        String tid = AppUtil.getTid();
        String gameId = InitManager.getInstance().getGameId();
        String api2 = AppUtil.getApiSecret2(tid, InitManager.getInstance().getApisecret());
        String sign = MD5Util.getMd5(phone + smsType + password + api2).toLowerCase();
        params.put("passport", phone);
        params.put("tid", tid);
        params.put("sign", sign);
        params.put("gameid", gameId);
        params.put("smstype", smsType + "");
        params.put("is_check_smscode", isCheckCode);
        if(password.length()>20){//长度大于20代表拿到的是加密后的
            params.put("password", password);
        }else{
            params.put("password", RSA.encrypt(password));
        }
        params.put("passport_token", token);
        // 生成响应类
        responseObj = new ResetLoginPwdResponse();
        // 执行请求
        RequestNetUtil.getInstance().request(params,
                com.pengyouwan.sdk.net.UrlManager.URL_RESET_PWD, listener, errorListener);
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
        	responseObj.setErrorMsg("网络错误，登录失败");
            if (error != null) {
                if (error.networkResponse != null) {
                    responseObj.setErrorMsg("error:" + error.toString());
                }
            }
            callback(responseObj);
        }

    };

    public class ResetLoginPwdResponse extends HttpResponse {
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
