package com.pengyouwan.sdk.manager;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.sdk.activity.ChargeCenterActivity;
import com.pengyouwan.sdk.activity.UserCenterActivity;
import com.pengyouwan.sdk.db.UserOperator;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestQueueManager;
import com.pengyouwan.sdk.open.ISDKEventCode;
import com.pengyouwan.sdk.open.OnSDKEventListener;
import com.pengyouwan.sdk.open.PayConstant;
import com.pengyouwan.sdk.open.RoleConstant;
import com.pengyouwan.sdk.open.SDKConfig;
import com.pengyouwan.sdk.preference.SDKPereferenceUtil;
import com.pengyouwan.sdk.protocol.CollectDataTask;
import com.pengyouwan.sdk.protocol.SecondInitTask;
import com.pengyouwan.sdk.ui.dialog.CustomProgressDialog;
import com.pengyouwan.sdk.ui.dialog.ExitDialog;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.ToastUtil;

/**
 * Copyright (C) pengpuxin Inc.All Rights Reserved.
 * FileName：com.pengyouwan.sdk.api.
 *
 * @Description：SDKControler SDK 入口 初始化 History： 版本号 作者 日期 简要介绍相关操作 2.1.3
 * pengpuxin 2016-7-2 Create
 */
public class SDKControler {

    private static Context mContext;

    private static OnSDKEventListener mSDKListener;

    private static List<Activity> mActivityList = new LinkedList<Activity>();

    private static int mActivityCounter;

    private static SDKConfig mSDKConfig;

    private static boolean mInit = false;// 是否初始化

    private static String sdkVersionName;// sdk版本名称

    private static String sdkType = "1";// 1为优趣，2是光速

    private static String updateUrl;// 强更地址

    private static String cpParams;

    private static String pageName = "";//home键前的页面

    public static void init(Context context, SDKConfig sdkconfig,
                            OnSDKEventListener listener, int versionCode, String versionName) {
        if (context == null) {
            LogUtil.e("context can not be null");
            return;
        }

        if (sdkconfig == null) {
            ToastUtil.showMsg("初始化失败");
            LogUtil.e("sdkconfig can not be null");
            return;
        }
        //
        // if (listener == null) {
        // throw new
        // IllegalArgumentException("SDKEventListener can not be null");
        // }

        mContext = context;
        mSDKConfig = sdkconfig;
        mSDKListener = listener;
        sdkVersionName = versionName;
        // 检测sdk配置信息
        mInit = checkSDKConfig();
        try {
            // volley的初始化
            RequestQueueManager.init(mContext.getApplicationContext());
            // 获取渠道信息
            initChannelInfo();
            // 创建文件目录
            FolderManager.initSystemFolder();
            // 初始化sdk类型
            initSDKType();
            // 获取1.0.7账号
            insertOldAccount();
        } catch (Exception e) {
            e.printStackTrace();
            ToastUtil.showMsg("初始化失败");
            return;
        }
    }

    private static void initSDKType() {
        sdkType = mContext.getString(ResIdManager.getStringId(mContext,
                Rx.string.pyw_sdk_type));
    }

    /**
     * 获取旧账号插入db 然后clear用户信息
     */
    private static void insertOldAccount() {
        String str = SDKPereferenceUtil.getAccount(mContext);
        if (!TextUtils.isEmpty(str)) {
            SDKUser user = new SDKUser();
            user.setUserName(str);
            UserOperator.getInstance().insertOrUpdateUserInfo(user);
            SDKPereferenceUtil.clearAccountInfos(mContext);
        }
    }

    public static String getSDKVersionName() {
        return sdkVersionName;
    }

    public static String getSDKType() {
        return sdkType;
    }

    private static boolean checkSDKConfig() {
        if (TextUtils.isEmpty(mSDKConfig.getGameKey())) {
            ToastUtil.showMsg("初始化失败");
            LogUtil.e("appkey不能为空");
            return false;
        }
        return true;
    }

    public static Context getContext() {
        return mContext;
    }

    public static boolean isInit() {
        return mInit;
    }

    public static void setContext(Context mContext) {
        SDKControler.mContext = mContext;
    }

    public static OnSDKEventListener getOnSDKEventListener() {
        return mSDKListener;
    }

    public static void activityCreate(Activity activity) {
        mActivityList.add(activity);
        mActivityCounter++;
    }

    public static void activityDestory(Activity activity) {
        mActivityList.remove(activity);
        mActivityCounter--;
    }

    public static int getActivityCounter() {
        return mActivityCounter;
    }

