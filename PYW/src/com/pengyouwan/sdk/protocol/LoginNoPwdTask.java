
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
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;

/**
 * 描述:免密码登录请求
 * 
 * @author CJ
 * @since 2016-7-4 下午2:36:43
 */
public abstract class LoginNoPwdTask extends AbstractResponseCallback{

    private LoginNoPwdResponse responseObj;

    public void request(String phone, String username, String token)
            throws AppException {
        HashMap<String, String> params = new HashMap<String, String>();
        String gameId = InitManager.getInstance().getGameId();
        String apiSecret = InitManager.getInstance().getApisecret();
        String tid = AppUtil.getTid();
        String apiSecret2 = AppUtil.getApiSecret2(tid, apiSecret);
        String signstr = phone + username + apiSecret2;
        String md5Str = MD5Util.getMd5(signstr).toLowerCase();
        params.put("sign", md5Str);
        params.put("tid", tid);
        params.put("account", username);
        params.put("passport", phone);
        params.put("passport_token", token);
        params.put("gameid", gameId);
        // 生成响应类
        responseObj = new LoginNoPwdResponse();
        // 执行请求
        RequestNetUtil.getInstance().request(params,
                com.pengyouwan.sdk.net.UrlManager.URL_LOGIN_NOPWD, listener, errorListener);
    }

    // 请求成功
    private Listener<String> listener = new Listener<String>() {

        public void onResponse(String response) {

            try {
                JSONObject jobj = new JSONObject(response);
                int ack = jobj.getInt("ack");
                if (ack == 200) {
                    JSONObject data = jobj.getJSONObject("data");
                    SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
                    user.setToken(data.getString("token"));
                    user.setUserId(data.getString("cp_uid"));
                    user.setUserName(data.getString("game_account"));
                    // 刷新当前user对象
                    UserManager.getInstance().setCurrentUser(user);
                    responseObj.setUser(user);
                    responseObj.setOk(true);
                } else {
                    responseObj.setErrorMsg(jobj.getString("msg"));
                }
            } catch (Exception e) {
                responseObj.setErrorMsg("数据解析异常");
                e.printStackTrace();
            }finally{
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

    public class LoginNoPwdResponse extends HttpResponse {
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
