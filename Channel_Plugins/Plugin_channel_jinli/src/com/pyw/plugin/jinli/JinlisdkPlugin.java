package com.pyw.plugin.jinli;


import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;

import com.gionee.gamesdk.floatwindow.AccountInfo;
import com.gionee.gamesdk.floatwindow.GameOrder;
import com.gionee.gamesdk.floatwindow.GamePayCallBack;
import com.gionee.gamesdk.floatwindow.GamePayManager;
import com.gionee.gamesdk.floatwindow.GamePlatform;
import com.gionee.gamesdk.floatwindow.QuitGameCallback;
import com.gionee.gsp.GnEFloatingBoxPositionModel;
import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pyw.entity.PluginPayResult;
import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.ILogoutCallback;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

import java.util.HashMap;

/*
 * game_key :d8e7e5f0  渠道号：130  渠道名称：龙城传奇-金立-安卓
 * @author pengpx
 */
public class JinlisdkPlugin extends PYWPlugin implements ILogoutCallback {

    private Context context;
    private PYWPluginExecutor.Callback sdklogoutcallback;
    private executeCallback initcallback, paycallback, logincallback,
            logoutcallback, gameExitcallback;
    private String mOrderID, serverId;
    private boolean hasInit = false;

    @Override
    public void onCreate(Context context) {
    }

    @Override
    public void onLogout() {
        if (sdklogoutcallback == null)
            return;
        sdklogoutcallback.onCallback(null);
    }

    public void init(Context context, final HashMap params,
                     executeCallback callback) {
        this.initcallback = callback;
        this.context = context;
        // 设置悬浮窗的默认位置(如果不设置，则默认左上角)
        GamePlatform.setFloatingBoxOriginPosition(GnEFloatingBoxPositionModel.RIGHT_TOP);
        if (context instanceof Activity) {
            /**
             * 开发者重点关注部分
             * 6.0以上系统需要手动申请悬浮窗权限
             * 该方法需要最好与登录帐号分别在2个不同的页面调用，最好是在启动游戏的时候调用。
             * 因SDK demo没有启动页面，所以加在此处
             */
            GamePlatform.requestFloatWindowsPermission((Activity) context);
            initcallback.onExecutionSuccess(null);
        } else {
            initcallback.onExecutionFailure(1, null);
        }
        hasInit = true;
    }

    public void getRoleMessage(final Context context, HashMap params,
                               final executeCallback callback) {
        serverId = TextUtils.isEmpty(params.get("serverArea") + "") ? ""
                : (params.get("serverArea") + "");
    }

    public void login(final Context context, HashMap<String, Object> params,
                      PYWPluginExecutor.executeCallback callback) {
        this.logincallback = callback;
        this.context = context;
        GamePlatform.loginAccount((Activity) context, true, new GamePlatform.LoginListener() {

            @Override
            public void onSuccess(AccountInfo accountInfo) {
                // 登录成功，处理自己的业务。
                // 获取playerId
                String sPlayerId = accountInfo.mPlayerId;
                // 获取amigoToken
                String amigoToken = accountInfo.mToken;
                // 获取用户ID
                String userId = accountInfo.mUserId;

                LogUtil.d("jinshan--loginSuccess---->>" + "登陆成功 userId=" + userId
                        + "  token=" + amigoToken);
                UserParams userParams = new UserParams();
                userParams.setToken(amigoToken);
                userParams.setSdkUserID(userId);
                userParams.setSuc(true);
                logincallback.onExecutionSuccess(userParams);
            }

            @Override
            public void onError(Object e) {
                LogUtil.d("jinshan--loginError---->>" + " code=" + 1);
                logincallback.onExecutionFailure(0, "登陆失败 ");
            }

            @Override
            public void onCancel() {
                LogUtil.d("jinshan--loginCancel---->>" + " code=" + 1);
                logincallback.onExecutionFailure(0, "登陆失败 ");
            }
        });

    }

    public void setExitGame(final Context context, HashMap params,
                            final executeCallback callback) {
        this.gameExitcallback = callback;
        this.context = context;
    }

