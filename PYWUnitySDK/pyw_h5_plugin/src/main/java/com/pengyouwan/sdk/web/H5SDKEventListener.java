package com.pengyouwan.sdk.web;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.webkit.WebView;

import com.pengyouwan.sdk.web.interfaces.IAndroidMainLoop;
import com.pyw.open.support.ISDKEventCode;
import com.pyw.open.support.ISDKEventExtraKey;
import com.pyw.open.support.OnSDKEventListener;
import com.pyw.open.support.User;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * 描述：
 *
 * @author zhj on 17/4/12.
 */

public class H5SDKEventListener implements OnSDKEventListener {

    private SparseArray<String> callBackMap = new SparseArray<String>();

    private WebView mWebView;

    private final String SUCCESS = "onSuccess";

    private final String FAILD = "onFaild";

    private final String CANCLE = "cancle";

    private final String EXCEPTION = "exception";

    private IAndroidMainLoop mainLoop;

    public H5SDKEventListener(IAndroidMainLoop mainLoop) {
        this.mainLoop = mainLoop;
    }

    public void attached(WebView webView) {
        mWebView = webView;
    }

    public void dettach() {
        mWebView = null;
    }


    @Override
    public void onEvent(int eventCode, Bundle data) {
        switch (eventCode) {
            case ISDKEventCode.CODE_LOGIN_SUCCESS:
                // 登录成功通知，bundle中会带有user信息
                String jsData = "";
                if (data != null) {
                    User user = (User) data.getSerializable(ISDKEventExtraKey.EXTRA_USER);
                    if (user != null) {
                        jsData = user2JsonStr(user);
                    }
                    if(mainLoop!=null){
                        mainLoop.showFloatView();
                    }
                }
                dispatch2Web(getCallbackId(ISDKEventCode.CODE_LOGIN_SUCCESS), SUCCESS, jsData);
                break;
            case ISDKEventCode.CODE_LOGIN_FAILD:
                String erroMsg = data.getString(ISDKEventExtraKey.EXTRA_ERRO);
                dispatch2Web(getCallbackId(ISDKEventCode.CODE_LOGIN_FAILD), FAILD, toJsonMsg(erroMsg, EXCEPTION, null, null));
                break;
            case ISDKEventCode.CODE_CHARGE_SUCCESS:
                dispatch2Web(getCallbackId(ISDKEventCode.CODE_CHARGE_SUCCESS), SUCCESS
                        , toJsonMsg("充值成功", "success", "orderid", data.getString(ISDKEventExtraKey.EXTRA_ORDERID)));
                break;
            case ISDKEventCode.CODE_CHARGE_FAIL:
                dispatch2Web(getCallbackId(ISDKEventCode.CODE_CHARGE_FAIL), FAILD
                        , toJsonMsg("充值失败", EXCEPTION, "orderid", data.getString(ISDKEventExtraKey.EXTRA_ORDERID)));
                break;
            case ISDKEventCode.CODE_CHARGE_CANCEL:
                dispatch2Web(getCallbackId(ISDKEventCode.CODE_CHARGE_CANCEL), FAILD
                        , toJsonMsg("充值取消", CANCLE, "orderid", data.getString(ISDKEventExtraKey.EXTRA_ORDERID)));
                break;
            case ISDKEventCode.CODE_LOGOUT:
                webViewLoad("javascript:window.PywSdk.logOut()");
                break;
            case ISDKEventCode.CODE_EXIT:
                if (mainLoop != null) {
                    mainLoop.finishActivity();
                }
                break;
            case ISDKEventCode.CODE_INIT_SUCCESS:
                PYWH5Plamform.setIsInit(true);
                if(PYWH5Plamform.shouldLogin){
                    mainLoop.doLogin();
                }
                break;
        }
    }
    public static final String TAG = "H5SDKEventListener";
    private void dispatch2Web(String callbackId, String status, String data) {
        webViewLoad("javascript:window.PywSdk.nativeCallback('" + callbackId + "','" + status + "','" + data + "')");
    }

    private void webViewLoad(final String url){
        if (mWebView != null) {
            mainLoop.runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    mWebView.loadUrl(url);
                }
            });
        }
    }

    /**
     * 传递user实体给web
     *
     * @param user
     * @param callbackId
     */
    public void sendUserInfo(User user, String callbackId) {
        String status;
        String data;
        if (user == null) {
            status = "onFaild";
            data = "{\"msg\":" + "\"未登录\"" + "}";
        } else {
            status = "onSuccess";
            data = user2JsonStr(user);
        }
        dispatch2Web(callbackId, status, data);
    }

    private String user2JsonStr(User user) {
        JSONObject jobj = new JSONObject();
        try {
            jobj.put("token", user.getToken());
            jobj.put("userid", user.getUserId());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jobj.toString();
    }

    private String toJsonMsg(String msg, String status, String key, String str) {
        JSONObject jobj = new JSONObject();
        try {
            if (!TextUtils.isEmpty(key)) {
                jobj.put(key, str);
            }
            jobj.put("status", status);
            jobj.put("msg", msg);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jobj.toString();
    }


    public void addCallBack(int eventCode, String callbackId) {
        if (callbackId != null) {
            callBackMap.put(eventCode, callbackId);
        }
    }

    private String getCallbackId(int eventCode) {
        if (callBackMap == null)
            return "no such id";
        return callBackMap.get(eventCode);
    }

    public void resetCallbackId() {
        if (callBackMap != null) {
            callBackMap.clear();
        }
    }
}
