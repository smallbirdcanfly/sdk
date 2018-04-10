package com.pengyouwan.sdk.protocol;

import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.sdk.entity.UserCenter;
import com.pengyouwan.sdk.entity.Constants.UserContants;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;

/**
 * 描述:获取个人中心数据
 * 
 * @author Hanson
 * @since 2016-7-2 下午4:11:45
 */
public abstract class UserCenterTask extends AbstractResponseCallback {
	private UserCenterResponse responseObj;

	public void request(String passport, String account, String token, int type)
			throws AppException {
		HashMap<String, String> params = new HashMap<String, String>();
		String tid = AppUtil.getTid();
		String gameId = InitManager.getInstance().getGameId();
		String apiSecret = InitManager.getInstance().getApisecret();
		String apiSecret2 = AppUtil.getApiSecret2(tid, apiSecret);;
		String md5 = account + apiSecret2;
		String md5Str = MD5Util.getMd5(md5).toLowerCase();
		params.put("sign", md5Str);
		params.put("tid", tid);
		if (type == 1) {
			params.put("passport_token", token);
		} else {
			params.put("token", token);
		}
		params.put("passport", passport);
		params.put("account", account);
		params.put("gameid", gameId);

		// 生成响应类
		responseObj = new UserCenterResponse();
		// 执行请求
		RequestNetUtil.getInstance().request(params,
				com.pengyouwan.sdk.net.UrlManager.URL_USERCENTER, listener,
				errorListener);
	}

	// 请求成功
	private Listener<String> listener = new Listener<String>() {

		public void onResponse(String response) {
			try {
				JSONObject jobj = new JSONObject(response);
				int ack = jobj.getInt("ack");
				if (ack == 200) {
					JSONObject data = jobj.getJSONObject("data");
					UserCenter userCenter = new UserCenter();
					if (!data.isNull("credit")) {
						userCenter.setPywBalance((float) data
								.getDouble("credit"));
						responseObj.setBalance(userCenter.getPywBalance());
					}
					userCenter.setType(data.getInt("type"));
					userCenter.setCoupon_count(data.getInt("coupon_count"));
					userCenter.setPhoneNo(data.getString("passport"));
					userCenter.setAccount(data.getString("account"));
					UserManager.getInstance().getCurrentUserForSDK()
							.setPhoneNo(data.getString("passport"));
					if (!data.isNull("nickname")) {
						userCenter.setNickname(data.getString("nickname"));
					}
					if (data.getInt("have_pay_pwd") == UserContants.USER_HAVE_PAY_PSW) {// 含有交易密码
						UserManager.getInstance().getCurrentUserForSDK().setHavePayPsw(true);
						userCenter.setHave_pay_pwd(true);
					} else {
						UserManager.getInstance().getCurrentUserForSDK().setHavePayPsw(false);
						userCenter.setHave_pay_pwd(false);
					}
					userCenter.setSetPwdUrl(data
							.getString("wap_set_paypwd_url"));
					userCenter.setModifyPwdUrl(data
							.getString("wap_modify_paypwd_url"));
					userCenter.setForgetPwdUrl(data
							.getString("wap_forget_paypwd_url"));
					userCenter.setCreditUrl(data.getString("wap_credit_url"));
					JSONObject idObj = data.optJSONObject("id_info");
					userCenter.setVerify(idObj.optBoolean("is_verify"));
					userCenter.setIdCardName(idObj.optString("real_name"));
					userCenter.setIdCardNo(idObj.optString("card_sn"));
					
					responseObj.setUserCenter(userCenter);
					responseObj.setOk(true);
				} else if (ack == 1015) {
					responseObj.setTokenError(true);
					responseObj.setOk(false);
				}else {
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

	public class UserCenterResponse extends HttpResponse {
		private static final long serialVersionUID = 1L;

		private UserCenter userCenter;

		private String errorMsg;

		private float balance;
		
		private boolean isTokenError = false;


		public float getBalance() {
			return balance;
		}

		public void setBalance(float balance) {
			this.balance = balance;
		}

		public UserCenter getUserCenter() {
			return userCenter;
		}

		public void setUserCenter(UserCenter userCenter) {
			this.userCenter = userCenter;
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

	}
}
