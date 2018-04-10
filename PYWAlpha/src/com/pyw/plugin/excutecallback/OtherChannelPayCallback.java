package com.pyw.plugin.excutecallback;

import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pyw.common.Constants;
import com.pyw.entity.PluginPayResult;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.IPayListener;
import com.pyw.open.KeyCodes;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

/**
 * 第三方支付渠道的执行回调
 * 
 * @author Administrator
 *
 */
public class OtherChannelPayCallback implements executeCallback {

	private PYWSDKManager mManager;
	private IPayListener callback;

	protected OtherChannelPayCallback(PYWSDKManager manager, IPayListener c) {
		mManager = manager;
		callback = c;
	}

	@Override
	public void onExecutionSuccess(final Object obj) {
		// 支付成功根据PayResult参数判断是否通知服务器，是否等待服务器回执
		if (obj instanceof PluginPayResult) {
			PluginPayResult result = (PluginPayResult) obj;
			PayResult payResult = result.getPayResult();
			final int mode = result.getResultMode();
			switch (mode) {
			case PluginPayResult.MODE_RESPONSE_NOMAL:
			case PluginPayResult.MODE_RESPONSE:
				// payment();
				String channelId = mManager.getDataInfo().optString(Constants.KEY_CONFIG_JSON_CHANNELID);
				HashMap<String, String> payParams = getParams(channelId);
				RequestNetUtil.getInstance().request(payParams, Constants.URL_PAY, getNetListener(mode, payResult),
						new ErrorListener() {

							@Override
							public void onErrorResponse(VolleyError error) {
								if(callback != null){
									callback.onPayFail(KeyCodes.ERROR_PARAMS_TRANSFORM,
											"pay failed,net error, volleyError message: " + error);
								}
							}
						});
				break;
			
			case PluginPayResult.MODE_NOMAL:
			default:
				if (callback != null) {
					callback.onPaySuccess(payResult);
				}
				break;
			}
		} else if (obj instanceof PayResult) {
			if (callback != null) {
				callback.onPaySuccess((PayResult) obj);
			}
		} else {
			if(callback != null){
				callback.onPayFail(KeyCodes.ERROR_CALLBACK_PARAMS, "pay callback params error!");
			}
			
		}
	}

	private Listener<String> getNetListener(final int mode, final PayResult payResult) {
		return new Listener<String>() {
			@Override
			public void onResponse(String response) {
				if (PluginPayResult.MODE_RESPONSE_NOMAL == mode) {
					JSONObject jobj;
					try {
						jobj = new JSONObject(response);
						int ack = jobj.getInt("ack");
						String msg = jobj.getString("msg");
						if (ack == 200) {
							if (callback != null) {
								callback.onPaySuccess(payResult);
							} 
						} else {
							if(callback != null){
								callback.onPayFail(KeyCodes.ERROR_NETWORKING,"pay failed,net error,code is: " + ack + " msg: " + msg);
							}
							
						}
					} catch (JSONException e) {
						if(callback != null){
							callback.onPayFail(KeyCodes.ERROR_PARAMS_TRANSFORM,
									"pay failed,response params analytic error. e: " + e);
						}
					}
				}

			}
		};
	}

	private HashMap<String, String> getParams(String channelId) {
		HashMap<String, String> payParams = new HashMap<String, String>();
		HashMap<String, String> sPayParams = mManager.getPayParams();
		payParams.put("gameid", sPayParams.get("gameid"));
		payParams.put("gamekey", mManager.getGameKey());
		payParams.put("tid", AppUtil.getTid());
		payParams.put("channel_id", channelId);
		payParams.put("cp_uid", sPayParams.get("cp_uid"));
		payParams.put("channel_order_sn", sPayParams.get("channel_order_sn"));
		payParams.put("pfkey", sPayParams.get("pfkey"));
		payParams.put("pf", sPayParams.get("pf"));
		payParams.put("pay_token", sPayParams.get("pay_token"));
		payParams.put("channel_token", sPayParams.get("channel_token"));
		payParams.put("account", sPayParams.get("account"));
		payParams.put("channel_uid", sPayParams.get("channel_uid"));
		return payParams;
	}

	@Override
	public void onExecutionFailure(int failCode, String failMessage) {
		
		if(callback != null){
			callback.onPayFail(failCode, failMessage);
		}
	}

}
