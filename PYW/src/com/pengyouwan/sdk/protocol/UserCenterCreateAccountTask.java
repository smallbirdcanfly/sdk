
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
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;

/**
 * 描述:个人中心新建账号
 * 
 * @author Hanson
 * @since 2016-7-6 下午5:52:31
 */
public abstract class UserCenterCreateAccountTask extends AbstractResponseCallback {

    private UserCenterCreateResponse responseObj;

    public void request(String phone,String token) throws AppException {
        HashMap<String, String> params = new HashMap<String, String>();
        String gameId = InitManager.getInstance().getGameId();
        String tidString = AppUtil.getTid();
        params.put("gameid", gameId);
        String apiSecret = InitManager.getInstance().getApisecret();
        String apiSecret2 = AppUtil.getApiSecret2(tidString, apiSecret);
        String signstr = gameId + phone + apiSecret2;
        String md5Str = MD5Util.getMd5(signstr).toLowerCase();
        params.put("sign", md5Str);
        params.put("passport", phone);
        params.put("passport_token", token);
        params.put("tid", tidString);
        // 生成响应类
        responseObj = new UserCenterCreateResponse();
        // 执行请求
        RequestNetUtil.getInstance().request(params,
                com.pengyouwan.sdk.net.UrlManager.URL_CREATE_ACCOUNT, listener, errorListener);
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
            responseObj.setErrorMsg("网络错误，新建账号失败");
            if (error != null) {
                if (error.networkResponse != null) {
                    responseObj.setErrorMsg("error:" + error.toString());
                }
            }
            callback(responseObj);
        }

    };

    public class UserCenterCreateResponse extends HttpResponse {
        private static final long serialVersionUID = 1L;

        private SDKUser user;

        private String errorMsg;

        public void setErrorMsg(String str) {
            errorMsg = str;
        }

        public String getErrorMsg() {
            return errorMsg;
        }

        public SDKUser getUser() {
            return user;
        }

        public void setUser(SDKUser user) {
            this.user = user;
        }

    }

}