    @SuppressWarnings("deprecation")
    public void pay(final Context context, HashMap params,
                    final executeCallback callback) {
        this.paycallback = callback;
        this.context = context;

        String private_key = "";
        GamePayManager.getInstance().pay((Activity) context, getOrder(params), private_key);
    }

    public GameOrder getOrder(HashMap params) {
        String productName = params.get("productName") + "";
        if (!TextUtils.isEmpty(productName) && productName.contains("充值")) {
            productName = productName.replace("充值", "");
        }

        mOrderID = params.get("orderID") + "";
        String amount = params.get("price") + "";
        String extrol =params.get("channel_order_info") + "";

        /**
         * 必填参数
         */
        GameOrder gameOrder = new GameOrder();
        //没有透传字段，所以放订单号里面
        gameOrder.mOutOrderNo = extrol;
        gameOrder.mSubject = productName;
        gameOrder.mTotalFee = amount;
        gameOrder.mSubmitTime = GameOrder.getSubmitTime();
        gameOrder.mGamePayCallback = new GamePayCallBack() {
            @Override
            public void onCreateOrderSuccess(String s) {
                /**
                 * 创建订单成功
                 * 若回调该接口，则创建订单成功以后会自动调用支付接口，接入者不需要再次调用支付
                 */
            }

            @Override
            public void onPaySuccess() {
                LogUtil.d("jinshan--paySuccessed---->>");
                PayResult payResult = new PayResult();
                payResult.setExtension("支付成功");
                payResult.setOrderID(mOrderID);
                payResult.setPayResult(true);
                PluginPayResult pluginPayResult = new PluginPayResult();
                pluginPayResult
                        .setResultMode(PluginPayResult.MODE_RESPONSE);// 设置支付返回模式
                pluginPayResult.setPayResult(payResult);
                paycallback.onExecutionSuccess(pluginPayResult);
            }

            @Override
            public void onPayFail(Exception e) {
                /**
                 * 创建订单失败或者支付失败
                 */
                paycallback.onExecutionFailure(1, "pay error  ="
                        + 1);
                LogUtil.d("jinshan--PAY FAIL---->>");
            }
        };
        gameOrder.mNotifyURL = "";
        return gameOrder;
    }

    public void logout(final Context context, HashMap params,
                       executeCallback callback) {
        this.logoutcallback = callback;
    }

    public void gameExit(final Context context, HashMap params,
                         final executeCallback callback) {
        this.gameExitcallback = callback;
        this.context = context;
        if (!(context instanceof Activity)) {
            return;
        }
        GamePlatform.quitGame((Activity) context, new QuitGameCallback() {
            @Override
            public void onQuit() {
                if (gameExitcallback != null) {
                    gameExitcallback.onExecutionSuccess(0);
                }
            }

            @Override
            public void onCancel() {
            }
        });
    }

    public void setCallback(Context context, final Callback callback) {
        this.context = context;
        this.sdklogoutcallback = callback;
    }

    public void setLoginCallback(Context context, final executeCallback callback) {
        this.context = context;
        this.logincallback = callback;
    }

    @Override
    public String getName(Context context) {
        return "jinshan";
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
        if (hasInit) {
            if (context instanceof Activity) {
                GamePlatform.setFloatingBoxOriginPosition(GnEFloatingBoxPositionModel.RIGHT_TOP);
            }
        }
    }

    @Override
    public void onResume(Context context) {
        if (hasInit) {
            if (context instanceof Activity) {
                GamePlatform.setFloatingBoxOriginPosition(GnEFloatingBoxPositionModel.RIGHT_TOP);
            }
        }
    }

    @Override
    public void onDestroy(Context context) {
    }

    @Override
    public void onRestart(Context context) {
    }

    @Override
    public void onStop(Context context) {
    }

    @Override
    public void onStart(Context context) {
    }

    @Override
    public void onNewIntent(Intent intent) {

    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {

    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        /**
         * 该处是为了提示权限赋予成功
         */
        if (context instanceof Activity) {
            GamePlatform.onActivityResult((Activity) context, requestCode, resultCode, data);
        }
    }

}
