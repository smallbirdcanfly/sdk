
package com.pengyouwan.sdk.net;

import com.pengyouwan.framework.volley.AuthFailureError;
import com.pengyouwan.framework.volley.NetworkResponse;
import com.pengyouwan.framework.volley.Response;
import com.pengyouwan.framework.volley.toolbox.HttpHeaderParser;
import com.pengyouwan.framework.volley.toolbox.StringRequest;

import java.util.HashMap;
import java.util.Map;


/**
 *動態初始化地址的請求類
 *@author zhj
 * @version 创建时间：2016-6-30 下午3:15:19
 */
public class GetGameUrlRequest extends StringRequest {
    private HashMap<String, String> mParams;

    public GetGameUrlRequest(String url, Response.Listener<String> listener,
                             Response.ErrorListener errorListener) {
        super(url, listener, errorListener);
        // super.setRetryPolicy(new DefaultRetryPolicy(10000, 1, DefaultRetryPolicy.DEFAULT_BACKOFF_MULT));
    }

    @Override
    protected Map<String, String> getParams() throws AuthFailureError {
        if (mParams == null) {
            mParams = new HashMap<String, String>();
        }
        // mParams.put("cid",
        // ChannelHelper.getChannelId(PYWApplication.getContext()));
        // mParams.put("access_token", UserManager.getInstance().getToken());
        // mParams.put("vercode",
        // AppUtil.getVersionCode(PYWApplication.getContext()) + "");
        // mParams.put("deviceid", PYWApplication.getDeviceId());
        return mParams;
    }

    @Override
    protected Response<String> parseNetworkResponse(NetworkResponse response) {
        String parsed = new String(response.data);
        return Response.success(parsed, HttpHeaderParser.parseCacheHeaders(response));
    }
}
