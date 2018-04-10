package com.pengyouwan.sdk.activity;

import android.annotation.SuppressLint;
import android.content.pm.ApplicationInfo;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import com.pengyouwan.sdk.base.BaseCommonTitleFragmentActivity;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.net.UrlManager;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

/**
 * 免责页面
 * 
 * @author Administrator
 *
 */
public class MianzeActivity extends BaseCommonTitleFragmentActivity {

	private WebView mWeb;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(ResIdManager.getLayoutId(this, Rx.layout.pyw_activity_mianze));
		initView();
	}

	@SuppressLint("SetJavaScriptEnabled")
	private void initView() {
		findViewById(ResIdManager.getId(this, Rx.id.pyw_btn_back)).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				finish();
			} 
		});
		if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
			if (0 != (getApplicationInfo().flags & ApplicationInfo.FLAG_DEBUGGABLE))
			{ WebView.setWebContentsDebuggingEnabled(true); }
		}
		mWeb = (WebView) findViewById(ResIdManager.getId(this, Rx.id.pyw_webview));
		WebSettings mWebSettings = mWeb.getSettings();
		mWebSettings.setSupportZoom(false);
		mWebSettings.setJavaScriptEnabled(true);
		mWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
		mWebSettings.setCacheMode(WebSettings.LOAD_NO_CACHE);
		mWeb.setWebViewClient(new WebViewClient() {
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
		mWeb.loadUrl(UrlManager.URL_MIANZE + InitManager.getInstance().getGameId());
	}
}
