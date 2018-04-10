
package com.pengyouwan.sdk.protocol;

import java.util.HashMap;
import org.json.JSONObject;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;

/**
 * 描述:删除缓存
 * 
 * @author CJ
 * @since 2016-7-7 下午4:49:02
 */
public abstract class DelCacheTask extends AbstractResponseCallback {
    private DelCacheResponse responseObj;

    public void request(String username) throws AppException {
        HashMap<String, String> params = new HashMap<String, String>();
        String tid = AppUtil.getTid();
        String api2 = AppUtil.getApiSecret2(tid, InitManager.getInstance().getApisecret());
        String gameid = InitManager.getInstance().getGameId();
        String sign = MD5Util.getMd5(username + api2).toLowerCase();
        params.put("sign", sign);
        params.put("gameid", gameid);
        params.put("gamekey", SDKControler.getGameKey());
        params.put("username", username);
        params.put("tid", tid);
        // 生成响应类
        responseObj = new DelCacheResponse();
        // 执行请求
        RequestNetUtil.getInstance().request(params,
                com.pengyouwan.sdk.net.UrlManager.URL_DEL_CACHE, listener, errorListener);
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

    public class DelCacheResponse extends HttpResponse {
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
