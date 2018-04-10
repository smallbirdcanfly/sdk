
package com.pengyouwan.sdk.protocol;

import java.util.ArrayList;
import java.util.HashMap;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.entity.Voucher;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;

/**
 * 描述:获取代金券列表数据
 * 
 * @author Hanson
 * @since 2016-7-4 下午4:27:18
 */
public abstract class VoucherListTask extends AbstractResponseCallback {
    private VoucherListResponse responseObj;

    public void request(String status, int page) throws AppException {
        HashMap<String, String> params = new HashMap<String, String>();
        SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
        String tid = AppUtil.getTid();
        String api2 = AppUtil.getApiSecret2(tid, InitManager.getInstance().getApisecret());
        int accountType = user.getAccountType();
        String account = user.getUserName();
        String passport = "";
        if (accountType == 2) {// 1 为通行证,2 为游戏账号
            params.put("token", user.getToken());
        } else {
            passport = user.getPhoneNo();
            params.put("passport_token", user.getPhoneNoToken());
        }
        String sign = MD5Util.getMd5(status + account + api2).toLowerCase();
        params.put("sign", sign);
        params.put("account_type", String.valueOf(accountType));
        params.put("gameid", InitManager.getInstance().getGameId());
        params.put("passport", passport);
        params.put("account", account);
        params.put("tid", tid);
        params.put("page", page + "");
        params.put("status", status);
        // 生成响应类
        responseObj = new VoucherListResponse();
        // 执行请求
        RequestNetUtil.getInstance().request(params,
                com.pengyouwan.sdk.net.UrlManager.URL_GET_VOUCHERS, listener, errorListener);
    }

    // 请求成功
    private Listener<String> listener = new Listener<String>() {

        public void onResponse(String response) {
            try {
                JSONObject jobj = new JSONObject(response);
                int ack = jobj.getInt("ack");
                if (ack == 200) {
                    JSONObject data = jobj.getJSONObject("data");
                    responseObj.setTotalPage(data.getInt("total_pages"));
                    responseObj.setCurrtenPage(data.getInt("page"));
                    if(!data.isNull("num_not_use")){
                    	responseObj.setNum_not_use(data.getInt("num_not_use"));
                    }
                    if(!data.isNull("num_have_used")){
                    	responseObj.setNum_have_used(data.getInt("num_have_used"));
                    }
                    if(!data.isNull("num_expire")){
                    	responseObj.setNum_expire(data.getInt("num_expire"));
                    }
                    
                    JSONArray array = data.getJSONArray("list");
                    ArrayList<Voucher> lists = new ArrayList<Voucher>();
                    int length = array.length();
                    for (int i = 0; i < length; i++) {
                        JSONObject obj = (JSONObject) array.get(i);
                        Voucher v = new Voucher();
                        if (obj.has("status")) {
                            v.setStatus(obj.getInt("status"));
                        } else {
                            v.setStatus(3);// 3表示已使用
                        }
                        if (!obj.isNull("coupon_tips")) {
                            v.setCoupon_tips(obj.getString("coupon_tips"));
                        }
                        v.setBuyMoney(obj.getString("org_amount"));
                        v.setGameName(obj.getString("gamename"));
                        v.setLeftMoney((int)Float.parseFloat(obj.getString("amount")));
                        v.setVoucherId(obj.getString("code"));
                        v.setVoucherName(v.getGameName() + "代金券");
                        lists.add(v);
                    }
                    responseObj.setVouchers(lists);
                    responseObj.setOk(true);
                } else if (ack == 1015) {
                    responseObj.setTokenError(true);
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

    public class VoucherListResponse extends HttpResponse {
        private static final long serialVersionUID = 1L;

        private ArrayList<Voucher> v;
        
        private int totalPage;
        
        private int currtenPage;

        private boolean isTokenError = false;

        private String errorMsg;
        
        private int num_not_use;
        
        private int num_have_used;
        
        private int num_expire;

        public void setVouchers(ArrayList<Voucher> vou) {
            v = vou;
        }

        public ArrayList<Voucher> getVouchers() {
            return v;
        }

        public String getErrorMsg() {
            return errorMsg;
        }

        public void setErrorMsg(String errorMsg) {
            this.errorMsg = errorMsg;
        }

        public boolean isTokenError() {
            return isTokenError;
        }

        public void setTokenError(boolean isTokenError) {
            this.isTokenError = isTokenError;
        }

        public int getTotalPage() {
            return totalPage;
        }

        public void setTotalPage(int totalPage) {
            this.totalPage = totalPage;
        }

        public int getCurrtenPage() {
            return currtenPage;
        }

        public void setCurrtenPage(int currtenPage) {
            this.currtenPage = currtenPage;
        }

		public int getNum_not_use() {
			return num_not_use;
		}

		public void setNum_not_use(int num_not_use) {
			this.num_not_use = num_not_use;
		}

		public int getNum_have_used() {
			return num_have_used;
		}

		public void setNum_have_used(int num_have_used) {
			this.num_have_used = num_have_used;
		}

		public int getNum_expire() {
			return num_expire;
		}

		public void setNum_expire(int num_expire) {
			this.num_expire = num_expire;
		}


    }
}
