package com.pyw.manager;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.pengyouwan.framework.utils.CrashHandler;
import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.sdk.BuildConfig;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.net.UrlManager;
import com.pengyouwan.sdk.open.PYWPlatform;
import com.pengyouwan.sdk.open.SDKConfig;
import com.pengyouwan.sdk.ui.dialog.CustomProgressDialog;
import com.pengyouwan.sdk.ui.dialog.DownloadProgressDialog;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ToastUtil;
import com.pyw.common.Constants;
import com.pyw.common.Utils;
import com.pyw.entity.UserParams;
import com.pyw.open.IApplicationListener;
import com.pyw.open.IDefListener;
import com.pyw.open.IGameExitListener;
import com.pyw.open.IGetRoleListener;
import com.pyw.open.ILogoutCallback;
import com.pyw.open.ILogoutListener;
import com.pyw.open.IPayListener;
import com.pyw.open.IUserListener;
import com.pyw.open.KeyCodes;
import com.pyw.open.PYWUser;
import com.pyw.open.PayParams;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginManager;
import com.pyw.plugin.excutecallback.CallbackCreator;

/**
 * SDK接口管理类
 *
 * @author tanxj
 */
public class PYWSDKManager {
    public static final String TAG = "PYWSDKManager";

    private static final String DEFAULT_PKG_NAME = "com.pyw";
    private static final String APP_PROXY_NAME = "PYW_APPLICATION_PROXY_NAME";
    private static final String APP_GAME_NAME = "PYW_Game_Application";

    private static Context sContext;
    private static Application sApplication;
    private static JSONObject sSdkData;
    private static JSONObject sDataInfo;
    private static JSONArray sDataChannels;
    private static Bundle metaData;
    private static PYWPlugin sPYWChannelPlugin;
    private static PYWPlugin sChannelPlugin;
    private static PYWPlugin sLoginChannel;// 当前實際登录的渠道
    private static String mLoginChannelId;// 實際登錄的渠道號
    public static String sGameKey;// 朋友玩gamekey
    private static String sGameId;// 朋友玩gameId,初始化完成才有值
    private CustomProgressDialog progressDialog;
    private static HashMap<String, String> sPayParams;
    private static List<IApplicationListener> applicationListeners;
    private static PYWSDKManager mInstance;
    private static CallbackCreator mCreator;
    private static String account;// 新建朋友玩账号
    public static PYWUser user;
    public static String CHANNEL_UID;
    public boolean isSucess = true;

    static {
        // activityCallbacks = new ArrayList<IActivityCallback>(1);
        applicationListeners = new ArrayList<IApplicationListener>(2);
    }

    public static synchronized PYWSDKManager getInstance() {

        if (null == mInstance) {
            LogUtil.setOpen(BuildConfig.DEBUG);
            mInstance = new PYWSDKManager();
            PYWPluginManager.load(sContext);
            sPYWChannelPlugin = PYWPluginManager.getPYWChannelPlugin(sContext);
            sChannelPlugin = PYWPluginManager.getChannelPlugin(sContext);
            sGameKey = sDataInfo.optString(Constants.KEY_CONFIG_JSON_GAMEKEY);
            mCreator = new CallbackCreator();
            if (null != sPYWChannelPlugin)
                sLoginChannel = sPYWChannelPlugin;
        }
        return mInstance;
    }

    public static void onAppCreate(Application application) {

        for (IApplicationListener lis : applicationListeners) {
            lis.onProxyCreate();
        }
    }

