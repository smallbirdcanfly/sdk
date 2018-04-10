
package com.pengyouwan.sdk.protocol;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

import android.content.Context;
import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.sdk.db.UserOperator;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.BindPhoneTipsDialogUtil;
import com.pengyouwan.sdk.utils.StaticsHelper;

/**
 * Copyright (C) pengpuxin Inc.All Rights Reserved.
 * FileName：com.pengyouwan.sdk.protocol.
 *
 * @Description：初始化任务类,init接口 History： 版本号 作者 日期 简要介绍相关操作 2.1.3 pengpuxin
 * 2016-7-2 Create
 */
public abstract class InitTask extends AbstractResponseCallback {

    private InitResponse initResponse;

    public void request(String gameKey, Context context) throws AppException {
        HashMap<String, String> params = new HashMap<String, String>();
        params.put("gamekey", gameKey);
        params.put("tid", AppUtil.getTid());
        initResponse = new InitResponse();
        // 执行请求
        RequestNetUtil.getInstance().request(params, com.pengyouwan.sdk.net.UrlManager.URL_INIT,
                listener, errorListener);
    }

    /**
     * 请求成功
     */
    private Listener<String> listener = new Listener<String>() {

        public void onResponse(String response) {
            try {
                JSONObject jobj = new JSONObject(response);
                int ack = jobj.getInt("ack");
                if (ack == 200) {
                    JSONObject data = jobj.optJSONObject("data");
                    if (data != null) {
                        //解析上报功能参数值
                        boolean isOpen = (data.optInt("collect_open") == 1);
                        String url = data.optString("collect_to_where");
                        int period = data.optInt("collect_interval");
                        StaticsHelper.getInstance().init(isOpen, url, period);
                        // 解析支付方式
                        JSONObject obj = data.optJSONObject("payment");
                        StringBuilder sb = new StringBuilder();
                        sb.append(obj.getBoolean("unipay") ? "7" : ""); // 7:银联
                        sb.append(obj.getBoolean("alipay") ? "3" : ""); // 3:支付宝
                        if (obj.has("wechatpay")) {
                            sb.append(obj.getBoolean("wechatpay") ? "2" : ""); // 2:微信原生支付
                        }
                        // 把服务器返回的弹窗周期保存到本地
                        BindPhoneTipsDialogUtil.setIsToShowDialog(data.optString("dialog_time"));

                        // 存储到全局对象
                        InitManager.getInstance().setApisecret(data.optString("apisecret"));
                        InitManager.getInstance().setGameId(data.optString("gameid"));
                        // 是否可以跳转链接 1-可按，0-不可按
                        InitManager.getInstance().setClickable(
                                data.getInt("clickable_exit_dialog_url") == 1);
                        // 是否有删除账号按钮 1-有 0-无
                        InitManager.getInstance().setDelable(
                                data.getInt("del_button") == 1);
                        // 是否显示快速注册 1-有 0-无
                        if (data.has("fast_reg")) {
                            InitManager.getInstance().setFastFlag(data.getInt("fast_reg"));
                        }
                        // 存放退出框相关链接
                        InitManager.getInstance().setExitShowUrl(data.optString("exit_dialog_url"));


                        InitManager.getInstance().setExitGoUrl(
                                data.optString("exit_dialog_click_url"));
                        InitManager.getInstance().setInit(true);
                        // 强更地址
                        if (data.has("setup_file")) {
                            SDKControler.setUpdateUrl(data.getString("setup_file"));
                        }
                        SDKControler.getSDKConfig().setPayment(sb.toString());
                        // 解析游戏账号和通行证列表
                        JSONArray array = data.optJSONArray("game_account");
                        List<SDKUser> sdkUsersLists = new ArrayList<SDKUser>();
                        if (array != null) {
                            int arraySize = array.length();
                            for (int i = arraySize - 1; i >= 0; i--) {
                                JSONObject obj2 = (JSONObject) array.get(i);
                                SDKUser account = new SDKUser();
                                account.setUserName(obj2.optString("username"));
                                sdkUsersLists.add(account);
                            }
                            if (UserOperator.getInstance().getUserInfos() == null
                                    || UserOperator.getInstance().getUserInfos().size() == 0) {
                                // 先判断本地是否已缓存过通行证和账号列表数据，无则插入全部
                                UserOperator.getInstance().insertOrUpdateUserInfos(sdkUsersLists);
                            }
                            // 回调成功
                            initResponse.setOk(true);
                        }
                    } else {
                        // 回调失败提示msg
                        initResponse.setMsg(jobj.optString("msg"));
                    }
                } else {
                    // 回调失败提示msg
                    initResponse.setMsg(jobj.getString("msg"));
                }
            } catch (Exception e) {
                e.printStackTrace();
                initResponse.setMsg("数据解析异常");
            } finally {
                callback(initResponse);
            }
        }
    };

    /**
     * 请求失败
     */
    private ErrorListener errorListener = new ErrorListener() {

        public void onErrorResponse(VolleyError error) {
            initResponse.setMsg("网络错误，初始化失败");
            if (error != null) {
                if (error.networkResponse != null) {
                    initResponse.setMsg("error:" + error.toString());
                }
            }
            callback(initResponse);
        }

    };

    public class InitResponse extends HttpResponse {
        private static final long serialVersionUID = 1L;

        private String msg;

        public void setMsg(String str) {
            msg = str;
        }

        public String getMsg() {
            return msg;
        }

    }

}
