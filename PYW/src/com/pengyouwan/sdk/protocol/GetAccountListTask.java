package com.pengyouwan.sdk.protocol;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.sdk.entity.Account;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;

/**
 * 描述:获取账号列表
 * 
 * @author Hanson
 * @since 2016-7-4 下午2:48:49
 */
public abstract class GetAccountListTask extends AbstractResponseCallback {

    private GetAccountResponse responseObj;

    public void request(String phone,String passnotoken) throws AppException {
        HashMap<String, String> params = new HashMap<String, String>();
        String sign;
        String tid = AppUtil.getTid();
        String api2 = AppUtil.getApiSecret2(tid, InitManager.getInstance().getApisecret());
        sign = MD5Util.getMd5(phone + api2).toLowerCase();
        params.put("sign", sign);
        params.put("tid", tid);
        params.put("gameid", InitManager.getInstance().getGameId());
        params.put("passport", phone);
        params.put("passport_token", passnotoken);
        // 生成响应类
        responseObj = new GetAccountResponse();
        // 执行请求
        RequestNetUtil.getInstance().request(params,
                com.pengyouwan.sdk.net.UrlManager.URL_GET_ACCOUNTS, listener, errorListener);
    }

    // 请求成功
    private Listener<String> listener = new Listener<String>() {

        public void onResponse(String response) {
            try {
                JSONObject jobj = new JSONObject(response);
                int ack = jobj.getInt("ack");
                if (ack == 200) {
                    JSONArray array = jobj.getJSONArray("data");
                    List<Account> lists = new ArrayList<Account>();
                    int length = array.length();
                    for (int i = 0; i < length; i++) {
                        JSONObject obj = (JSONObject) array.get(i);
                        Account account = new Account();
                        account.setUsername(obj.getString("account"));
                        account.setIsNew(obj.optBoolean("is_new") ? 1 : 0);
                        if(!obj.isNull("is_freeze")){
                        	account.setIsFreeze(obj.optBoolean("is_freeze") ? 1 : 0);
                        }
                        lists.add(account);
                    }
                    responseObj.setStrings(lists);
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

    public class GetAccountResponse extends HttpResponse {
        private static final long serialVersionUID = 1L;

        private List<Account> strings;

        private String errorMsg;

        public List<Account> getStrings() {
            return strings;
        }

        public void setStrings(List<Account> strings) {
            this.strings = strings;
        }

        @Override
        public String toString() {
            return "GetAccountResponse [strings=" + strings + "]";
        }

		public String getErrorMsg() {
			return errorMsg;
		}

		public void setErrorMsg(String errorMsg) {
			this.errorMsg = errorMsg;
		}


    }
}
