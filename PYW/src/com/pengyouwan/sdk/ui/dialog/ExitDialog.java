package com.pengyouwan.sdk.ui.dialog;

import java.io.IOException;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.TextView;

import com.pengyouwan.framework.base.BaseDialog;
import com.pengyouwan.framework.http.PYWHttpURLConnection;
import com.pengyouwan.sdk.db.BehavioralOperator;
import com.pengyouwan.sdk.interfaces.LogOutCallback;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.SDKEventDispatcher;
import com.pengyouwan.sdk.open.ISDKEventCode;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.StaticsHelper;
import com.pyw.common.Constants;

/**
 * 描述:退出游戏弹出框
 * 
 * @author CJ
 * @since 2016-7-6 下午7:38:22
 */
public class ExitDialog extends BaseDialog {

	private Button cancelBtn;// 取消按钮

	private Button ensureBtn;// 确认按钮

	private WebView wvAd;// 广告位weiview

	private TextView ivClick;// 遮罩在上面的点击

	private LogOutCallback mCallback;

	public ExitDialog(Activity activity) {
		super(activity, ResIdManager.getStyleId(activity,
				Rx.style.PYWTheme_Widget_Dialog));
		initView();
	}

	private void initView() {
		if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
			if (0 != (getContext().getApplicationInfo().flags & ApplicationInfo.FLAG_DEBUGGABLE))
			{ WebView.setWebContentsDebuggingEnabled(true); }
		}
		setContentView(ResIdManager.getLayoutId(getContext(),
				Rx.layout.pyw_dialog_exit));
		cancelBtn = (Button) findViewById((ResIdManager.getId(getContext(),
				Rx.id.pyw_btn_exit_cancel)));
		ensureBtn = (Button) findViewById((ResIdManager.getId(getContext(),
				Rx.id.pyw_btn_exit_ensure)));
		wvAd = (WebView) findViewById((ResIdManager.getId(getContext(),
				Rx.id.pyw_wv_ad)));
		ivClick = (TextView) findViewById((ResIdManager.getId(getContext(),
				Rx.id.pyw_iv_click_web)));
		ivClick.setClickable(false);
		cancelBtn.setOnClickListener(mClickListener);
		ensureBtn.setOnClickListener(mClickListener);
		initWebView();
	}

	/**
	 * 初始化广告位
	 */
	private void initWebView() {
		wvAd.setClickable(false);// 默认点击位不可按
		wvAd.setHorizontalScrollBarEnabled(false);// 水平不显示
		wvAd.setVerticalScrollBarEnabled(false); // 垂直不显示
		if (!InitManager.getInstance().isInit()) {// sdk未初始化 即无链接
			ivClick.setText("是否确认退出游戏？");// 未初始化显示默认文字
			ivClick.setClickable(false);
		} else {
			ivClick.setText("");
			WebSettings settings = wvAd.getSettings();
			// 支持javascript
			settings.setJavaScriptEnabled(true);
			// 覆盖浏览器打开网页，使网页用WebView打开
			wvAd.setWebViewClient(new WebViewClient() {
				@Override
				public boolean shouldOverrideUrlLoading(WebView view, String url) {
					view.loadUrl(url);
					// 返回值是true
					return false;
				}

	            @Override
	            public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
	                // super.onReceivedSslError(view, handler, error);
	                handler.proceed();// 接受所有网站的证书
	                // handler.cancel(); // Android默认的处理方式
	                // handleMessage(Message msg); // 进行其他处理
	            }
			});
			wvAd.loadUrl(InitManager.getInstance().getExitShowUrl());
			if (InitManager.getInstance().isClickable()) {// 如果广告位可按 则点击跳转
				ivClick.setClickable(true);
				ivClick.setOnClickListener(mClickListener);
			}
		}
	}

	@Override
	public void show() {
		super.show();
		upload();
	}

	private View.OnClickListener mClickListener = new View.OnClickListener() {

		public void onClick(View v) {
			if (v == cancelBtn) {// 取消操作
				dismiss();
			} else if (v == ensureBtn) {// 确认操作
				exitCallback();
			} else if (v == ivClick) {// 点击广告位
				Uri uri = Uri.parse(InitManager.getInstance().getExitGoUrl());
				Intent intent = new Intent(Intent.ACTION_VIEW, uri);
				getContext().startActivity(intent);
			}
		}
	};

	/**
	 * 确认则发退出回调
	 */
	private void exitCallback() {
		// 更新登录时长信息
		StaticsHelper.getInstance().saveData();
		// 小孩
		StaticsHelper.getInstance().destroy();
		SDKEventDispatcher.sendEventNow(ISDKEventCode.CODE_EXIT, null);
	}

	private void upload() {
		// 上传用户行为数据
		new Thread(new Runnable() {

			@Override
			public void run() {
				String behaviorData = BehavioralOperator.getInstance()
						.getBehavioralDatas();
				if (!TextUtils.isEmpty(behaviorData)) {
					StringBuilder sBuilder = new StringBuilder(behaviorData);
					try {

						PYWHttpURLConnection.getInstance().postRequest(
								Constants.URL_BEHAVIOR_COLLECTION, sBuilder);

					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}).start();
	}
}
