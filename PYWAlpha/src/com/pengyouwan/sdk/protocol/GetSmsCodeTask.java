
package com.pengyouwan.sdk.protocol;

import java.util.HashMap;
import org.json.JSONObject;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.sdk.entity.Constants.CodeConstants;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.net.UrlManager;

/**
 * 描述:获取短信验证码
 * 
 * @author CJ
 * @since 2016-7-4 下午4:05:10
 */
public abstract class GetSmsCodeTask extends AbstractResponseCallback {
    private GetSmsCodeResponse responseObj;

    public void request(String phone, int smsType) throws AppException {
        HashMap<String, String> params = new HashMap<String, String>();
        String gameId = InitManager.getInstance().getGameId();
        String tid = AppUtil.getTid();
        String api2 = AppUtil.getApiSecret2(tid, InitManager.getInstance().getApisecret());
        String sign = MD5Util.getMd5(gameId + phone + api2).toLowerCase();
        params.put("tid", tid);
        params.put("gameid", gameId);
        params.put("sign", sign);
        params.put("smstype", smsType + "");
        // 生成响应类
        responseObj = new GetSmsCodeResponse();
        if (smsType == CodeConstants.CODE_FORGET_PWD_NOLOGIN
                || smsType == CodeConstants.CODE_FORGET_PWD_LOGIN) {
            params.put("username", phone);
            // 如果是忘记密码处的发送验证码 则用另一个接口
            RequestNetUtil.getInstance().request(params, UrlManager.URL_GET_CODE_BY_USERNAME,
                    listener, errorListener);
        } else {
            params.put("passport", phone);
            // 执行请求
            RequestNetUtil.getInstance().request(params, UrlManager.URL_GET_CODE, listener,
                    errorListener);
        }
        // 返回响应类
    }

    // 请求成功
    private Listener<String> listener = new Listener<String>() {

        public void onResponse(String response) {
            try {
                JSONObject jobj = new JSONObject(response);
                int ack = jobj.getInt("ack");
                if (ack == 200) {
                    JSONObject data = jobj.getJSONObject("data");
                    responseObj.setOk(true);
                    responseObj.setIsReg(data.getInt("is_reg"));
                    if (data.has("passport")) {//若有号码则是忘记密码处返回
                        responseObj.setPassport(data.getString("passport"));
                    }
                } else {
                    responseObj.setErroMsg(jobj.getString("msg"));
                }
            } catch (Exception e) {
                responseObj.setErroMsg("数据解析异常");
                e.printStackTrace();
            } finally {
                callback(responseObj);
            }
        }
    };

    // 请求失败
    private ErrorListener errorListener = new ErrorListener() {

        public void onErrorResponse(VolleyError error) {
            responseObj.setErroMsg("网络错误，获取验证码失败");
            if (error != null) {
                if (error.networkResponse != null) {
                    responseObj.setErroMsg("error:" + error.toString());
                }
            }
            callback(responseObj);
        }

    };

    public class GetSmsCodeResponse extends HttpResponse {
        private static final long serialVersionUID = 1L;

        private int isReg = 0;// 是否注册字段

        private String passport;// 忘记密码输入账号可返回号码

        private String erroMsg;

        public void setErroMsg(String str) {
            erroMsg = str;
        }

        public String getErroMsg() {
            return erroMsg;
        }

        public int getIsReg() {
            return isReg;
        }

        public void setIsReg(int isReg) {
            this.isReg = isReg;
        }

        public String getPassport() {
            return passport;
        }

        public void setPassport(String passport) {
            this.passport = passport;
        }

    }

}
