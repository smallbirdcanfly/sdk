package com.pengyouwan.sdk.manager;

import org.json.JSONObject;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;

import com.pengyouwan.sdk.activity.ChargeCenterActivity;
import com.pengyouwan.sdk.activity.H5Activity;
import com.pengyouwan.sdk.entity.DynamicUrl;

/**
 * 描述:支付宝支付管理类
 * 
 * @author Hanson
 * @version 创建时间：2016-6-30 下午3:16:33
 */
public class PayManager {

	private static final int SDK_PAY_FLAG = 1;

	// private static String wxUrl =
	// "http://xp.xpeng.com:8081/pay/wx_checkout";
	private static String wxUrl = "http://pyw.cn/pay/wx_checkout";

	private static AliPayCallback mAliPayCallback;

	static Handler mHandler = new Handler(Looper.getMainLooper()) {
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case SDK_PAY_FLAG:
				handleAlipay(msg);
				break;
			}
		}
	};

	private static void handleAlipay(Message msg) {
		String resultStatus = null;
		String str = (String) msg.obj;
		if (str == null)
			return;
		String[] resultParams = (str).split(";");
		for (String resultParam : resultParams) {
			if (resultParam.startsWith("resultStatus")) {
				resultStatus = getValue(resultParam, "resultStatus");
				break;
			}
		}
		// 判断resultStatus 为“9000”则代表支付成功，具体状态码代表含义可参考接口文档
		if (TextUtils.equals(resultStatus, "9000")) {
			mAliPayCallback.onSuccess();
		} else {
			// 判断resultStatus 为非“9000”则代表可能支付失败
			// “8000”代表支付结果因为支付渠道原因或者系统原因还在等待支付结果确认，最终交易是否成功以服务端异步通知为准（小概率状态）
			if (TextUtils.equals(resultStatus, "8000")) {
				mAliPayCallback.onConfirm();

			} else {
				// 其他值就可以判断为支付失败，包括用户主动取消支付，或者系统返回的错误
				mAliPayCallback.onFail();
			}
		}
	};

	// 解析ali返回信息
	private static String getValue(String content, String key) {
		String prefix = key + "={";
		return content.substring(content.indexOf(prefix) + prefix.length(), content.lastIndexOf("}"));
	}

	public interface AliPayCallback {
		/**
		 * 支付成功
		 */
		void onSuccess();

		/**
		 * 支付失败
		 */
		void onFail();

		/**
		 * 支付确认中
		 */
		void onConfirm();
	}

	/**
	 * call alipay sdk pay. 调用SDK支付
	 */
	// public static void payByAli(final Activity activity,
	// final String orderInfo, AliPayCallback callback)
	//
	// throws AppException {
	// mAliPayCallback = callback;
	// Runnable payRunnable = new Runnable() {
	//
	// @Override
	// public void run() {
	// // 构造PayTask 对象
	// PayTask alipay = new PayTask(activity);
	//
	// // 调用支付接口，获取支付结果
	// String result = alipay.pay(orderInfo);
	// Message msg = new Message();
	// msg.what = SDK_PAY_FLAG;
	// msg.obj = result;
	// mHandler.sendMessage(msg);
	// }
	// };
	//
	// // 必须异步调用
	// Thread payThread = new Thread(payRunnable);
	// payThread.start();
	// }

	public static final int PLUGIN_NOT_INSTALLED = -1;

	public static final int PLUGIN_NEED_UPGRADE = 2;

	/**
	 * 银联支付 需配合UnioActiviyResult获取支付结果
	 * 
	 * @param activity
	 * @param tn
	 */
	// public static void payByUnio(final Activity activity, String tn) {
	// UPPayAssistEx.startPayByJAR(activity, PayActivity.class, null, null,
	// tn, "00");
	// }

	// private static IWXAPI iwxapi;
	//
	// /**
	// * 微信支付
	// *
	// * @param activity
	// * @param order
	// */
	// public static void payByWeiXin(Activity activity, WeiXinPayBean order) {
	// String appId = SDKControler.getWxAppId();
	// if (appId == null) {
	// ToastUtil.showMsg("AppId不能为空");
	// } else {
	// iwxapi = WXAPIFactory.createWXAPI(activity, appId, true);
	// iwxapi.registerApp(appId);
	// if (!iwxapi.isWXAppInstalled()) {
	// ToastUtil.showMsg("没有安装微信");
	// return;
	// }
	// if (!iwxapi.isWXAppSupportAPI()) {
	// ToastUtil.showMsg("当前版本不支持支付功能");
	// return;
	// }
	// PayReq req = new PayReq();
	// req.appId = order.getAppid();
	// req.partnerId = order.getPartnerid();
	// req.prepayId = order.getPrepayid();
	// req.nonceStr = order.getNoncestr();
	// req.packageValue = "Sign=WXPay";
	// req.sign = order.getSign();
	// req.timeStamp = order.getTimestamp();
	// req.extData = order.getExtData();
	// iwxapi.sendReq(req);
	// }
	// }

	/**
	 * 微信支付
	 * 
	 * @param activity
	 * @param jobj
	 */
	public static void payByWeiXin(Activity activity, JSONObject jobj) {
		Intent intent = H5Activity.createIntentByTitle(activity, getWxurl(), H5Activity.H5_WXPAY, jobj.toString());
		activity.startActivityForResult(intent, ChargeCenterActivity.GETWXPAY_CODE);
	}

	public static String getWxurl() {
		if (TextUtils.isEmpty(DynamicUrl.OWN_DYNAMIC_H5)) {
			return wxUrl;
		} else {
			return DynamicUrl.OWN_DYNAMIC_H5;
		}
	}

	public static void setWxurl(String url) {
		wxUrl = url;
	}

	/**
	 * 阿里H5支付
	 * 
	 * @param activity
	 * @param jobj
	 */
	public static void payByH5Ali(Activity activity, JSONObject jobj) {
		Intent intent = H5Activity.createIntentByTitle(activity, getWxurl(), H5Activity.H5_ALIPAY, jobj.toString());
		activity.startActivityForResult(intent, ChargeCenterActivity.GETALIPAY_CODE);
	}

	/**
	 * 银联H5支付
	 * 
	 * @param activity
	 * @param jobj
	 */
	public static void payByH5Uni(Activity activity, JSONObject jobj) {
		Intent intent = H5Activity.createIntentByTitle(activity, getWxurl(), H5Activity.H5_UNIPAY, jobj.toString());
		activity.startActivityForResult(intent, ChargeCenterActivity.GETALIPAY_CODE);
	}
}