    /**
     * channel_id :渠道id
     * game_key:游戏key
     * department_code:联运或者发行部门
     * channel_code:联运id，默认为""
     * channels:子渠道信息
     */
    public static void onAppAttachBaseContext(Application application,
                                              Context context) {

        sContext = context;
        sApplication = application;
        applicationListeners.clear();

		//捕捉全局异常
		CrashHandler.getInstance().init(application);
		String sdkData = Utils.getAssetStrFiles(context, "pywsdk.data");
		try {
			sSdkData = new JSONObject(sdkData);
			sDataInfo = sSdkData.getJSONObject("info");
			sDataChannels = sSdkData.getJSONArray("channels");
		} catch (JSONException e) {
			e.printStackTrace();
		}

        metaData = getMetaData(context);

        if (metaData.containsKey(APP_PROXY_NAME)) {
            String proxyAppNames = metaData.getString(APP_PROXY_NAME);
            String[] proxyApps = proxyAppNames.split(",");
            for (String proxy : proxyApps) {
                if (!TextUtils.isEmpty(proxy)) {
                    LogUtil.d("onAppAttachBaseContext",
                            "add a new application listener:" + proxy);
                    IApplicationListener listener = newApplicationInstance(
                            sApplication, proxy);
                    if (listener != null) {
                        applicationListeners.add(listener);
                    }
                }
            }
        }

        if (metaData.containsKey(APP_GAME_NAME)) {
            String gameAppName = metaData.getString(APP_GAME_NAME);
            IApplicationListener listener = newApplicationInstance(
                    sApplication, gameAppName);
            if (listener != null) {
                LogUtil.d("onAppAttachBaseContext",
                        "add a game application listener:" + gameAppName);
                applicationListeners.add(listener);
            }

        }

        for (IApplicationListener lis : applicationListeners) {
            lis.onProxyAttachBaseContext(context);
        }
    }

    public static void onAppConfigurationChanged(Application application,
                                                 Configuration newConfig) {
        for (IApplicationListener lis : applicationListeners) {
            lis.onProxyConfigurationChanged(newConfig);
        }
    }

