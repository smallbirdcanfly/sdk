package com.pengyouwan.sdk.web;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;

import com.pengyouwan.sdk.web.interfaces.IAndroidMainLoop;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.ILogoutCallback;
import com.pyw.open.support.ISDKEventCode;
import com.pyw.open.support.PYWPlatform;

import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

/**
 * 描述：
 *
 * @author zhj on 17/4/12.
 */
public class PYWH5Plamform {

    private Activity mActivity;

    private static volatile PYWH5Plamform mPlamform;

    private H5SDKEventListener mEventDispatcher;

    private String departmentCode = "1";

    private static boolean isInit = false;

    private static boolean isInitedForNet = false;

    private String mGameKey = "";

    private IAndroidMainLoop mainLoop = new IAndroidMainLoop() {
        public static final String TAG = "IAndroidMainLoop";

        @Override
        public void runOnUiThread(Runnable runnable) {
            if (mActivity != null) {
                mActivity.runOnUiThread(runnable);
            }
        }

        @Override
        public void finishActivity() {
            if (mActivity != null) {
                mActivity.finish();
            }
        }

        public void showFloatView() {
            if (null != PYWPlatform.getCurrentUser()) { // 表示当前登录状态
//                FloatViewTool.instance(mActivity).showFloatView();
            }
        }

        @Override
        public void doLogin(){
            doActuaLogin();
        }
    };

    private PYWH5Plamform(Activity activity) {
        if (activity == null) {
            throw new IllegalArgumentException("activity should not be null");
        }
        mActivity = activity;
        mEventDispatcher = new H5SDKEventListener(mainLoop);
    }

    private void setCallback() {
        PYWSDKManager.getInstance().setLogoutCallback(new ILogoutCallback() {
            @Override
            public void onLogout() {
                sendMsg(ISDKEventCode.CODE_LOGOUT, null);
            }
        });
    }

    private void sendMsg(int code, Bundle data) {
        if (mActivity != null && mEventDispatcher != null) {
            mEventDispatcher.onEvent(code, data);
        }
    }

    /**
     * 单例
     *
     * @param activity
     * @return
     */
    public static PYWH5Plamform getInstance(Activity activity) {
        if (mPlamform == null) {
            synchronized (PYWH5Plamform.class) {
                if (mPlamform == null) {
                    mPlamform = new PYWH5Plamform(activity);
                }
            }
        }
        return mPlamform;
    }

    public void attachWebview(WebView webView) {
        mEventDispatcher.attached(webView);
    }

    public void destory() {
        mEventDispatcher.dettach();
        mPlamform = null;
        mActivity = null;
    }

    public void reset() {
        mEventDispatcher.resetCallbackId();
        mEventDispatcher.dettach();
    }

