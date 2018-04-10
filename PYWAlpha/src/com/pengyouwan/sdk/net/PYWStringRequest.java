
package com.pengyouwan.sdk.net;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.framework.utils.SdkUtil;
import com.pengyouwan.framework.volley.AuthFailureError;
import com.pengyouwan.framework.volley.NetworkResponse;
import com.pengyouwan.framework.volley.Response;
import com.pengyouwan.framework.volley.RetryPolicy;
import com.pengyouwan.framework.volley.toolbox.HttpHeaderParser;
import com.pengyouwan.framework.volley.toolbox.StringRequest;


/**
 * 类描述:返回String的请求
 * @author Hanson
 * @version 创建时间：2016-6-30 下午3:15:19
 */
public class PYWStringRequest extends StringRequest {
    private HashMap<String, String> mParams;

    public PYWStringRequest(int method, String url, HashMap<String, String> params,
            Response.Listener<String> listener, Response.ErrorListener errorListener) {
        super(method, url, listener, errorListener);
        RetryPolicy policy = super.getRetryPolicy();
        //super.setRetryPolicy(new DefaultRetryPolicy(10000, 1, DefaultRetryPolicy.DEFAULT_BACKOFF_MULT));
        mParams = params;
    }

    public PYWStringRequest(String url, Response.Listener<String> listener,
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
        String parsed;
        try {
            // parsed = new String(response.data,
            // HttpHeaderParser.parseCharset(response.headers));
            parsed = new String(SdkUtil.decode(response.data));
            //输出响应数据
            LogUtil.d("response", parsed);
        } catch (UnsupportedEncodingException e) {
            parsed = new String(response.data);
        } catch (Exception e) {
            parsed = "解密出错";
        }
        return Response.success(parsed, HttpHeaderParser.parseCacheHeaders(response));
    }
}
