package com.pyw.plugin.qihoo;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;

import com.pengyouwan.sdk.manager.SDKControler;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.net.URLEncoder;
import java.util.HashMap;

import com.qihoo.gamecenter.sdk.activity.ContainerActivity;
import com.qihoo.gamecenter.sdk.common.IDispatcherCallback;
import com.qihoo.gamecenter.sdk.matrix.Matrix;
import com.qihoo.gamecenter.sdk.protocols.CPCallBackMgr;
import com.qihoo.gamecenter.sdk.protocols.ProtocolConfigs;
import com.qihoo.gamecenter.sdk.protocols.ProtocolKeys;

/**
 * Created by zhj on 2018/2/27.
 * 『渠道号』 126    安卓-360
 * 【朋友玩参数】
 * 游戏名称：龙城传奇-360-安卓
 * game_key：0fa4a60a
 * appid： 204018656
 * appkey：ecf752a3558819a5ae38a24dc573e9d8
 * secret：e44fe9aee52efdfe9a1bbb2337474473
 * 注意事项： 1.360的包名必须用qihoo后缀
 * 2.清单文件中provider 标签中有一个属性必须根据包名配置
 * 3.ContainerActivity在清单文件中的host值必须为包名
 * 4.res/xml/qihoo_xxx_adapter里有个配置值需跟第2条中的配置一致
 * 5.龙城传奇versionnumber里的值为：buy.lccq.360.1.000
 */
public class QihooChannel extends PYWPlugin {
    private static final String TAG = "360plugin";

    private Activity mActivity;
    private PYWPluginExecutor.executeCallback initcallback, paycallback, logincallback, logoutcallback, gameExitcallback;
    private PYWPluginExecutor.Callback mSDKLogoutCallback;
    private String mOrderID;
    private String serverId, serverAreaName, roleid, roleName, roleLevel;
    private static final String CHANNLE_UID = "channel_uid_is_null";

    @Override
    public void onCreate(Context context) {

    }

    public void init(final Context context, final HashMap params, PYWPluginExecutor.executeCallback callback) {
        this.initcallback = callback;
        this.mActivity = (Activity) context;
        // 此处必须先初始化360SDK
        Matrix.initInApplication(mActivity.getApplication());
        Matrix.setActivity(mActivity, mSDKCallback, false);
    }

    protected CPCallBackMgr.MatrixCallBack mSDKCallback = new CPCallBackMgr.MatrixCallBack() {
        @Override
        public void execute(Context context, int functionCode, String functionParams) {
            if (functionCode == ProtocolConfigs.FUNC_CODE_SWITCH_ACCOUNT) {
                if (mSDKLogoutCallback == null) return;
                //先注销再执行360的切换账号功能
                mSDKLogoutCallback.onCallback(null);
                doSdkSwitchAccount();
            } else if (functionCode == ProtocolConfigs.FUNC_CODE_INITSUCCESS) {
                if (initcallback != null) {
                    initcallback.onExecutionSuccess(null);
                }
                //这里返回成功之后才能调用SDK 其它接口
                //例如，登录接口必须在该callback回调成功后调用
                // ...
            }
        }
    };


