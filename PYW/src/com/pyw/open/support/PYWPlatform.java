package com.pyw.open.support;

import java.util.Map;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;

import com.pyw.entity.UserParams;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.IDefListener;
import com.pyw.open.IGameExitListener;
import com.pyw.open.IGetRoleListener;
import com.pyw.open.ILogoutCallback;
import com.pyw.open.ILogoutListener;
import com.pyw.open.IPayListener;
import com.pyw.open.IUserListener;
import com.pyw.open.PYWUser;
import com.pyw.open.PayParams;
import com.pyw.open.PayResult;

/**
 * 兼容朋友玩母包api
 * 
 * @author px
 * 
 */
public class PYWPlatform {

	private static OnSDKEventListener onSDKEventListener;
	private static User mUser;

	/**
	 * 初始化接口
	 * 
	 * @param context
	 */
	public static void initSDK(Application app, Context context,
			OnSDKEventListener listener) {
		if (listener == null) {
			return;
		}
		onSDKEventListener = listener;
		PYWSDKManager.getInstance().init(context, new IDefListener() {

			@Override
			public void onSuccess() {
				sendMsg(ISDKEventCode.CODE_INIT_SUCCESS, null);
				setCallback();
			}

			@Override
			public void onFail(int code, String message) {
				Bundle data = new Bundle();
				data.putString(ISDKEventExtraKey.EXTRA_ERRO, message);
				sendMsg(ISDKEventCode.CODE_INIT_FAIL, data);
			}
		});
	}

	private static void setCallback() {
		PYWSDKManager.getInstance().setLogoutCallback(new ILogoutCallback() {
			@Override
			public void onLogout() {
				sendMsg(ISDKEventCode.CODE_LOGOUT, null);
			}
		});

	}

	private static void sendMsg(int code, Bundle data) {
		if (onSDKEventListener != null) {
			onSDKEventListener.onEvent(code, data);
		}
	}

	/**
	 * 登录接口
	 */
	public static void openLogin(Activity activity) {
		PYWSDKManager.getInstance().Login(null, new IUserListener() {

			@Override
			public void onLoginSuccess(PYWUser user) {
				User u = new User();
				u.setUserId(user.getUserId());
				u.setToken(user.getToken());
				Bundle b = new Bundle();
				b.putSerializable(ISDKEventExtraKey.EXTRA_USER, u);
				mUser = u;
				sendMsg(ISDKEventCode.CODE_LOGIN_SUCCESS, b);
			}

			@Override
			public void onLoginFail(int code, String message) {
				Bundle b = new Bundle();
				b.putString(ISDKEventExtraKey.EXTRA_ERRO, message);
				sendMsg(ISDKEventCode.CODE_LOGIN_FAILD, b);
			}

		});
	}

	/**
	 * 调起悬浮窗接口
	 */
	public static void showFloatView() {
		PYWSDKManager.getInstance().showFloatView();
	}

	/**
	 * 隐藏悬浮窗接口
	 */
	public static void hideFloatView() {
		PYWSDKManager.getInstance().hideFloatView();
	}

	/**
	 * 支付接口
	 */
	public static void openChargeCenter(Activity activity,
			Map<String, Object> params, boolean isAnyAmount) {

		String productId = params.get("product_id") + "";
		String price = params.get("pay_money") + "";
		final String mOrderID = params.get("order_id") + "";
		String productName = params.get("product_name") + "";
		String extension = params.get("product_extra") + "";
		String charge_type = isAnyAmount ? "2" : "1";
		String roleName = params.get("role_name") + "";
		String service_area = params.get("service_area") + "";
		PayParams bean = new PayParams();
		bean.setChargeType(charge_type);
		if(!TextUtils.isEmpty(extension))
			bean.setExtension(extension);
		bean.setRoleName(roleName);
		bean.setServerName(service_area);
		bean.setOrderID(mOrderID);
		bean.setPrice(Integer.valueOf(price));
		bean.setProductId(productId);
		bean.setProductName(productName);
		PYWSDKManager.getInstance().Pay(bean, new IPayListener() {

			@Override
			public void onPaySuccess(PayResult result) {
				Bundle b = new Bundle();
				b.putString(ISDKEventExtraKey.EXTRA_ORDERID,
						result.getOrderID());
				if(!TextUtils.isEmpty(result.getExtension()))
				b.putString(ISDKEventExtraKey.EXTRA_APPDATA,
						result.getExtension());
				sendMsg(ISDKEventCode.CODE_CHARGE_SUCCESS, b);
			}

			@Override
			public void onPayFail(int code, String message) {
				Bundle b = new Bundle();
				b.putString(ISDKEventExtraKey.EXTRA_ORDERID, message);
				sendMsg(ISDKEventCode.CODE_CHARGE_FAIL, b);
			}
		});
	}

