package com.pengyouwan.sdk.net;

import java.util.HashMap;

import android.text.TextUtils;

import com.pengyouwan.framework.volley.Request;
import com.pengyouwan.framework.volley.Response;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.NetWorkUtil;

/**
 * 描述:请求网络工具类
 * 
 * @author CJ
 * @since 2016-6-30 下午5:22:20
 */
public class RequestNetUtil {

	private static class RequestNetUtilHolder {
		private static RequestNetUtil INSTANCE = new RequestNetUtil();
	}

	public static final RequestNetUtil getInstance() {
		return RequestNetUtilHolder.INSTANCE;
	}

	/**
	 * 请求入口
	 * 
	 * @param params
	 * @param listener
	 * @param errorListener
	 */
	public void request(HashMap<String, String> params, String url,
			Response.Listener<String> listener,
			Response.ErrorListener errorListener) {
		params.putAll(getBaseRequestParams());
		PYWStringRequest req = new PYWStringRequest(Request.Method.POST, url,
				params, listener, errorListener);
		RequestQueueManager.getInstance().addToRequestQueue(req);
	}

	/**
	 * 公有参数
	 * 
	 * @return
	 */
	private HashMap<String, String> getBaseRequestParams() {
        HashMap<String, String> params = new HashMap<String, String>();
        params.put("ver", SDKControler.getSDKVersionName());
        params.put("os", "ANDROID");
        //增加 通用字段 获取 系统版本 20180119
        params.put("ios_ver", AppUtil.getSysVersionName());
        //增加 通用字段 获取 手机号  20180122
        params.put("device_phone_num", AppUtil.getPhoneNum(SDKControler.getContext()));
        params.put("imie", AppUtil.getImei(SDKControler.getContext()));
        params.put("imei", AppUtil.getImei(SDKControler.getContext()));//兼容聚合SDK公有参数
        params.put("model", android.os.Build.MODEL);
        params.put("networktype", NetWorkUtil.getNetworkType(SDKControler.getContext()));
        // params.put("tid", AppUtil.getTid());
        params.put("sdk_type", SDKControler.getSDKType());
        String channel = SDKControler.getSDKConfig().getChannel();
        String promo = SDKControler.getSDKConfig().getPromo();
        String dcode = SDKControler.getSDKConfig().getDepartmentCode();
        String channel_code = SDKControler.getSDKConfig().getChannel_code();
        params.put("promo_channel", TextUtils.isEmpty(channel) ? "pyw" : channel);
        params.put("promo_code", TextUtils.isEmpty(promo) ? "" : promo);
        params.put("channel_code",channel_code);
        params.put("department_code", dcode);
        params.put("game_version_code", AppUtil.getVersionCode(SDKControler.getContext()) + "");
        params.put("game_version_name", AppUtil.getVersionName(SDKControler.getContext()));

        return params;
    }
}
