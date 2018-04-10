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

/**
 * 描述:个人中心删除账号
 *
 * @author Hanson
 * @since  2016-7-7 下午5:09:44
 */
public abstract class DeleteAccountTask extends AbstractResponseCallback {
    private deleteAccountResponse responseObj;

    /**
     * @param phoneno 通行证账号
     * @param account 游戏账号
     * @return
     * @throws AppException
     */
    public void request(String account) throws AppException {
        HashMap<String, String> params = new HashMap<String, String>();
        SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
        String tid = AppUtil.getTid();
        String api2 = AppUtil.getApiSecret2(tid, InitManager.getInstance().getApisecret());
        params.put("passport_token", user.getPhoneNoToken());
        params.put("passport", user.getPhoneNo());
        params.put("account", account);
        String gameid = InitManager.getInstance().getGameId();
        String sign = MD5Util.getMd5(user.getPhoneNo() + account + api2).toLowerCase();
        params.put("sign", sign);
        params.put("gameid", gameid);
        params.put("tid", tid);
        // 生成响应类
        responseObj = new deleteAccountResponse();
        // 执行请求
        RequestNetUtil.getInstance().request(params,
                com.pengyouwan.sdk.net.UrlManager.URL_DELETE_ACCOUNT, listener, errorListener);
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

    public class deleteAccountResponse extends HttpResponse {
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
