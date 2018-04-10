
package com.pengyouwan.sdk.protocol;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONObject;

import android.text.TextUtils;
import android.util.Log;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.open.RoleConstant;
import com.pengyouwan.sdk.utils.AppUtil;

/**
 * 描述:数据采集请求
 * 
 * @author px
 * @since 2017-7-10 下午5:49:07
 */
public abstract class CollectDataTask extends AbstractResponseCallback {

    private CollectResponse responseObj;

    public void request(Map<String, Object> data) throws AppException {
        HashMap<String, String> params = new HashMap<String, String>();
        String gameId = InitManager.getInstance().getGameId();
        String gameKey = SDKControler.getGameKey();
        SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
        String roleId = data.get(RoleConstant.ROLEID) + "";
        String roleName = data.get(RoleConstant.ROLENAME) + "";
        String roleLevel = data.get(RoleConstant.ROLELEVEL) + "";
        String serverArea = data.get(RoleConstant.SERVERAREA) + "";
        String serverAreaName = data.get(RoleConstant.SERVERAREANAME) + "";
        params.put("game_id", gameId);
        params.put("gamekey", gameKey);
        params.put("account", user.getUserName());
        params.put("tid", AppUtil.getTid());
        if(!TextUtils.isEmpty(roleId)){
        	params.put(RoleConstant.ROLEID, URLEncoder.encode(roleId));
        }
        if(!TextUtils.isEmpty(roleName)){
        	params.put(RoleConstant.ROLENAME, URLEncoder.encode(roleName));
        }
        if(!TextUtils.isEmpty(roleLevel)){
        	params.put(RoleConstant.ROLELEVEL, URLEncoder.encode(roleLevel));
        }
        if(!TextUtils.isEmpty(serverArea)){
        	params.put(RoleConstant.SERVERAREA, URLEncoder.encode(serverArea));
        }
        if(!TextUtils.isEmpty(serverAreaName)){
        	params.put(RoleConstant.SERVERAREANAME, URLEncoder.encode(serverAreaName));
        }
        // 生成响应类
        responseObj = new CollectResponse();
        // 执行请求
        RequestNetUtil.getInstance().request(params, com.pengyouwan.sdk.net.UrlManager.URL_DATA_COLLECT,
                listener, errorListener);
    }

    // 请求成功
    private Listener<String> listener = new Listener<String>() {

        public void onResponse(String response) {
            try {
                JSONObject jobj = new JSONObject(response);
                int ack = jobj.getInt("ack");
                if (ack == 200) {
                    responseObj.setOk(true);
                } else {
                    responseObj.setErrorMsg(jobj.getString("msg"));
                }
            } catch (Exception e) {
                responseObj.setErrorMsg("数据解析异常");
                e.printStackTrace();
            } finally {
                callback(responseObj);
            }

        }
    };

    // 请求失败
    private ErrorListener errorListener = new ErrorListener() {

        public void onErrorResponse(VolleyError error) {
            responseObj.setErrorMsg("网络错误，请求失败");
            if (error != null) {
                if (error.networkResponse != null) {
                    responseObj.setErrorMsg("error:" + error.toString());
                }
            }
            callback(responseObj);
        }

    };

    public class CollectResponse extends HttpResponse {
        private static final long serialVersionUID = 1L;


        private String errorMsg;

        public void setErrorMsg(String str) {
            errorMsg = str;
        }

        public String getErrorMsg() {
            return errorMsg;
        }

    }

}
