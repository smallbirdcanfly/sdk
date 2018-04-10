package com.pengyouwan.sdk.activity;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import com.pengyouwan.framework.utils.SdkUtil;
import com.pengyouwan.sdk.entity.Constants;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.SDKEventDispatcher;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.UrlManager;
import com.pengyouwan.sdk.open.ISDKEventCode;
import com.pengyouwan.sdk.open.ISDKEventExtraKey;
import com.pengyouwan.sdk.open.PYWPlatform;
import com.pengyouwan.sdk.ui.dialog.BindPassNoTipsDialog;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.BindPhoneTipsDialogUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.StaticsHelper;

/**
 * 身份认证
 * 
 * @author PX
 * 
 */
public class IDCardInfomationActivity extends Activity {

	private Context mContext;

	private WebView mWebView;

	private String param;

	private boolean isVerify = false;// 是否认证成功标记位

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		mContext = this;
		setContentView(ResIdManager.getLayoutId(mContext,
				Rx.layout.pyw_activity_idcard));
		initView();
	}

	private void initView() {

		initData();
		if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
			if (0 != (getApplicationInfo().flags & ApplicationInfo.FLAG_DEBUGGABLE))
			{ WebView.setWebContentsDebuggingEnabled(true); }
		}
		mWebView = (WebView) findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_view_idcard_information));
		Map<String, String> extraHeaders = new HashMap<String, String>();
		extraHeaders.put("param", param);
		WebSettings settings = mWebView.getSettings();
		settings.setJavaScriptEnabled(true);
		settings.setCacheMode(WebSettings.LOAD_NO_CACHE);
		settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
		settings.setUseWideViewPort(true);
		settings.setLoadWithOverviewMode(true);
		settings.setGeolocationEnabled(true);
		settings.setDomStorageEnabled(true);
		mWebView.requestFocus();
		mWebView.setScrollBarStyle(0);
		// 覆盖浏览器打开网页，使网页用WebView打开
		mWebView.setWebViewClient(new WebViewClient() {
			@Override
			public boolean shouldOverrideUrlLoading(WebView view, String url) {
				// view.loadUrl(url);
				// // 返回值是true
				// return true;
				return super.shouldOverrideUrlLoading(view, url);
			}

			@Override
			public void onPageFinished(WebView view, String url) {
				// TODO Auto-generated method stub
				super.onPageFinished(view, url);

			}

			@Override
			public void onReceivedSslError(WebView view,
					SslErrorHandler handler, SslError error) {
				handler.proceed();// 接受所有网站的证书

			}

		});

		mWebView.addJavascriptInterface(new InnerJSInterface(), "sdkObj");
		mWebView.loadUrl(UrlManager.URL_IDCARDVERIFYVIEW_INDEX, extraHeaders);

	}

	/**
	 * js回调对象
	 * 
	 * @return
	 */
	private class InnerJSInterface {
		@JavascriptInterface
		public void onSuccess() {// 认证成功
			isVerify = true;
			setResult(0);
		}

		@JavascriptInterface
		public void onfail() {// 认证失败
			isVerify = false;
			setResult(1);
		}

		@JavascriptInterface
		public void onCloseWindow() {// 认证成功后，倒计时退出
			runOnUiThread(new Runnable() {
				@Override
				public void run() {
					isVerify();
				}
			});
		}

	}

	@Override
	protected void onDestroy() {

		if (mWebView != null) {
			mWebView.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
			mWebView.clearHistory();
			((ViewGroup) mWebView.getParent()).removeView(mWebView);
			mWebView.destroy();
			mWebView = null;
		}
		super.onDestroy();

	}

	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		return true;
	}

	private void initData() {
		Map<String, String> params = new HashMap<String, String>();
		SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
		params.put("gameid", InitManager.getInstance().getGameId());
		if (user.getAccountType() == Constants.UserContants.USER_TYPE_PASSPORT) {// 判断登录状态
			params.put("username", user.getPhoneNo());
			params.put("token", user.getPhoneNoToken());
		} else {
			params.put("username", user.getUserName());
			params.put("token", user.getToken());
		}
		params.put("imie", AppUtil.getImei(this));
		JSONObject jobj = new JSONObject();
		JSONArray jarry = new JSONArray();
		try {
			for (Map.Entry<String, String> entry : params.entrySet()) {
				jobj.put(URLEncoder.encode(entry.getKey(), "UTF-8"),
						entry.getValue());
			}

			jarry.put(jobj);
			String reqParm = jarry.toString();
			String str = new String(SdkUtil.encode(reqParm
					.getBytes("ISO-8859-1")), "ISO-8859-1");
			String reqStr = URLEncoder.encode(str, "ISO-8859-1");
			param = reqStr;
		} catch (UnsupportedEncodingException uee) {
			throw new RuntimeException("Encoding not supported: " + "UTF-8",
					uee);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void isVerify() {
		if (isVerify) {
			// 已验证
			SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
			if (TextUtils.isEmpty(user.getPhoneNo())) {// 无绑定手机
				if (BindPhoneTipsDialogUtil.isToShowDialog()) {// 如果到钟弹框
					new BindPassNoTipsDialog((Activity) mContext).show();
					BindPhoneTipsDialogUtil.setDialogTime();// 记录当前时间
				} else {
					sendSuccessCallBack();
				}
			} else {
				sendSuccessCallBack();
			}

		} else {// 未认证通过则调用退出
			PYWPlatform.exit((Activity) mContext);
		}
	}

	/**
	 * 发送成功回调
	 */
	private void sendSuccessCallBack() {

		Bundle data = new Bundle();
		data.putSerializable(ISDKEventExtraKey.EXTRA_USER, UserManager
				.getInstance().getCurrentUser());
		int code = ISDKEventCode.CODE_LOGIN_SUCCESS;
		SDKEventDispatcher.sendEventNow(code, data);
        //更新登录时长信息
        StaticsHelper.getInstance().accountChange();
		UserManager.getInstance().setChangeAccount(false);
		finish();
	}

}