    @SuppressWarnings("rawtypes")
    private static IApplicationListener newApplicationInstance(
            Application application, String proxyAppName) {

        if (proxyAppName == null || TextUtils.isEmpty(proxyAppName)) {
            return null;
        }

        if (proxyAppName.startsWith(".")) {
            proxyAppName = DEFAULT_PKG_NAME + proxyAppName;
        }

        try {
            Class clazz = Class.forName(proxyAppName);
            return (IApplicationListener) clazz.newInstance();

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {

            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }

        return null;
    }

    public static Context getContext() {
        return sContext;
    }

    public static Application getApplication() {
        return sApplication;
    }

    public static JSONObject getSdkData() {
        return sSdkData;
    }

    public static JSONObject getSDKInfoData() {
        return sDataInfo;
    }

    public static Bundle getMetaData(Context context) {
        try {
            ApplicationInfo appInfo = context.getPackageManager()
                    .getApplicationInfo(context.getPackageName(),
                            PackageManager.GET_META_DATA);

            if (appInfo != null && appInfo.metaData != null) {
                return appInfo.metaData;
            }
        } catch (NameNotFoundException e) {
        }

        return new Bundle();
    }

    private static void pywInit() {
        // 在这里进行朋友玩真正的初始化
        JSONObject data = PYWSDKManager.getSDKInfoData();

        String gamekey = null;
        String dcode = null;
        String channel_code = data.optString("channel_code");
        gamekey = data.opt("game_key") + "";
        dcode = data.opt("department_code") + "";

//			dcode = data.getString("department_code");

        if (TextUtils.isEmpty(gamekey)) {
            Toast.makeText(sContext, "gamekey为空", Toast.LENGTH_SHORT).show();
        }

        SDKConfig sdkconfig = new SDKConfig();
        sdkconfig.setGameKey(gamekey);
        sdkconfig.setDepartmentCode(dcode);
        sdkconfig.setChannel_code(channel_code);
        PYWPlatform.initSDK(sApplication, sContext, sdkconfig,
                new SDKEventListener(sApplication));
    }

    /**
     * 初始化接口转接方法 1.朋友玩初始化成功之后，再去调聚合SDK初始化接口，成功后用返回的channel_id来判定是否初始化三方渠道插件
     * 2.channel_id识别为朋友玩，使用朋友玩登录，则不初始化三方渠道插件，否则继续调用三方渠道的初始化接口
     *
     * @param context
     * @param listener
     */
    public void init(Context context, final IDefListener listener) {
        // 调用朋友玩初始化
        pywInit();
        sContext = context;
        showProgress(sContext, "正在初始化，请稍后...");
        // 朋友玩插件初始化
        PYWPluginExecutor.execute(sContext, sPYWChannelPlugin, "init", null,
                mCreator.createInitCallback(listener, PYWSDKManager.this));
    }

    /**
     * 直接弹出强更窗口，请在调用之前做好是否需要强更的判断
     */
    public void doUpdate(){
        new DownloadProgressDialog((Activity) sContext,
                SDKControler.getUpdateUrl()).show();
    }

    /**
     * 登录接口转接方法
     *
     * @param params   登录参数
     * @param callback 登录结果回调
     */
    public void Login(final HashMap<String, Object> params,
                      final IUserListener callback) {
        if (!isSucess && TextUtils.isEmpty(mLoginChannelId)) {
            ToastUtil.showMsg("初始化失败,请重启游戏.");
            return;
        }

        if (toDefaulChannel(mLoginChannelId)) {
            // 直接调起朋友玩登录界面
            executePYWLogin(params, callback);
        } else {
            // 三方渠道登錄
            PYWPluginExecutor.execute(sContext, sChannelPlugin, "login",
                    params, mCreator.createOtherLoginCallback(
                            PYWSDKManager.this, sChannelPlugin, callback));
        }

    }

    // 执行朋友玩的登录操作
    private void executePYWLogin(final HashMap<String, Object> params,
                                 final IUserListener callback) {
        PYWPluginExecutor.execute(sContext, sPYWChannelPlugin, "login", params,
                mCreator.createPYWLoginCallback(PYWSDKManager.this, callback));
    }

    /**
     * 悬浮框接口转接方法
     */
    public void showFloatView() {
        PYWPluginExecutor.execute(sContext, sLoginChannel, "showFloatView",
                null, mCreator.createSilenceCallback());
    }


    /**
     * 悬浮框接口转接方法
     */
    public void hideFloatView() {
        PYWPluginExecutor.execute(sContext, sLoginChannel, "hideFloatView",
                null, mCreator.createSilenceCallback());
    }

    /**
     * 支付接口转接方法 1.朋友玩登录：不需要访问转换接口，直接调起朋友玩插件支付
     * 2.三方渠道登录：需要访问转换接口，判断使用朋友玩支付时，不需要数据转换，直接调起朋友玩插件支付
     * 3.三方渠道登录：访问转换接口，判断使用三方渠道支付时，用返回的数据替换之后，传入三方渠道插件进行调起支付
     *
     * @param params   支付参数
     * @param callback 支付结果回调
     */
    public void Pay(PayParams params, final IPayListener callback) {

        try {
            final HashMap<String, Object> payParams = (HashMap<String, Object>) Utils
                    .objectToMap(params);
            if (sLoginChannel.equals(sPYWChannelPlugin)) {
                // 朋友玩登录状态
                doPYWPay(callback, payParams);
            } else {
                // 三方渠道登录状态
                otherChannelPay(params, callback, payParams);
            }
        } catch (Exception e) {
            callback.onPayFail(KeyCodes.ERROR_PARAMS_TRANSFORM,
                    "pay interface transform error: " + e);
        }
    }

    // 三方渠道登录状态
    private void otherChannelPay(PayParams params, final IPayListener callback,
                                 final HashMap<String, Object> payParams) {
        if (!(null == sPayParams || sPayParams.isEmpty())) {
            // 组织创建订单接口数据
            HashMap<String, String> pywGetOrderParams = getPywGetOrderParams(params);
            RequestNetUtil.getInstance().request(pywGetOrderParams,
                    Constants.URL_CREATORDER, new Listener<String>() {

                        @Override
                        public void onResponse(String response) {
                            try {
                                JSONObject jobj = new JSONObject(response);
                                int ack = jobj.getInt("ack");
                                String msg = jobj.getString("msg");
                                if (ack == 200) {
                                    JSONObject data = jobj
                                            .optJSONObject("data");
                                    if (data != null) {
                                        // 组织回调数据
                                        String channelProdID = data
                                                .optString("channel_prod_id");// 渠道产品id
                                        String channelOrderInfo = data
                                                .optString("channel_order_info");// 渠道订单透传信息
                                        String OrderPrice = data
                                                .optString("order_price");// 订单价格
                                        String channelOrderSN = data
                                                .optString("channel_order_sn");// 渠道订单号
                                        sPayParams.put("channel_order_sn",
                                                channelOrderSN);
                                        payParams.put("channel_order_sn",
                                                channelOrderSN);
                                        payParams.put("channel_order_info",
                                        		channelOrderInfo);
                                        String payChannelId = data
                                                .optString("channel_id");// 返回真实的渠道id（用于SDK支付的切换)
                                        // 判断当前支付渠道
                                        if (toDefaulChannel(payChannelId)) {
                                            // 服务器要求使用朋友玩支付，直接调起支付
                                            doPYWPay(callback, payParams);
                                        } else {
                                            // 服务器要求使用三方渠道支付，用转换后的数据来调起支付
                                            HashMap<String, Object> payData = (HashMap<String, Object>) Utils
                                                    .objectToMap(data);
                                            payData.remove(PAY_CHANNEL_KEY);
                                            // TODO
                                            // 先将返回的数据加到末尾，联调的时候再看如何组织数据
                                            payParams.putAll(payData);

                                            PYWPluginExecutor.execute(
                                                    sContext,
                                                    sChannelPlugin,
                                                    "pay",
                                                    payParams,
                                                    mCreator.createOtherPayCallback(
                                                            PYWSDKManager.this,
                                                            callback));
                                        }
                                    } else {
                                        // 返回數據為空
                                        callback.onPayFail(
                                                KeyCodes.ERROR_CALLBACK_PARAMS,
                                                "pay failed,response data is null");
                                    }
                                } else {
                                    // 聯網錯誤
                                    callback.onPayFail(
                                            KeyCodes.ERROR_NETWORKING,
                                            "pay failed,net error,code is: "
                                                    + ack + " msg: " + msg);
                                }
                            } catch (Exception e) {
                                callback.onPayFail(
                                        KeyCodes.ERROR_PARAMS_TRANSFORM,
                                        "pay failed,response params analytic error. e: "
                                                + e);
                            }
                        }

                    }, new ErrorListener() {

                        @Override
                        public void onErrorResponse(VolleyError error) {

                            callback.onPayFail(KeyCodes.ERROR_PARAMS_TRANSFORM,
                                    "pay failed,net error, volleyError message: "
                                            + error);
                        }
                    });
        }
    }

    /**
     * 组装朋友玩获取订单的参数
     *
     * @param params
     * @return
     */
    private HashMap<String, String> getPywGetOrderParams(PayParams params) {
        final String channelId = sDataInfo
                .optString(Constants.KEY_CONFIG_JSON_CHANNELID);
        String chargeType = params.getChargeType();
        final String channelUId = sPayParams.get("channel_uid");
        final String cpUid = sPayParams.get("cp_uid");
        String account = sPayParams.get("account");
        final String gameId = sPayParams.get("gameid");
        String cpProduceId = params.getProductId();
        int orderPrice = params.getPrice();
        final String cpOrderSN = params.getOrderID();
        String cpOrderInfo = params.getExtension();
        // String roleName = params.getRoleName();
        // String service = params.getServerName()
        HashMap<String, String> pywGetOrderParams = new HashMap<String, String>();
        pywGetOrderParams.put("gameid", gameId);
        pywGetOrderParams.put("gamekey", sGameKey);
        pywGetOrderParams.put("tid", AppUtil.getTid());
        pywGetOrderParams.put("channel_id", channelId);// 打包时打入的渠道ID
        pywGetOrderParams.put("channel_uid", channelUId);// 渠道登录完成后的用户id
        pywGetOrderParams.put("charge_type", chargeType);// 充值类型，定额充1，任意充2
        pywGetOrderParams.put("cp_uid", cpUid);// 朋友玩用户id
        pywGetOrderParams.put("cp_product_id", "2".equals(chargeType) ? ""
                : cpProduceId);// 产品id，任意充的时候可不传
        pywGetOrderParams.put("order_price", "" + orderPrice);// 订单价格
        pywGetOrderParams.put("cp_order_sn", cpOrderSN);// 游戏订单号
        pywGetOrderParams.put("cp_order_info", cpOrderInfo);// 订单额外信息，json字串（如区服、角色名）
        pywGetOrderParams.put("account", account);// 新建的朋友玩账号
        if (params.getRoleName() != null) {
            pywGetOrderParams.put("rolename",
                    URLEncoder.encode(params.getRoleName()));// 角色名称
        }
        if (params.getServerName() != null) {
            pywGetOrderParams.put("service",
                    URLEncoder.encode(params.getServerName()));// 区服信息
        }
        return pywGetOrderParams;
    }

    private void doPYWPay(final IPayListener callback,
                          final HashMap<String, Object> payParams) {
        PYWPluginExecutor.execute(sContext, sPYWChannelPlugin, "pay",
                payParams, mCreator.createPYWPayCallback(callback));
    }

    private static final String PAY_CHANNEL_KEY = "channel_plugin";

    /**
     * 登出接口转接方法
     *
     * @param params 登出参数
     *               登出结果回调
     */
    public void logout(HashMap<String, Object> params,
                       final ILogoutListener listener) {
        PYWPluginExecutor.execute(sContext, sLoginChannel, "logout", params,
                mCreator.createLogoutCallback(listener));
    }

    /**
     * 退出游戏接口转接方法
     *
     * @param params 支付参数
     *               支付结果回调
     */
    public void gameExit(HashMap<String, Object> params,
                         final IGameExitListener listener) {
        PYWPluginExecutor.execute(sContext, sLoginChannel, "gameExit", params,
                mCreator.createGameExitExcuteCallback(listener));
    }

    /**
     * 进入游戏后获取游戏中的角色信息
     *
     * @param params
     * @param listener
     */
    public void getRoleMessage(UserParams params,
                               final IGetRoleListener listener) {
        if (TextUtils.isEmpty(params.getRoleid())
                && TextUtils.isEmpty(params.getRoleLevel())
                && TextUtils.isEmpty(params.getRoleName())
                && TextUtils.isEmpty(params.getServerArea())
                && TextUtils.isEmpty(params.getServerAreaName())) {
            return;
        }

        HashMap<String, String> data = new HashMap<String, String>();
        HashMap<String, Object> datas = null;
        try {
            datas = (HashMap<String, Object>) Utils.objectToMap(params);
        } catch (Exception e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }
        if (!TextUtils.isEmpty(params.getRoleid())) {
            data.put("roleid", URLEncoder.encode(params.getRoleid()));
        }
        if (!TextUtils.isEmpty(params.getRoleName())) {
            data.put("roleName", URLEncoder.encode(params.getRoleName()));
        }
        if (!TextUtils.isEmpty(params.getServerArea())) {
            data.put("serverArea", URLEncoder.encode(params.getServerArea()));
        }
        if (!TextUtils.isEmpty(params.getRoleLevel())) {
            data.put("roleLevel", URLEncoder.encode(params.getRoleLevel()));
        }
        if (!TextUtils.isEmpty(params.getServerAreaName())) {
            data.put("serverAreaName",
                    URLEncoder.encode(params.getServerAreaName()));
        }
        if (UserManager.getInstance().getCurrentUserForSDK() == null) return;
        data.put("gamekey", sGameKey);
        data.put("channel_id", mLoginChannelId);
        data.put("game_id", InitManager.getInstance().getGameId());
        if (sLoginChannel.equals(sPYWChannelPlugin)
                && UserManager.getInstance().getCurrentUserForSDK()
                .getUserName() != null) {
            data.put("account", UserManager.getInstance()
                    .getCurrentUserForSDK().getUserName());

        } else {
            data.put("account", sPayParams.get("account"));
        }
        data.put("tid", AppUtil.getTid());
        RequestNetUtil.getInstance().request(data, UrlManager.URL_DATA_COLLECT,
                new Listener<String>() {

                    @Override
                    public void onResponse(String response) {

                        try {
                            JSONObject jobj = new JSONObject(response);
                            int ack = jobj.getInt("ack");
                            if (ack == 200) {
                                listener.onSuccess();
                            }
                        } catch (JSONException e) {
                            // TODO Auto-generated catch block
                            e.printStackTrace();
                            listener.onFail(KeyCodes.ERROR_PARAMS_TRANSFORM,
                                    e.toString());
                        }

                    }
                }, new ErrorListener() {

                    @Override
                    public void onErrorResponse(VolleyError error) {
                        listener.onFail(KeyCodes.ERROR_PARAMS_TRANSFORM,
                                "failed,net error, volleyError message: "
                                        + error);
                    }
                });

        PYWPluginExecutor.execute(sContext, sChannelPlugin, "getRoleMessage",
                datas, new PYWPluginExecutor.executeCallback() {

                    @Override
                    public void onExecutionSuccess(Object obj) {

                    }

                    @Override
                    public void onExecutionFailure(int failCode,
                                                   String failMessage) {

                    }
                });

    }

    public void setLogoutCallback(final ILogoutCallback callback) {
        PYWPluginExecutor.setCallback(sContext, sLoginChannel, "setCallback",
                new PYWPluginExecutor.Callback() {

                    @Override
                    public void onCallback(Object obj) {
                        if (callback != null) {
                            callback.onLogout();
                        }
                    }
                });
    }

    public void onPause() {
        PYWPluginManager.pluginsPause(sContext);
    }

    public void onResume() {
        PYWPluginManager.pluginsResume(sContext);
    }

    public void onDestroy() {
        PYWPluginManager.destroyAll(sContext);
    }

    public void onStop() {
        PYWPluginManager.pluginsStop(sContext);
    }

    public void onRestart() {
        PYWPluginManager.pluginsRestart(sContext);
    }

    public void onStart() {
        PYWPluginManager.pluginsStart(sContext);
    }

    public void onNewIntent(Intent intent) {
        PYWPluginManager.pluginsNewIntent(intent);
    }

    public void onConfigurationChanged(Configuration configuration) {
        PYWPluginManager.pluginsConfigurationChanged(configuration);
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        PYWPluginManager.pluginsActivityResult(requestCode, resultCode, data);
    }

    /**
     * 显示加载框
     */
    public void showProgress(Context context, String str) {
        Activity act = (Activity) context;
        if (!act.isFinishing()) {
            if (progressDialog == null) {
                progressDialog = new CustomProgressDialog(act, str);
            }
            progressDialog.show();
        }
    }

    /**
     * 隐藏加载框
     */
    public void dismissProgress() {
        if (progressDialog != null && progressDialog.isShowing()) {
            progressDialog.dismiss();
        }
    }

    public void setGameId(String gameId) {
        sGameId = gameId;
    }

    public String getGameKey() {
        return sGameKey;
    }

    public JSONObject getDataInfo() {
        return sDataInfo;
    }

    public HashMap<String, String> getPayParams() {
        return sPayParams;
    }

    public void setPayParams(HashMap<String, String> sPayParams) {
        PYWSDKManager.sPayParams = sPayParams;
    }

    public JSONArray getDataChannels() {
        return sDataChannels;
    }

    public String getLoginChannelId() {
        return mLoginChannelId;
    }

    public void setLoginChannelId(String id) {
        mLoginChannelId = id;
    }

    public PYWPlugin getChannelPlugin() {
        return sChannelPlugin;
    }

    public void setPlugin(PYWPlugin p) {
        sLoginChannel = p;
    }

    public void setCurrentChannel2PYW() {
        sLoginChannel = sPYWChannelPlugin;
    }

    public String getGameId() {
        return sGameId;
    }

    public void executeNormalInit(HashMap channelData,
                                  final IDefListener listener) {
        PYWPluginExecutor.execute(sContext, sChannelPlugin, "init",
                channelData, new PYWPluginExecutor.executeCallback() {

                    @Override
                    public void onExecutionSuccess(Object obj) {

                        sLoginChannel = sChannelPlugin;
                        listener.onSuccess();
                    }

                    @Override
                    public void onExecutionFailure(int failCode,
                                                   String failMessage) {

                        listener.onFail(failCode, failMessage);
                    }
                });
    }

    public boolean toDefaulChannel(String id) {
        return TextUtils.isEmpty(id) || id.equals("17") || id.equals("22")
                || id.equals("19");
    }

}
