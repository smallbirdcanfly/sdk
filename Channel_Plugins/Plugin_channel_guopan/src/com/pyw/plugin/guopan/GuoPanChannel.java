package com.pyw.plugin.guopan;

import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.flamingo.sdk.access.GPApiFactory;
import com.flamingo.sdk.access.GPExitResult;
import com.flamingo.sdk.access.GPPayResult;
import com.flamingo.sdk.access.GPSDKGamePayment;
import com.flamingo.sdk.access.GPSDKInitResult;
import com.flamingo.sdk.access.GPSDKPlayerInfo;
import com.flamingo.sdk.access.GPUploadPlayerInfoResult;
import com.flamingo.sdk.access.GPUserResult;
import com.flamingo.sdk.access.IGPExitObsv;
import com.flamingo.sdk.access.IGPPayObsv;
import com.flamingo.sdk.access.IGPSDKInitObsv;
import com.flamingo.sdk.access.IGPUploadPlayerInfoObsv;
import com.flamingo.sdk.access.IGPUserObsv;
import com.pyw.entity.UserParams;
import com.pyw.open.PayResult;
import com.pyw.plugin.PYWPlugin;
import com.pyw.plugin.PYWPluginExecutor;
import com.pyw.plugin.PYWPluginExecutor.Callback;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

public class GuoPanChannel extends PYWPlugin{
	public static final String TAG = "GuoPanChannel";
	private String mOrderID;
	private HashMap<String, Object> mSdkParams;
	private executeCallback initcallback,playerInfocallback,paycallback,logincall;
	private Context context;
	@Override
	public void onCreate(Context context) {
		this.context=context;
	}

	/**
	 * 初始化回调接口
	 */
	private IGPSDKInitObsv mInitObsv = new IGPSDKInitObsv() {
		@Override
		public void onInitFinish(GPSDKInitResult initResult) {

			switch (initResult.mInitErrCode) {
			case GPSDKInitResult.GPInitErrorCodeConfig:
				if(null!=initcallback){
					initcallback.onExecutionFailure(GPSDKInitResult.GPInitErrorCodeConfig, "初始化配置错误");
				}
				retryInit();
				break;
			case GPSDKInitResult.GPInitErrorCodeNeedUpdate:
				if(null!=initcallback){
					initcallback.onExecutionSuccess(null);
				}
				break;
			case GPSDKInitResult.GPInitErrorCodeNet:
				if(null!=initcallback){
					initcallback.onExecutionFailure(GPSDKInitResult.GPInitErrorCodeNet, "初始化网络错误");
				}
				retryInit();
				break;
			case GPSDKInitResult.GPInitErrorCodeNone:
				if(null!=initcallback){
					initcallback.onExecutionSuccess(null);
				}
				break;
			}
		}
	};


