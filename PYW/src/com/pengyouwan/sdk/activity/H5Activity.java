
package com.pengyouwan.sdk.activity;

import java.util.HashMap;
import java.util.Map;

import org.json.JSONObject;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import com.pengyouwan.sdk.base.BaseCommonTitleFragmentActivity;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.ToastUtil;

/**
 * 描述：通用的使用webview访问h5页面
 * 
 * @author Hanson
 * @since 创建时间：2016-6-30 下午8:44:17
 */
public class H5Activity extends BaseCommonTitleFragmentActivity {

    private Context mContext;

    private WebView mWebView;

    private static final String URL = "url";

    private static final String TITLE = "title";

    private static final String TAG = "tag";

    private static final String DATA = "data";

    public static final int H5_PAYPASSNO = 0x1001;// 忘记密码

    public static final int H5_WXPAY = 0x1002;// 微信支付
    
    public static final int H5_ALIPAY = 0x1003;//阿里支付
    
    public static final int H5_UNIPAY = 0x1004;//银联支付
    

    private int mTag;// 标记

    private String loadUrl = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_SENSOR_PORTRAIT);
        mContext = this;
        setContentView(ResIdManager.getLayoutId(mContext, Rx.layout.pyw_activity_h5));
        initView();
    }

    private void initView() {
        String title = getIntent().getStringExtra(TITLE);
        setCommonTitle(title);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
            if (0 != (getApplicationInfo().flags & ApplicationInfo.FLAG_DEBUGGABLE))
            { WebView.setWebContentsDebuggingEnabled(true); }
        }
        mWebView = (WebView) findViewById(ResIdManager.getId(mContext, Rx.id.pyw_view_mybalance));
        loadUrl = getIntent().getStringExtra(URL);// + "?param=" +
                                                  // getDecodeInfo();
        mTag = getIntent().getIntExtra(TAG, H5_PAYPASSNO);
        WebSettings settings = mWebView.getSettings();
        // 支持javascript
        settings.setJavaScriptEnabled(true);
        // 缓存
        settings.setCacheMode(WebSettings.LOAD_NO_CACHE);
        // 覆盖浏览器打开网页，使网页用WebView打开
        mWebView.setWebViewClient(new WebViewClient() {
            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                // view.loadUrl(url);
                // // 返回值是true
                // return true;

                // 如下方案可在非微信内部WebView的H5页面中调出微信支付
                if (url.startsWith("weixin://wap/pay?")) {
                    try {
                        Intent intent = new Intent();
                        intent.setAction(Intent.ACTION_VIEW);
                        intent.setData(Uri.parse(url));
                        startActivity(intent);
                    } catch (ActivityNotFoundException e) {
                        e.printStackTrace();
                        ToastUtil.showMsg("请检查是否已安装新版微信");
                    }
                    return true;
                }
                return super.shouldOverrideUrlLoading(view, url);
            }

            @Override
            public void onPageFinished(WebView view, String url) {
                // TODO Auto-generated method stub
                super.onPageFinished(view, url);
            }

            @Override
            public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
                // super.onReceivedSslError(view, handler, error);
                handler.proceed();// 接受所有网站的证书
                // handler.cancel(); // Android默认的处理方式
                // handleMessage(Message msg); // 进行其他处理
            }

        });
        Map<String, String> extraHeaders = new HashMap<String, String>();
        if (mTag == H5_PAYPASSNO) {// 修改交易密码
            extraHeaders.put("param", getDecodeInfo());
        } else if (mTag == H5_WXPAY || mTag == H5_UNIPAY || mTag == H5_ALIPAY ) {
            String data = getIntent().getStringExtra(DATA);
            try {
                JSONObject jobj = new JSONObject(data);
                StringBuilder sb = new StringBuilder();
                if (data != null) {
                    // 拼接微信参数到url上 
                    sb.append("?out_trade_no=" + jobj.getString("out_trade_no") + "&total_fee="
                            + jobj.getString("total_fee") + "&userid=" + jobj.getString("userid")
                            + "&token=" + jobj.getString("token") + "&device_info="
                            + jobj.getString("device_info"));
                    loadUrl = loadUrl + sb.toString();
                } else {
                    ToastUtil.showMsg("订单信息有误，请重新下单");
                    H5Activity.this.finish();
                }
            } catch (Exception e) {
                e.printStackTrace();
                ToastUtil.showMsg("参数转换出错");
                H5Activity.this.finish();
            }
        }
        
        mWebView.addJavascriptInterface(new InnerJSInterface(), "sdkObj");
        mWebView.loadUrl(loadUrl, extraHeaders);
    }

    /**
     * js回调对象，提供关闭当前页面的方法
     * 
     * @return
     */
    private class InnerJSInterface {
        // SDK退出
        @JavascriptInterface
        public void doSdkExit() {
            setResult(SetPayPasswordActivity.RESULT_CODE);
            H5Activity.this.finish();
        }

        // 充值完成
        @JavascriptInterface
        public void onChargeComplete() {
            // H5Activity.this.finish();
            // setResult(ChargeCenterActivity.GETWXPAY_CODE);
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        // 界面关闭的时候也发送成功支付回调
        if (mTag == H5_WXPAY) {
            setResult(ChargeCenterActivity.GETWXPAY_CODE);
        }else if(mTag == H5_ALIPAY){
        	setResult(ChargeCenterActivity.GETALIPAY_CODE);
        }
        else if(mTag == H5_UNIPAY){
        	setResult(ChargeCenterActivity.GETUNIO_CODE);
        }
    }

    private String getDecodeInfo() {
        SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
        StringBuilder sb = new StringBuilder();
        sb.append(user.getPhoneNo()).append("|").append(user.getPwd());
        String str = sb.toString();
        try {
            byte[] bytes = AppUtil.encode(str.getBytes());
            sb.delete(0, sb.length());
            for (byte b : bytes) {
                sb.append(b);
                sb.append(",");
            }
            sb.deleteCharAt(sb.length() - 1);
            str = sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    /**
     * @param context
     * @param url 链接
     * @param tag 页面标记
     * @param data 数据
     * @return
     */
    public static Intent createIntentByTitle(Context context, String url, int tag, String data) {
        Intent intent = new Intent(context, H5Activity.class);
        intent.putExtra(URL, url);
        String title = "";
        switch (tag) {
            case H5_PAYPASSNO:
                title = "交易密码";
                break;
            case H5_WXPAY:
                title = "微信支付";
                break;
            case H5_ALIPAY:
            	title = "支付宝支付";
            	break;
            case H5_UNIPAY:
            	title = "银联支付";
            	break;
            default:
                break;
        }
        intent.putExtra(TITLE, title);
        intent.putExtra(TAG, tag);
        intent.putExtra(DATA, data);
        return intent;
    }
}
