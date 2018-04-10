package com.pengyouwan.sdk.protocol;

import java.net.URLEncoder;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.util.Log;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;

/**
 * 描述:生成订单接口类
 * 
 * @author Hanson
 * @since 2016-7-4 下午11:40:36
 */
public abstract class CreateOrderTask extends AbstractResponseCallback {
	private CreateOrderResponse responseObj;

	private String pay_type;// 支付方式

	private String total;// 价格

	private JSONObject wxJobj;// 微信支付参数

	public void request(String vouvhers, String total, String paytype,
			String cpParams, String cpProductId, String productName,
			int credit, int chargetype, String roleName, String service)
			throws AppException {
		HashMap<String, String> params = new HashMap<String, String>();
		String tid = AppUtil.getTid();
		SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
		String account = user.getUserName();
		String api2 = AppUtil.getApiSecret2(tid, InitManager.getInstance()
				.getApisecret());
		String gameId = InitManager.getInstance().getGameId();
		String sign = MD5Util.getMd5(
				account + chargetype + vouvhers + cpProductId + api2)
				.toLowerCase();
		pay_type = paytype;
		this.total = total;
		params.put("sign", sign);
		params.put("cp_price", total);
		params.put("charge_type", chargetype + "");
		params.put("account", account);
		params.put("tid", tid);
		params.put("couponids", vouvhers);
		params.put("cp_params", URLEncoder.encode(cpParams));
		params.put("cp_prodid", cpProductId);
		params.put("pay_amt", "");
		params.put("pay_type", paytype);
		params.put("gameid", gameId);
		params.put("rolename", URLEncoder.encode(roleName));
		params.put("service", URLEncoder.encode(service));
		params.put("order_desc", URLEncoder.encode(productName));
		if (user.getAccountType() == 1) {
			params.put("passport", user.getPhoneNo());
			params.put("credit", credit + "");
			params.put("passport_token", user.getPhoneNoToken());
		} else {
			params.put("passport", "");
			params.put("credit", "");
			params.put("token", user.getToken());
		}

		// H5支付必要参数
		try {
			wxJobj = new JSONObject();
			wxJobj.put("body", params.toString());
			wxJobj.put("userid", user.getUserId());
			wxJobj.put("token", user.getToken());
			wxJobj.put("total_fee", total);
			wxJobj.put("device_info",
					AppUtil.getImei(SDKControler.getContext()));
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 生成响应类
		responseObj = new CreateOrderResponse();
		// 执行请求
		RequestNetUtil.getInstance().request(params,
				com.pengyouwan.sdk.net.UrlManager.URL_CREATE_ORDER, listener,
				errorListener);
	}

	// 请求成功
	private Listener<String> listener = new Listener<String>() {

		public void onResponse(String response) {
			try {
				JSONObject jobj = new JSONObject(response);
				int ack = jobj.getInt("ack");
				if (ack == 200) {
					boolean b = jobj.getBoolean("msg");
					if (b) {
						responseObj.setMsg("");
						String order = "";
						if(pay_type.equals("3")){
							String orderInfo = jobj.getString("data");
							int startIndex = orderInfo.indexOf("out_trade_no=\"") + 14;
							int endIndex = orderInfo.indexOf("\"&", startIndex);
							order = orderInfo.substring(startIndex, endIndex);
						}else{
							JSONObject obj = jobj.getJSONObject("data");
							if(pay_type.equals("2")){
								 order = obj.getString("order_sn");
							}else if(pay_type.equals("7")){
								order = obj.getString("orderNum");
							}
						}
						wxJobj.put("out_trade_no", order);
						responseObj.setWxJobj(wxJobj);
						responseObj.setInfo(order);
					} else {
						responseObj.setMsg("支付成功");
					}
					responseObj.setOk(true);
				} else if (ack == 1015) {
					responseObj.setTokenError(true);
					responseObj.setOk(false);
				} else {
					responseObj.setMsg(jobj.getString("msg"));
					responseObj.setOk(false);
				}
			} catch (JSONException e) {
				responseObj.setMsg("数据解析异常");
				e.printStackTrace();
			} finally {
				callback(responseObj);
			}

		}
	};

	// 请求失败
	private ErrorListener errorListener = new ErrorListener() {

		public void onErrorResponse(VolleyError error) {
			responseObj.setMsg("网络错误，登录失败");
			if (error != null) {
				if (error.networkResponse != null) {
					responseObj.setMsg("error:" + error.toString());
				}
			}
			callback(responseObj);
		}

	};

	public class CreateOrderResponse extends HttpResponse {
		private static final long serialVersionUID = 1L;

		private boolean isTokenError = false;

		private String msg;

		private String info;

		private String tn;// 银联支付方式时调用

		// private WeiXinPayBean wxBean;// 微信支付实体

		private JSONObject wxJobj;// 微信支付实体

		public void setTn(String tn) {
			this.tn = tn;
		}

		public String getTn() {
			return this.tn;
		}

		public String getInfo() {
			return info;
		}

		public void setInfo(String info) {
			this.info = info;
		}

		public String getMsg() {
			return msg;
		}

		public void setMsg(String msg) {
			this.msg = msg;
		}

		public boolean isTokenError() {
			return isTokenError;
		}

		public void setTokenError(boolean isTokenError) {
			this.isTokenError = isTokenError;
		}

		// public WeiXinPayBean getWxBean() {
		// return wxBean;
		// }
		//
		// public void setWxBean(WeiXinPayBean wxBean) {
		// this.wxBean = wxBean;
		// }

		public JSONObject getWxJobj() {
			return wxJobj;
		}

		public void setWxJobj(JSONObject wxJobj) {
			this.wxJobj = wxJobj;
		}
	}
}
