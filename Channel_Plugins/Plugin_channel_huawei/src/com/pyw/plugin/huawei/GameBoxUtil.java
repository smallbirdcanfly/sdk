package com.pyw.plugin.huawei;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;

import com.huawei.gameservice.sdk.GameServiceSDK;
import com.huawei.gameservice.sdk.control.GameEventHandler;
import com.pyw.manager.PYWSDKManager;
import com.pyw.plugin.huawei.ReqTask.Delegate;

import android.app.Activity;
import android.content.res.Configuration;

public class GameBoxUtil {
	public static final String TAG = GameBoxUtil.class.getSimpleName();

	public static void pay(final Activity activity, final String price, final String productName,
			final String productDesc, final String requestId, final GameEventHandler handler,String code,String cpoid) {

		Map<String, String> params = new HashMap<String, String>();
		// 必填字段，不能为null或者""，请填写从联盟获取的支付ID
		// the pay ID is required and can not be null or ""
		params.put(GlobalParam.PayParams.USER_ID, GlobalParam.PAY_ID);
		// 必填字段，不能为null或者""，请填写从联盟获取的应用ID
		// the APP ID is required and can not be null or ""
		params.put(GlobalParam.PayParams.APPLICATION_ID, GlobalParam.APP_ID);
		// 必填字段，不能为null或者""，单位是元，精确到小数点后两位，如1.00
		// the amount (accurate to two decimal places) is required
		params.put(GlobalParam.PayParams.AMOUNT, price);
		// 必填字段，不能为null或者""，道具名称
		// the product name is required and can not be null or ""
		params.put(GlobalParam.PayParams.PRODUCT_NAME, productName);
		// 必填字段，不能为null或者""，道具描述
		// the product description is required and can not be null or ""
		params.put(GlobalParam.PayParams.PRODUCT_DESC, productDesc);
		// 必填字段，不能为null或者""，最长30字节，不能重复，否则订单会失败
		// the request ID is required and can not be null or "". Also it must be
		// unique.
		params.put(GlobalParam.PayParams.REQUEST_ID, requestId);

		String noSign = getSignData(params);

		// CP必须把参数传递到服务端，在服务端进行签名，然后把sign传递下来使用；服务端签名的代码和客户端一致
		// the CP need to send the params to the server and sign the params on
		// the server ,
		// then the server passes down the sign to client;
		String sign = RSAUtil.sign(noSign, GlobalParam.PAY_RSA_PRIVATE);

		Map<String, Object> payInfo = new HashMap<String, Object>();
		// 必填字段，不能为null或者""
		// the amount is required and can not be null or ""
		payInfo.put(GlobalParam.PayParams.AMOUNT, price);
		// 必填字段，不能为null或者""
		// the product name is required and can not be null or ""
		payInfo.put(GlobalParam.PayParams.PRODUCT_NAME, productName);
		// 必填字段，不能为null或者""
		// the request ID is required and can not be null or ""
		payInfo.put(GlobalParam.PayParams.REQUEST_ID, requestId);
		// 必填字段，不能为null或者""
		// the product description is required and can not be null or ""
		payInfo.put(GlobalParam.PayParams.PRODUCT_DESC, productDesc);
		// 必填字段，不能为null或者""，请填写自己的公司名称
		// the user name is required and can not be null or "". Input the
		// company name of CP.
		payInfo.put(GlobalParam.PayParams.USER_NAME, "pyw");
		// 必填字段，不能为null或者""
		// the APP ID is required and can not be null or "".
		payInfo.put(GlobalParam.PayParams.APPLICATION_ID, GlobalParam.APP_ID);
		// 必填字段，不能为null或者""
		// the user ID is required and can not be null or "".
		payInfo.put(GlobalParam.PayParams.USER_ID, GlobalParam.PAY_ID);
		// 必填字段，不能为null或者""
		// the sign is required and can not be null or "".
		payInfo.put(GlobalParam.PayParams.SIGN, sign);
		// 选填字段，建议使用RSA256
		// recommended to use RSA256.
		payInfo.put(GlobalParam.PayParams.SIGN_TYPE, GlobalParam.SIGN_TYPE);
		
		payInfo.put(GlobalParam.PayParams.EXT_RESERVED, getString(code));
		
		payInfo.put(GlobalParam.PayParams.SDK_CHANNEL, cpoid);

		if (activity.getResources().getConfiguration().orientation == Configuration.ORIENTATION_LANDSCAPE) {
			payInfo.put(GlobalParam.PayParams.SCREENT_ORIENT, GlobalParam.PAY_ORI_LAND);
		} else {
			payInfo.put(GlobalParam.PayParams.SCREENT_ORIENT, GlobalParam.PAY_ORI);
		}

		GameServiceSDK.startPay(activity, payInfo, handler);

	}
	
	private static String getString(String code){
		JSONObject obj = new JSONObject();
		try {
			obj.put("gamekey", PYWSDKManager.sGameKey);
			obj.put("game_version_code", code);
			obj.put("channel_uid", GlobalParam.PLAYID);
			return obj.toString();
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}


	public static String getSignData(Map<String, String> params) {
		StringBuffer content = new StringBuffer();

		List keys = new ArrayList(params.keySet());
		Collections.sort(keys);
		for (int i = 0; i < keys.size(); i++) {
			String key = (String) keys.get(i);
			if (!"sign".equals(key)) {
				String value = (String) params.get(key);
				if (value != null) {
					content.append((i == 0 ? "" : "&") + key + "=" + value);
				}
			}
		}
		return content.toString();
	}
}