    public static void finishActivities() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR1) {
            finishActivitiesUpMR1();
        } else {
            finishActivitiesNormal();
        }

    }

    @TargetApi(Build.VERSION_CODES.JELLY_BEAN_MR1)
    private static void finishActivitiesUpMR1() {
        for (Activity activity : mActivityList) {
            if (activity != null && !activity.isDestroyed()) {
                activity.finish();
            }
        }
        mActivityList.clear();
    }

    private static void finishActivitiesNormal() {
        for (Activity activity : mActivityList) {
            if (activity != null && !activity.isFinishing()) {
                activity.finish();
            }
        }
        mActivityList.clear();
    }

    public static String getGameKey() {
        if (mSDKConfig != null) {
            return mSDKConfig.getGameKey();
        }
        return null;
    }

    public static void setPageName(String name) {
        pageName = name;
    }

    public static String getPageName() {
        return pageName;
    }

    /**
     * 获取appID
     *
     * @return
     */
    public static String getWxAppId() {
        if (mSDKConfig != null) {
            return mSDKConfig.getWxAppID();
        }
        return null;
    }

    public static SDKConfig getSDKConfig() {
        return mSDKConfig;
    }

    /**
     * 打开登录界面
     */
    public static void openLogin(Activity activity) {
        LoginManager.getInstance().login(activity);
    }

    /**
     * 打开个人中心
     */
    public static void openUsercenter(Activity activity) {
        if (null == UserManager.getInstance().getCurrentUserForSDK()) {
            ToastUtil.showMsg(activity.getString(ResIdManager.getStringId(
                    activity, Rx.string.pyw_login_tip)));
            return;
        }
        Intent intent = new Intent(activity, UserCenterActivity.class);
        activity.startActivity(intent);
    }

    /**
     * 打开充值中心
     */
    public static void openChargeCenter(final Activity activity,
                                        final Map<String, Object> paramMap, boolean isAnyAmount) {
        if (null == UserManager.getInstance().getCurrentUserForSDK()) {
            ToastUtil.showMsg(activity.getString(ResIdManager.getStringId(
                    activity, Rx.string.pyw_login_tip)));
            return;
        }
        final int isAny = isAnyAmount ? 2 : 1;// 任意充-2 定额充值-1
        if (checkParam(paramMap, isAnyAmount)) {
            try {
                showProgress(activity);
                SecondInitTask task = new SecondInitTask() {// 执行线程获取支付方式
                    @Override
                    public void callback(HttpResponse httpResponse) {
                        dismissProgress();
                        paramMap.put(PayConstant.PAY_EXTRA, getCpParams());// 根据cp传过来的额外参数重整
                        Intent intent = ChargeCenterActivity.createIntent(
                                activity, paramMap, isAny);
                        activity.startActivity(intent);
                    }
                };
                task.request();
            } catch (AppException e) {
                e.printStackTrace();
                dismissProgress();
                ToastUtil.showMsg("错误类型:" + e.getType() + ",code:"
                        + e.getCode());
            }
        }
    }

    /**
     * 手机游戏内角色信息，cp没有传入则不调用上传接口
     *
     * @param activity
     * @param params
     */
    public static void getRoleMessage(final Activity activity,
                                      final Map<String, Object> params) {
        if (TextUtils.isEmpty(params.get(RoleConstant.ROLEID) + "")
                && TextUtils.isEmpty(params.get(RoleConstant.ROLELEVEL) + "")
                && TextUtils.isEmpty(params.get(RoleConstant.ROLENAME) + "")
                && TextUtils.isEmpty(params.get(RoleConstant.SERVERAREA) + "")
                && TextUtils.isEmpty(params.get(RoleConstant.SERVERAREANAME)
                + "")) {
            LogUtil.d("角色信息为空。");
            return;
        }

        try {
            showProgress(activity);
            CollectDataTask task = new CollectDataTask() {

                @Override
                public void callback(HttpResponse httpResponse) {
                    dismissProgress();
                    CollectResponse response = (CollectResponse) httpResponse;
                    if (response != null) {
                        if (response.isOk()) {
                            SDKEventDispatcher.sendEventNow(
                                    ISDKEventCode.CODE_GET_ROLE_SUCCESS, null);
                        } else {
                            SDKEventDispatcher.sendEventNow(
                                    ISDKEventCode.CODE_GET_ROLE_FAIL, null);
                        }

                    } else {
                        SDKEventDispatcher.sendEventNow(
                                ISDKEventCode.CODE_GET_ROLE_FAIL, null);
                    }

                }
            };
            task.request(params);
        } catch (AppException e) {
            e.printStackTrace();
            dismissProgress();
            SDKEventDispatcher.sendEventNow(ISDKEventCode.CODE_GET_ROLE_FAIL,
                    null);
        }
    }

    /**
     * 参数检查
     */
    private static boolean checkParam(Map<String, Object> paramMap,
                                      boolean isAnyAmount) {
        String productId = "";
        String orderId;
        if (!isAnyAmount) {// 定额充必须要产品id
            if (!paramMap.containsKey(PayConstant.PAY_PRODUCT_ID)) {
                ToastUtil.showMsg("产品id不能为空");
                return false;
            } else {
                productId = String.valueOf(paramMap
                        .get(PayConstant.PAY_PRODUCT_ID));
            }
        }
        if (!paramMap.containsKey(PayConstant.PAY_ORDER_ID)) {
            ToastUtil.showMsg("订单id不能为空");
            return false;
        } else {
            orderId = (String) paramMap.get(PayConstant.PAY_ORDER_ID);
        }
        if (!paramMap.containsKey(PayConstant.PAY_MONEY)) {
            ToastUtil.showMsg("商品价格不能为空");
            return false;
        } else {
            if (!(paramMap.get(PayConstant.PAY_MONEY) instanceof Integer)) {// 判断是否Intege类型值
                ToastUtil.showMsg("请确保价格为正整型");
                return false;
            } else {
                int money = (Integer) paramMap.get(PayConstant.PAY_MONEY);
                if (money < 1) {
                    ToastUtil.showMsg("价格最低为1元");
                    return false;
                }
            }
        }
        if (!paramMap.containsKey(PayConstant.PAY_PRODUCE_NAME)) {
            ToastUtil.showMsg("商品名称不能为空");
            return false;
        }
        if (paramMap.containsKey(PayConstant.PAY_EXTRA)) {
            String cpParams = checkJson(paramMap.get(PayConstant.PAY_EXTRA)
                    .toString(), productId, orderId);// 检查额外参数
            if (TextUtils.isEmpty(cpParams)) {
                return false;
            } else {
                setCpParams(cpParams);
                return true;
            }
        } else {
            String cpParams = checkJson("", productId, orderId);// 检查额外参数
            setCpParams(cpParams);
            return true;
        }
    }

    public static String getCpParams() {
        return cpParams;
    }

    public static void setCpParams(String cpParams) {
        SDKControler.cpParams = cpParams;
    }

    private static String checkJson(String json, String productId,
                                    String orderId) {
        JSONObject jobj;
        try {
            if (TextUtils.isEmpty(json)) {// 没有额外参数
                jobj = new JSONObject();
                jobj.put("product_id", productId);
                jobj.put("order_id", orderId);
                return jobj.toString();
            } else {// 含有额外参数
                jobj = new JSONObject(json);
                jobj.put("product_id", productId);
                jobj.put("order_id", orderId);
                return jobj.toString();
            }
        } catch (JSONException e) {
            ToastUtil.showMsg("无法转换成JSONObject或者参数类型有误");
            return "";
        }
    }

    /**
     * 退出方法
     */
    public static void exit(Activity activity) {
        new ExitDialog(activity).show();
    }

    public static String getUpdateUrl() {
        return updateUrl;
    }

    public static void setUpdateUrl(String updateUrl) {
        SDKControler.updateUrl = updateUrl;
    }

    /**
     * 获取渠道信息
     */
    private static void initChannelInfo() {
        String[] promoAndchannel = AppUtil.getChannel(mContext);
        // 本地文件读取不到，则尝试从app获取
        if (promoAndchannel == null) {
            promoAndchannel = new PromoCodeChannelResolverManager(mContext)
                    .query();
        }
        if (promoAndchannel != null) {
            if (promoAndchannel.length >= 2) {
                // 有两位以上，则第二位为渠道号
                mSDKConfig.setChannel(promoAndchannel[1]);
            }
            mSDKConfig.setPromo(promoAndchannel[0]);
        }

    }

    private static CustomProgressDialog progressDialog;

    /**
     * 显示加载框
     */
    private static void showProgress(Activity act) {
        if (progressDialog == null) {
            progressDialog = new CustomProgressDialog(act, "请稍后...");
        }
        progressDialog.show();
    }

    /**
     * 隐藏加载框
     */
    private static void dismissProgress() {
        if (progressDialog != null && progressDialog.isShowing()) {
            progressDialog.dismiss();
        }
    }

}
