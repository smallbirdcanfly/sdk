
package com.pengyouwan.sdk.protocol;

import java.util.HashMap;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.framework.utils.RSA;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.entity.Constants.UserContants;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;

public abstract class FastRegisterTask extends AbstractResponseCallback {

    private FastRegisterResponse regResponse;

    private int flag;// 1 注册 2 登录

    private String username, password;

    public void request(String username, String password, int flag) throws AppException {
        HashMap<String, String> params = new HashMap<String, String>();
        String tid = AppUtil.getTid();
        String gameId = InitManager.getInstance().getGameId();
        String apiSecret = InitManager.getInstance().getApisecret();
        String apiSecret2 = AppUtil.getApiSecret2(tid, apiSecret);
        String signstr = gameId + apiSecret2;
        String md5Str = MD5Util.getMd5(signstr).toLowerCase();
        params.put("sign", md5Str);
        params.put("gameid", gameId);
        params.put("flag", flag + "");
        params.put("tid", tid);
        if (flag == 2) {// 登录的时候传用户信息
            params.put("account", username);
            if (password.length() < 20) {// 长度小于20代表拿到的是非加密的
                password = RSA.encrypt(password);
            }
            params.put("password", password);
        }
        this.flag = flag;
        this.username = username;
        this.password = password;
        regResponse = new FastRegisterResponse();
        RequestNetUtil.getInstance().request(params,
                com.pengyouwan.sdk.net.UrlManager.URL_ACCOUNT_FAST_REGISTER, listener,
                errorListener);
    }

    private Listener<String> listener = new Listener<String>() {

        @Override
        public void onResponse(String response) {
            try {
                JSONObject jobj = new JSONObject(response);
                int ack = jobj.getInt("ack");
                if (ack == 200) {
                    JSONObject data = jobj.getJSONObject("data");
                    SDKUser user = new SDKUser();
                    if (flag == 1) {// 注册
                        user.setPwd(data.getString("password"));
                        user.setUserName(data.getString("account"));
                    } else {// 登录
                        user.setPwd(password);
                        user.setUserName(username);
                        user.setToken(data.getString("token"));
                        user.setUserId(data.getString("cp_uid"));
                        user.setVerify(data.optBoolean("id_verify_show"));//身份证是否验证标记
                        user.setAccountType(UserContants.USER_TYPE_ACCOUNT);
                    }
                    regResponse.setOk(true);
                    regResponse.setUser(user);
                } else {
                    regResponse.setErrorMsg(jobj.getString("msg"));
                }
            } catch (JSONException e) {
                regResponse.setErrorMsg("数据解析异常");
                e.printStackTrace();
            } finally {
                callback(regResponse);
            }

        }

    };

    // 请求失败
    private ErrorListener errorListener = new ErrorListener() {

        @Override
        public void onErrorResponse(VolleyError error) {
            if (flag == 1) {
                regResponse.setErrorMsg("网络错误，注册失败");
            } else {
                regResponse.setErrorMsg("网络错误，登录失败");
            }
            if (error != null) {
                if (error.networkResponse != null) {
                    regResponse.setErrorMsg("error:" + error.toString());
                }
            }
            callback(regResponse);
        }

    };

    public class FastRegisterResponse extends HttpResponse {
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