    /**
     * 初始化
     *
     * @param gameKey
     */
    @JavascriptInterface
    public void init(String gameKey) {
        mGameKey = gameKey;
        if (mActivity == null) return;

        mainLoop.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                PYWPlatform.initSDK(mActivity.getApplication(), mActivity, mEventDispatcher);
                setCallback();

            }
        });
    }


    /**
     * 打开登录
     *
     * @param callbackId
     */
    @JavascriptInterface
    public void openLogin(String callbackId) {
        //此处监听登录事件的三种情形的同志
        mEventDispatcher.addCallBack(ISDKEventCode.CODE_LOGIN_FAILD, callbackId);
        mEventDispatcher.addCallBack(ISDKEventCode.CODE_LOGIN_SUCCESS, callbackId);
        mEventDispatcher.addCallBack(ISDKEventCode.CODE_LOGOUT, callbackId);
        doActuaLogin();
//        if(!isInitedForNet) {
//            RequestQueueManager.init(mActivity.getApplicationContext());
//            SuperInitRequest req = new SuperInitRequest(DynamicUrl.BASE_URL + mGameKey + ".txt",
//                    new Response.Listener<String>() {
//                        @Override
//                        public void onResponse(String response) {
//                            if (!TextUtils.isEmpty(response)) {
//                                try {
//                                    JSONObject jobj = new JSONObject(response);
//                                    DynamicUrl.DYNAMIC_URL = jobj.getString("base_url");
//                                    DynamicUrl.OWN_DYNAMIC_H5 = jobj.getString("pay_url");
//                                    DynamicUrl.OWN_DYNAMIC_URL = jobj.getString("pyw_channel_url");
//                                } catch (Exception e) {
//                                    // TODO Auto-generated catch block
//                                    e.printStackTrace();
//                                }
//                            }
//                            // do actully init
//                            doActuaLogin();
//                        }
//                    }, new Response.ErrorListener() {
//
//                @Override
//                public void onErrorResponse(VolleyError error) {
//                    // do actully login
//                    doActuaLogin();
//                }
//            });
//            RequestQueueManager.getInstance().addToRequestQueue(req);
//        }else{
//            doActuaLogin();
//        }
//        isInitedForNet = true;
    }

    public static boolean shouldLogin = false;

    private void doActuaLogin() {
        if (isInit) {
            mainLoop.runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    PYWPlatform.openLogin(mActivity);
                }
            });
            shouldLogin = false;
        } else {
            shouldLogin = true;
        }
    }

    /**
     * 打开定额充值
     *
     * @param callbackId
     * @param productName  产品名称
     * @param productId    产品id
     * @param orderId      订单id
     * @param productExtra 自定义字符串
     * @param payMoney     支付金额
     */
    @JavascriptInterface
    public void openCharge(String callbackId, String productName, String productId, String orderId, String productExtra, String payMoney) {
        final Map<String, Object> paramsMap = new HashMap<String, Object>();
        // 产品名称，用于显示在朋友玩充值界面，请于游戏界面中的商品保持一致
        paramsMap.put("product_name", productName);
        // 实际充值金额，单位元,此处金额一定要与传入的product_id所对应的金额一致，否则会认为是错误数据而导致无法下单
        try {
            paramsMap.put("pay_money", Integer.parseInt(payMoney));
        } catch (Throwable e) {
            e.printStackTrace();
        }
        // 产品id，此项必须要填写，并且参数名必须为"product_id"，否则会出错
        paramsMap.put("product_id", productId);
        // 订单id，此项必须要填写，并且参数名必须为"order_id"，否则会出错
        paramsMap.put("order_id", orderId);
        // 厂商需要朋友玩回调时回传的参数，届时会原样返回，此项非必填
        paramsMap.put("product_extra", productExtra);
        //监听充值的3种状态事件
        mEventDispatcher.addCallBack(ISDKEventCode.CODE_CHARGE_SUCCESS, callbackId);
        mEventDispatcher.addCallBack(ISDKEventCode.CODE_CHARGE_FAIL, callbackId);
        mEventDispatcher.addCallBack(ISDKEventCode.CODE_CHARGE_CANCEL, callbackId);

        mainLoop.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                PYWPlatform.openChargeCenter(mActivity, paramsMap, false);
            }
        });
    }

    /**
     * 打开任意金额充值
     *
     * @param callbackId
     * @param productName  产品名称
     * @param orderId      订单id
     * @param productExtra 自定义字符串
     * @param payMoney     支付金额
     */
    @JavascriptInterface
    public void openChargeAnyAmount(String callbackId, String productName, String orderId, String productExtra, String payMoney) {
        final Map<String, Object> paramsMap = new HashMap<String, Object>();
        // 产品名称，用于显示在朋友玩充值界面，请于游戏界面中的商品保持一致
        paramsMap.put("product_name", productName);
        // 实际充值金额，单位元,此处金额一定要与传入的product_id所对应的金额一致，否则会认为是错误数据而导致无法下单
        try {
            paramsMap.put("pay_money", Integer.parseInt(payMoney));
        } catch (Throwable e) {
            e.printStackTrace();
        }
        // 订单id，此项必须要填写，并且参数名必须为"order_id"，否则会出错
        paramsMap.put("order_id", orderId);
        // 厂商需要朋友玩回调时回传的参数，届时会原样返回，此项非必填
        paramsMap.put("product_extra", productExtra);
        //监听充值的3种状态事件
        mEventDispatcher.addCallBack(ISDKEventCode.CODE_CHARGE_SUCCESS, callbackId);
        mEventDispatcher.addCallBack(ISDKEventCode.CODE_CHARGE_FAIL, callbackId);
        mEventDispatcher.addCallBack(ISDKEventCode.CODE_CHARGE_CANCEL, callbackId);

        mainLoop.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                PYWPlatform.openChargeCenter(mActivity, paramsMap, true);
            }
        });
    }

    /**
     * 打开用户中心
     */
    @JavascriptInterface
    public void userCenter() {
        //do nothing
//        mainLoop.runOnUiThread(new Runnable() {
//            @Override
//            public void run() {
//                PYWPlatform.openUsercenter(mActivity);
//            }
//        });
    }

    /**
     * 获取当前登录用户信息
     */
    @JavascriptInterface
    public void getCurrentUserInfo(final String callbackId) {
        mainLoop.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                mEventDispatcher.sendUserInfo(PYWPlatform.getCurrentUser(), callbackId);
            }
        });
    }

    /**
     * 显示浮窗
     */
    @JavascriptInterface
    public void showFloatTools() {
//        mainLoop.runOnUiThread(new Runnable() {
//            @Override
//            public void run() {
//                if (null != PYWPlatform.getCurrentUser()) { // 表示当前登录状态
//                    FloatViewTool.instance(mActivity).showFloatView();
//                }
//            }
//        });
    }

    /**
     * 隐藏浮窗
     */
    @JavascriptInterface
    public void hideFloatTools() {
//        mainLoop.runOnUiThread(new Runnable() {
//            @Override
//            public void run() {
//                FloatViewTool.instance(mActivity).hideFloatView();
//            }
//        });
    }

    /**
     * 退出
     *
     * @param callbackId
     */
    @JavascriptInterface
    public void exit(String callbackId) {
        //监听充值的3种状态事件
        mEventDispatcher.addCallBack(ISDKEventCode.CODE_EXIT, callbackId);

        mainLoop.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                PYWPlatform.exit(mActivity);
            }
        });
    }

    public void exitOnly() {
        mainLoop.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                PYWPlatform.exit(mActivity);
            }
        });
    }

    public void setDepartmentCode(String code) {
        departmentCode = code;
    }

    public boolean isInit() {
        return isInit;
    }

    public static void setIsInit(boolean init) {
        isInit = init;
    }
}