	int mInitCount;
	public void retryInit() {
		if (mInitCount >= 3) {
			showToast("初始化失败，请检查网络");
			return;
		}
		mInitCount++;
		try {
			String appid = (String)mSdkParams.get("GP_APPID");
			String appkey = (String)mSdkParams.get("GP_APPKEY");
			GPApiFactory.getGPApi().initSdk(context, appid, appkey, mInitObsv);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void showToast(String string) {
		Toast.makeText(context, string, 1).show();
	}


	public void init(final Context context, HashMap params, executeCallback callback){
		
		try {
			Log.v(TAG, "guopan init params: " + params);
			mSdkParams = params;
			String appid = mSdkParams.get("GP_APPID") + "";
			String appkey = mSdkParams.get("GP_APPKEY") + "";
			Log.v(TAG, "appid: " + appid);
			GPApiFactory.getGPApi().initSdk(context, appid , appkey, mInitObsv);
//			GPApiFactory.getGPApi().initSdk(context, "101185"/*mSdkParams.getString("GP_APPID")*/, "04USV8I2TKI1YCQB"/*mSdkParams.getString("GP_APPKEY")*/, mInitObsv);
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.initcallback=callback;
	}


	/**
	 * 登录回调接口
	 */
	private IGPUserObsv mUserObsv = new IGPUserObsv() {
		@Override
		public void onFinish(final GPUserResult result) {
			switch (result.mErrCode) {
			case GPUserResult.USER_RESULT_LOGIN_FAIL:
				logincall.onExecutionFailure(GPUserResult.USER_RESULT_LOGIN_FAIL, "登陆录失败");
				break;
			case GPUserResult.USER_RESULT_LOGIN_SUCC:

				JSONObject jsonObject=new JSONObject();
				UserParams user = new UserParams();
				try {
					user.setUsername(GPApiFactory.getGPApi().getAccountName());
					user.setSdkUserID(GPApiFactory.getGPApi().getLoginUin());
					user.setToken(GPApiFactory.getGPApi().getLoginToken());
					user.setSuc(true);
//					jsonObject.put("uin", GPApiFactory.getGPApi().getLoginUin());
//					jsonObject.put("token", GPApiFactory.getGPApi().getLoginToken());
//					jsonObject.put("username", GPApiFactory.getGPApi().getAccountName());
				} catch (Exception e) {
					logincall.onExecutionFailure(0, "");
				}

//				logincall.onExecutionSuccess(jsonObject.toString());
				logincall.onExecutionSuccess(user);

				break;
			}
		}
	};


	public void login(final Context context, HashMap<String, Object> params, PYWPluginExecutor.executeCallback callback){
		this.logincall=callback;
		this.context=context;
		GPApiFactory.getGPApi().login(context, mUserObsv);
	}

	public void switchLogin(Context context, HashMap params, executeCallback callback) {
		this.logincall=callback;
		this.context=context;
		GPApiFactory.getGPApi().login(context, mUserObsv);
	}



	public void pay(final Context context, HashMap params, final executeCallback callback) {
		this.paycallback=callback;
		
		
		String time = params.get("time") + "";
		String productId = params.get("productId") + "";
		String buyNum = params.get("buyNum") + "";
		String price = params.get("price") + "";
		mOrderID = params.get("orderID") + "";
		String productName = params.get("productName") + "";
		String productDesc = params.get("productDesc") + "";
		String serverId = params.get("serverId") + "";
		String serverName = params.get("serverName") + "";
		String extension = params.get("extension") + "";
		String icon = params.get("icon") + "";
		String roleId = params.get("roleId") + "";
		Double d=  Double.parseDouble(price);

		if(d<1){
			Toast.makeText(context, "金额不能少于0.01元", 1).show();
			return;
		}

		if(TextUtils.isEmpty(mOrderID) || TextUtils.isEmpty(productName) || TextUtils.isEmpty(price)){

			callback.onExecutionFailure(0, "pay params error!!!");
		}

		
		GPSDKGamePayment payParam = new GPSDKGamePayment();
		payParam.mItemName =productName; // 订单商品的名称

		payParam.mPaymentDes = productDesc;// 订单的介绍
		
		payParam.mItemPrice = (float) (d/100d);// 订单的价格（以元为单位）

		try {
			payParam.mItemCount = Integer.parseInt(buyNum);
		} catch (Exception e) {
			e.printStackTrace();
		}

		payParam.mCurrentActivity =(Activity) context;// 用户当前的activity

		payParam.mSerialNumber =mOrderID;// 订单号，这里用时间代替（用户需填写订单的订单号）

		payParam.mItemId =productId;// 商品编号ID

		payParam.mReserved =mOrderID;// 透传字段
		GPApiFactory.getGPApi().buy(payParam, mPayObsv);
		
	}

	
	 /**
     * 支付回调接口
     */
    private IGPPayObsv mPayObsv = new IGPPayObsv() {
        @Override
        public void onPayFinish(GPPayResult payResult) {
            if (payResult == null) {
                return;
            }
            showPayResult(payResult);
        }
    };
	
    void showPayResult(final GPPayResult result) {
		PayResult payResult=new PayResult();
		String tips = "";
		switch (result.mErrCode) {
		case GPPayResult.GPSDKPayResultCodeSucceed:
		case GPPayResult.GPSDKPayResultCodePayBackground:
		case GPPayResult.GPSDKPayResultCodeBackgroundSucceed:
			payResult.setExtension("支付成功");

			payResult.setOrderID(mOrderID);
			payResult.setPayResult(true);
			paycallback.onExecutionSuccess(payResult);

			break;
		case GPPayResult.GPSDKPayResultCodeBackgroundTimeOut:
		case GPPayResult.GPSDKPayResultCodeCancel:
		case GPPayResult.GPSDKPayResultCodeNotEnough:
		case GPPayResult.GPSDKPayResultCodeOtherError:
		case GPPayResult.GPSDKPayResultCodePayForbidden:
		case GPPayResult.GPSDKPayResultCodePayHadFinished:
		case GPPayResult.GPSDKPayResultCodeServerError:
		case GPPayResult.GPSDKPayResultNotLogined:
		case GPPayResult.GPSDKPayResultParamWrong:
		case GPPayResult.GPSDKPayResultCodeLoginOutofDate:
			paycallback.onExecutionFailure(1, "支付失败");
			break;
		default:
			paycallback.onExecutionFailure(1, "未知错误");
			break;
		}
	}
    

	public void setCallback(Context context, final Callback callback){

	}

	public void logout(Context context, HashMap params, executeCallback callback) {
		GPApiFactory.getGPApi().logout();
		callback.onExecutionSuccess(0);
	}

	public void gameExit(final Context context, HashMap params, final executeCallback callback) {
		//TODO 调用退出
		GPApiFactory.getGPApi().exit(new IGPExitObsv() {
			@Override
			public void onExitFinish(GPExitResult exitResult) {
				switch (exitResult.mResultCode) {
				case GPExitResult.GPSDKExitResultCodeError:
					callback.onExecutionFailure(GPExitResult.GPSDKExitResultCodeError, "");
					break;
				case GPExitResult.GPSDKExitResultCodeExitGame:
					callback.onExecutionSuccess(0);
					break;
				case GPExitResult.GPSDKExitResultCodeCloseWindow:
					callback.onExecutionSuccess(1);
					break;
				}
			}
		});

	}

	public String getName(Context context) {
		return "guopan";
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

	}

	@Override
	public void onResume(Context context) {
	}



	@Override
	public void onDestroy(Context context) {

	}

	@Override
	public void onRestart(Context context) {
		Log.d("PX","onRestart");
	}

	@Override
	public void onStart(Context context) {
		Log.d("PX","onStart");
	}

	@Override
	public void onNewIntent(Intent intent) {
		Log.d("PX","onNewIntent");
	}

	@Override
	public void onConfigurationChanged(Configuration newConfig) {
		Log.d("PX","onConfigurationChanged");
	}

	@Override
	public void onStop(Context context) {
		
	}

	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		// TODO Auto-generated method stub
		
	}
	
}