    public void getRoleMessage(final Context context, HashMap params, final PYWPluginExecutor.executeCallback callback) {

        roleid = TextUtils.isEmpty(params.get("roleid") + "") ? "0" : params.get("roleid") + "";
        roleName = TextUtils.isEmpty(params.get("roleName") + "") ? "" : params.get("roleName") + "";
        roleLevel = TextUtils.isEmpty(params.get("roleLevel") + "") ? "1" : params.get("roleLevel") + "";
        serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? "0" : params.get("serverArea") + "";
        serverAreaName = TextUtils.isEmpty(params.get("serverAreaName") + "") ? "无" : params.get("serverAreaName") + "";


        //----------------------------模拟数据------------------------------
        //帐号余额
        JSONArray balancelist = new JSONArray();
        JSONObject balance1 = new JSONObject();
        JSONObject balance2 = new JSONObject();

        //好友关系
        JSONArray friendlist = new JSONArray();
        JSONObject friend1 = new JSONObject();
//        JSONObject friend2 = new JSONObject();

        //排行榜列表
        JSONArray ranklist = new JSONArray();
        JSONObject rank1 = new JSONObject();
//        JSONObject rank2 = new JSONObject();

        try {
            balance1.put("balanceid", "1");
            balance1.put("balancename", "bname1");
            balance1.put("balancenum", "0");
            balance2.put("balanceid", "0");
            balance2.put("balancename", "bname2");
            balance2.put("balancenum", "0");
            balancelist.put(balance1).put(balance2);

            friend1.put("roleid", "0");
            friend1.put("intimacy", "0");
            friend1.put("nexusid", "0");
            friend1.put("nexusname", "无");
            friendlist.put(friend1);

            rank1.put("listid", "0");
            rank1.put("listname", "无");
            rank1.put("num", "无");
            rank1.put("coin", "无");
            rank1.put("cost", "无");
            ranklist.put(rank1);

        } catch (JSONException e) {
            e.printStackTrace();
        }

        HashMap<String, String> eventParams = new HashMap<String, String>();

        eventParams.put("type", "enterServer");  //（必填）角色状态（enterServer（登录），levelUp（升级），createRole（创建角色），exitServer（退出））
        eventParams.put("zoneid", serverId);  //（必填）游戏区服ID
        eventParams.put("zonename", serverAreaName);  //（必填）游戏区服名称
        eventParams.put("roleid", roleid);  //（必填）玩家角色ID
        eventParams.put("rolename", roleName);  //（必填）玩家角色名
        eventParams.put("professionid", "0");  //（必填）职业ID
        eventParams.put("profession", "无");  //（必填）职业名称
        eventParams.put("gender", "无");  //（必填）性别
        eventParams.put("professionroleid", "0");  //（选填）职业称号ID
        eventParams.put("professionrolename", "无");  //（选填）职业称号
        eventParams.put("rolelevel", roleLevel);  //（必填）玩家角色等级
        eventParams.put("power", "0");  //（必填）战力数值
        eventParams.put("vip", "0");  //（必填）当前用户VIP等级
        eventParams.put("balance", balancelist.toString());  //（必填）帐号余额
        eventParams.put("partyid", "0");  //（必填）所属帮派帮派ID
        eventParams.put("partyname", "无");  //（必填）所属帮派名称
        eventParams.put("partyroleid", "0");  //（必填）帮派称号ID
        eventParams.put("partyrolename", "无");  //（必填）帮派称号名称
        eventParams.put("friendlist", friendlist.toString());  //（必填）好友关系
        eventParams.put("ranking", ranklist.toString());  //（选填）排行榜列表
        //参数eventParams相关的 key、value键值对 相关具体使用说明，请参考文档。
        //----------------------------模拟数据------------------------------
        Matrix.statEventInfo(context.getApplicationContext(), eventParams);

        callback.onExecutionSuccess(null);
    }


    public void login(Context context, HashMap<String, Object> params,
                      PYWPluginExecutor.executeCallback callback) {
        this.logincallback = callback;
        Intent intent = new Intent(context, ContainerActivity.class);
        // 必需参数，使用360SDK的登录模块
        intent.putExtra(ProtocolKeys.FUNCTION_CODE,
                ProtocolConfigs.FUNC_CODE_LOGIN);
        // 可选参数，360SDK界面是否以横屏显示，默认为true，横屏
        intent.putExtra(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE,
                true);
        //-- 以下参数仅仅针对自动登录过程的控制
        // 可选参数，自动登录过程中是否不展示任何UI，默认展示。
        intent.putExtra(ProtocolKeys.IS_AUTOLOGIN_NOUI,
                false);
        IDispatcherCallback qcallback = mQihooLoginCallback;

        Matrix.execute((Activity) context, intent, qcallback);
    }


