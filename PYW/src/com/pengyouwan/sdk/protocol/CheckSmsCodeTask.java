
package com.pengyouwan.sdk.protocol;

import java.util.HashMap;
import org.json.JSONObject;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;

/**
 * 描述:验证短信验证码
 * 
 * @author CJ
 * @since 2016-7-4 下午4:05:10
 */
public abstract class CheckSmsCodeTask extends AbstractResponseCallback {
    private CheckSmsCodeResponse responseObj;

    public void request(String phone, String smsCode, int smsType) throws AppException {
        HashMap<String, String> params = new HashMap<String, String>();
        String tid = AppUtil.getTid();
        String gameId = InitManager.getInstance().getGameId();
        String api2 = AppUtil.getApiSecret2(tid, InitManager.getInstance().getApisecret());
        String sign = MD5Util.getMd5(gameId + phone + api2).toLowerCase();
        params.put("passport", phone);
        params.put("tid", tid);
        params.put("sign", sign);
        params.put("gameid", gameId);
        params.put("smscode", smsCode);
        params.put("smstype", smsType + "");
        // 生成响应类
        responseObj = new CheckSmsCodeResponse();
        // 执行请求
        RequestNetUtil.getInstance().request(params,
                com.pengyouwan.sdk.net.UrlManager.URL_CHECK_CODE, listener, errorListener);
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
                    if (data.has("account_num")) {
                        responseObj.setAccountNum(data.getInt("account_num"));
                    }
                    if (data.has("is_check_smscode")) {
                        responseObj.setIsCheckCode(data.getString("is_check_smscode"));
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
            responseObj.setErroMsg("网络错误，验证验证码失败");
            if (error != null) {
                if (error.networkResponse != null) {
                    responseObj.setErroMsg("error:" + error.toString());
                }
            }
            callback(responseObj);
        }

    };

    public class CheckSmsCodeResponse extends HttpResponse {
        private static final long serialVersionUID = 1L;

        private int accountNum = 0;// 账号

        private String isCheckCode;// 是否验证通过 (返回一堆字串)

        private String erroMsg;

        public void setErroMsg(String str) {
            erroMsg = str;
        }

        public String getErroMsg() {
            return erroMsg;
        }

        public int getAccountNum() {
            return accountNum;
        }

        public void setAccountNum(int accountNum) {
            this.accountNum = accountNum;
        }

        public String getIsCheckCode() {
            return isCheckCode;
        }

        public void setIsCheckCode(String isCheckCode) {
            this.isCheckCode = isCheckCode;
        }

    }

}