	/**
	 * 登出接口
	 */
	public static void logout() {
		PYWSDKManager.getInstance().logout(null, new ILogoutListener() {

			@Override
			public void success() {
				sendMsg(ISDKEventCode.CODE_LOGOUT, null);
			}

			@Override
			public void fail(int code) {
				// TODO Auto-generated method stub

			}
		});
	}

	/**
	 * 退出游戏接口
	 */
	public static void exitGame(Activity activity) {
		PYWSDKManager.getInstance().gameExit(null, new IGameExitListener() {

			@Override
			public void onExitError(int code, String message) {
				// TODO Auto-generated method stub

			}

			@Override
			public void onExit() {
				sendMsg(ISDKEventCode.CODE_EXIT, null);
			}

			@Override
			public void onCancel() {
				// TODO Auto-generated method stub

			}
		});
	}
	
	/**
	 * 退出游戏接口
	 */
	public static void exit(Activity activity) {
		PYWSDKManager.getInstance().gameExit(null, new IGameExitListener() {

			@Override
			public void onExitError(int code, String message) {
				// TODO Auto-generated method stub

			}

			@Override
			public void onExit() {
				sendMsg(ISDKEventCode.CODE_EXIT, null);
			}

			@Override
			public void onCancel() {
				// TODO Auto-generated method stub

			}
		});
	}


	public static void getRoleMessage(Activity activity,
			Map<String, Object> params) {
		UserParams bean = new UserParams();
		String roleID;
		if(params.get("roleid") != null){
			roleID = params.get("roleid") + "";
		}else{
			roleID = params.get("roleId") + "";
		}
		bean.setRoleid(roleID);
		bean.setRoleName(params.get("roleName") + "");
		bean.setRoleLevel(params.get("roleLevel") + "");
		bean.setServerArea(params.get("serverArea") + "");
		bean.setServerAreaName(params.get("serverAreaName") + "");
		bean.setRoleCreateTime(params.get("roleCreateTime") + "");

		PYWSDKManager.getInstance().getRoleMessage(bean,
				new IGetRoleListener() {

					@Override
					public void onSuccess() {
						sendMsg(ISDKEventCode.CODE_GET_ROLE_SUCCESS, null);
					}

					@Override
					public void onFail(int code, String message) {
						sendMsg(ISDKEventCode.CODE_GET_ROLE_FAIL, null);
					}
				});
	}

	/**
	 * 获取当前登录的用户信息，已经把密码信息过滤掉
	 */
	public static User getCurrentUser() {
		return mUser;
	}

	/**
	 * 生命周期接口
	 */

	public static void onPause() {
		PYWSDKManager.getInstance().onPause();
	}

	public static void onResume() {
		PYWSDKManager.getInstance().onResume();
	}

	public static void onDestroy() {
		PYWSDKManager.getInstance().onDestroy();
	}

	public static void onRestart() {
		PYWSDKManager.getInstance().onRestart();
	}

	public static void onStop() {
		PYWSDKManager.getInstance().onStop();
	}

	public static void onStart() {
		PYWSDKManager.getInstance().onStart();
	}

	public static void newIntent(Intent intent) {
		PYWSDKManager.getInstance().onNewIntent(intent);
	}

	public static void configurationChanged(Configuration newConfig) {
		PYWSDKManager.getInstance().onConfigurationChanged(newConfig);
	}

	public static void onActivityResult(int requestCode, int resultCode,
			Intent data) {
		PYWSDKManager.getInstance().onActivityResult(requestCode, resultCode,
				data);
	}

}