    // 登录、注册的回调
    private IDispatcherCallback mQihooLoginCallback = new IDispatcherCallback() {

        @Override
        public void onFinished(String data) {
            // press back
            if (isCancelLogin(data)) {
                return;
            }
            // 解析access_token
            String accessToken = parseAccessTokenFromLoginResult(data);

            if (!TextUtils.isEmpty(accessToken)) {
//                getUserInfo(accessToken);
                UserParams userParams = new UserParams();
                userParams.setToken(accessToken);
                userParams.setSdkUserID(CHANNLE_UID);
                logincallback.onExecutionSuccess(userParams);
            } else {
                logincallback.onExecutionFailure(0, "get access_token failed!");
            }
        }
    };


    /**
     * 使用360SDK的切换账号接口
     */
    private void doSdkSwitchAccount() {
        if (mActivity == null) return;
        Intent intent = new Intent(mActivity, ContainerActivity.class);
        // 必须参数，360SDK界面是否以横屏显示。
        intent.putExtra(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, true);

        // 必需参数，使用360SDK的切换账号模块。
        intent.putExtra(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_SWITCH_ACCOUNT);
        IDispatcherCallback callback = mQihooLoginCallback;
        Matrix.invokeActivity(mActivity, intent, callback);
    }


    private String parseAccessTokenFromLoginResult(String loginRes) {
        try {
            JSONObject joRes = new JSONObject(loginRes);
            JSONObject joData = joRes.getJSONObject("data");
            return joData.getString("access_token");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "-1";
    }


    private boolean isCancelLogin(String data) {
        try {
            JSONObject joData = new JSONObject(data);
            int errno = joData.optInt("errno", -1);
            if (-1 == errno) {
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }


    public void setExitGame(final Context context, HashMap params, final PYWPluginExecutor.executeCallback callback) {
        this.gameExitcallback = callback;
    }


    public void pay(final Context context, HashMap params, final PYWPluginExecutor.executeCallback callback) {
        this.paycallback = callback;
        String productName = params.get("productName") + "";
        String productId = params.get("productId") + "";
        mOrderID = params.get("orderID") + "";
        int price = (Integer) params.get("price");

        String channel_oid = params.get("channel_order_sn") + "";
        String extrol = params.get("channel_order_info") + "";


        // 支付基础参数
//        String qihooUserId = (mQihooUserInfo != null) ? mQihooUserInfo.getId() : null;
        Bundle bundle = new Bundle();
        // 界面相关参数，360SDK界面是否以横屏显示。
        bundle.putBoolean(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, true);
        // *** 以下非界面相关参数 ***
        bundle.putString(ProtocolKeys.APP_ORDER_ID, channel_oid);
        // 设置QihooPay中的参数。
        bundle.putString(ProtocolKeys.QIHOO_USER_ID, PYWSDKManager.CHANNEL_UID);
        // 必需参数，所购买商品金额, 以分为单位。金额大于等于100分，360SDK运行定额支付流程； 金额数为0，360SDK运行不定额支付流程。
        bundle.putString(ProtocolKeys.AMOUNT, (price * 100) + "");
        // 必需参数，所购买商品名称，应用指定，建议中文，最大10个中文字。
        bundle.putString(ProtocolKeys.PRODUCT_NAME, productName);
        // 必需参数，购买商品的商品id，应用指定，最大16字符。
        bundle.putString(ProtocolKeys.PRODUCT_ID, "1");
        // 必需参数，应用方提供的支付结果通知uri，最大255字符。360服务器将把支付接口回调给该uri，具体协议请查看文档中，支付结果通知接口–应用服务器提供接口。
        bundle.putString(ProtocolKeys.NOTIFY_URI, "http://unitysdkapi.pyw.cn/ChannelPayCallback/paySuccess/126/adc727a72ac2b15e91779ba43f08b7c4");
        // 必需参数，游戏或应用名称，最大16中文字。
        bundle.putString(ProtocolKeys.APP_NAME, "龙城传奇" );
        bundle.putString(ProtocolKeys.APP_USER_NAME, roleName);
        // 必需参数，应用内的用户id。
        // 若应用内绑定360账号和应用账号，充值不分区服，充到统一的用户账户，各区服角色均可使用，则可用360用户ID最大32字符。
        bundle.putString(ProtocolKeys.APP_USER_ID, roleid);
        // 可选参数，应用扩展信息1，原样返回，最大255字符。
        bundle.putString(ProtocolKeys.APP_EXT_1, extrol);

        // 必需参数，使用360SDK的支付模块:CP可以根据需求选择使用 带有收银台的支付模块 或者 直接调用微信支付模块或者直接调用支付宝支付模块。
        //functionCode 对应三种支付模块：
        //ProtocolConfigs.FUNC_CODE_PAY;//表示 带有360收银台的支付模块。
        //ProtocolConfigs.FUNC_CODE_WEIXIN_PAY;//表示 微信支付模块。
        //ProtocolConfigs.FUNC_CODE_ALI_PAY;//表示支付宝支付模块。
        bundle.putInt(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_PAY);

        // 必需参数，商品数量（demo模拟数据）,游戏内逻辑请传递游戏内真实数据
        bundle.putInt(ProtocolKeys.PRODUCT_COUNT, 1);

        // 必需参数，服务器id（demo模拟数据）,游戏内逻辑请传递游戏内真实数据
        bundle.putString(ProtocolKeys.SERVER_ID, serverId);

        // 必需参数，服务器名称（demo模拟数据）,游戏内逻辑请传递游戏内真实数据
        bundle.putString(ProtocolKeys.SERVER_NAME, serverAreaName);

        // 必需参数，兑换比例（demo模拟数据）（游戏内虚拟币兑换人民币） ,游戏内逻辑请传递游戏内真实数据
        bundle.putInt(ProtocolKeys.EXCHANGE_RATE, 100);

        // 必需参数，货币名称（demo模拟数据）（比如：钻石）,游戏内逻辑请传递游戏内真实数据
        bundle.putString(ProtocolKeys.GAMEMONEY_NAME, "元宝");

        // 必需参数，角色id（demo模拟数据）,游戏内逻辑请传递游戏内真实数据
        bundle.putString(ProtocolKeys.ROLE_ID, roleid);

        // 必需参数，角色名称（demo模拟数据）,游戏内逻辑请传递游戏内真实数据
        bundle.putString(ProtocolKeys.ROLE_NAME, roleName);

        // 必需参数，角色等级（demo模拟数据）,游戏内逻辑请传递游戏内真实数据
        bundle.putInt(ProtocolKeys.ROLE_GRADE, Integer.valueOf(roleLevel));

        // 必需参数，虚拟币余额（demo模拟数据）,游戏内逻辑请传递游戏内真实数据
        bundle.putInt(ProtocolKeys.ROLE_BALANCE, 0);

        // 必需参数，vip等级（demo模拟数据）,游戏内逻辑请传递游戏内真实数据
        bundle.putString(ProtocolKeys.ROLE_VIP, "0");

        // 必需参数，工会名称（demo模拟数据）,游戏内逻辑请传递游戏内真实数据
        bundle.putString(ProtocolKeys.ROLE_USERPARTY, "无");

        Intent intent = new Intent(context, ContainerActivity.class);
        intent.putExtras(bundle);

        // 必需参数，使用360SDK的支付模块:CP可以根据需求选择使用 带有收银台的支付模块 或者 直接调用微信支付模块或者直接调用支付宝支付模块。
        //functionCode 对应三种支付模块：
        //ProtocolConfigs.FUNC_CODE_PAY;//表示 带有360收银台的支付模块。
        //ProtocolConfigs.FUNC_CODE_WEIXIN_PAY;//表示 微信支付模块。
        //ProtocolConfigs.FUNC_CODE_ALI_PAY;//表示支付宝支付模块。
        intent.putExtra(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_PAY);
        // 启动接口
        Matrix.invokeActivity(context, intent, mPayCallback);
    }


    // 支付的回调
    private IDispatcherCallback mPayCallback = new IDispatcherCallback() {

        @Override
        public void onFinished(String data) {
//            Log.d(TAG, "mPayCallback, data is " + data);
            if (TextUtils.isEmpty(data) || paycallback == null) {
                return;
            }

            boolean isCallbackParseOk = false;
            JSONObject jsonRes;
            try {
                jsonRes = new JSONObject(data);
                // error_code 状态码： 0 支付成功， -1 支付取消， 1 支付失败， -2 支付进行中, 4010201和4009911 登录状态已失效，引导用户重新登录
                // error_msg 状态描述
                int errorCode = jsonRes.optInt("error_code");
                isCallbackParseOk = true;
                switch (errorCode) {
                    case 0:
                        PayResult payResult = new PayResult();
                        payResult.setExtension("支付成功");
                        payResult.setOrderID(mOrderID);
                        payResult.setPayResult(true);
                        PluginPayResult pluginPayResult = new PluginPayResult();
                        pluginPayResult.setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
                        pluginPayResult.setPayResult(payResult);
                        paycallback.onExecutionSuccess(pluginPayResult);
                    case -1:
                        paycallback.onExecutionFailure(errorCode, "支付取消");
                        break;
                    default:
                        String errorMsg = jsonRes.optString("error_msg");
                        paycallback.onExecutionFailure(errorCode, errorMsg);
                        break;
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }

        }
    };


    public void logout(final Context context, HashMap params, PYWPluginExecutor.executeCallback callback) {
        this.logoutcallback = callback;
    }


    public void gameExit(final Context context, HashMap params, final PYWPluginExecutor.executeCallback callback) {
        this.gameExitcallback = callback;

        Bundle bundle = new Bundle();

        // 界面相关参数，360SDK界面是否以横屏显示。
        bundle.putBoolean(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, true);

        // 必需参数，使用360SDK的退出模块。
        bundle.putInt(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_QUIT);

        Intent intent = new Intent(context, ContainerActivity.class);
        intent.putExtras(bundle);

        Matrix.invokeActivity(context, intent, getQuitcallback());
    }


    // 退出的回调
    private IDispatcherCallback mQuitCallback;

    private IDispatcherCallback getQuitcallback() {
        if (mQuitCallback == null) {
            mQuitCallback = new IDispatcherCallback() {
                @Override
                public void onFinished(String data) {
                    if (gameExitcallback == null) return;
                    JSONObject json;
                    try {
                        json = new JSONObject(data);
                        int which = json.optInt("which", -1);
                        switch (which) {
                            case 0: // 用户关闭退出界面
                                gameExitcallback.onExecutionSuccess(1);
                                return;
                            default:// 退出游戏
                                gameExitcallback.onExecutionSuccess(0);
                        }
                    } catch (Exception e) {
                        gameExitcallback.onExecutionSuccess(0);
                        e.printStackTrace();
                    }
                }
            };
        }
        return mQuitCallback;
    }


    public void setCallback(Context context, final PYWPluginExecutor.Callback callback) {
        mSDKLogoutCallback = callback;
    }

    public void setLoginCallback(Context context, final PYWPluginExecutor.executeCallback callback) {
        this.logincallback = callback;
    }

    @Override
    public String getName(Context context) {
        return "360";
    }

    @Override
    public int getVersion(Context context) {
        return 0;
    }

    @Override
    public String getCategory(Context context) {
        return "channel";
    }

    @Override
    public void onPause(Context context) {
        if (context instanceof Activity)
            Matrix.onPause((Activity) context);
    }

    @Override
    public void onResume(Context context) {
        if (context instanceof Activity)
            Matrix.onResume((Activity) context);
    }

    @Override
    public void onDestroy(Context context) {
        Matrix.destroy(context);
    }

    @Override
    public void onRestart(Context context) {
        if (context instanceof Activity)
            Matrix.onRestart((Activity) context);
    }

    @Override
    public void onStop(Context context) {
        if (context instanceof Activity)
            Matrix.onStop((Activity) context);
    }

    @Override
    public void onStart(Context context) {
        if (context instanceof Activity)
            Matrix.onStart((Activity) context);
    }

    @Override
    public void onNewIntent(Intent intent) {
        if (mActivity != null)
            Matrix.onNewIntent(mActivity, intent);
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {

    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (mActivity != null)
            Matrix.onActivityResult(mActivity, requestCode, resultCode, data);
    }

}

