package com.pyw.pengyouwan.h5.demo;

import android.app.Activity;
import android.app.ProgressDialog;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;

import com.pengyouwan.framework.volley.Response;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.sdk.net.GetGameUrlRequest;
import com.pengyouwan.sdk.net.RequestQueueManager;
import com.pengyouwan.sdk.web.PYWH5Plamform;


public class H5Activity extends Activity {
    private static final String[] PERMISSIONS = {
            "android.permission.WRITE_EXTERNAL_STORAGE",
            "android.permission.READ_PHONE_STATE",
    };
    private static final int PERMISSION_REQUEST_CODE = 0xA1;

    private ProgressDialog progressBar;
    PYWH5Plamform mPYWH5Plamform;
    WebView webView;
    View view;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        RequestQueueManager.init(getApplicationContext());
//        checkPermission();
        setContentView(getId("activity_h5", "layout"));
        init();
    }

//    public boolean hasPermission(String permission) {
//        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.M ){
//            return PackageManager.PERMISSION_GRANTED == checkSelfPermission(permission);
//        }else{
//            return PackageManager.PERMISSION_GRANTED == getPackageManager().checkPermission(permission,getPackageName());
//        }
//    }
//    public void requestPermissionsSafely(int requestCode, String[] permissions) {
//        ActivityCompat.requestPermissions(this,permissions,requestCode);
//    }
//    /**
//     * 检查敏感权限
//     *
//     * @return 需要请求权限返回false，不需要返回true
//     */
//    private boolean checkPermission() {
//        ArrayList<String> addingPermissions = new ArrayList<>();
//        for (String permission : PERMISSIONS) {
//            if (!hasPermission(permission)) {
//                addingPermissions.add(permission);
//            }
//        }
//
//        if (addingPermissions.size() > 0) {
//            String[] ps = new String[addingPermissions.size()];
//            addingPermissions.toArray(ps);
//            requestPermissionsSafely(PERMISSION_REQUEST_CODE, ps);
//            return false;
//        }
//        return true;
//    }

    private void init() {
//        progressBar = ProgressDialog.show(this,"页面加载中，请稍候...","Loading...");
        webView = (WebView) findViewById(getId("pyw_webview", "id"));
        view = findViewById(getId("pyw_view","id"));
        WebSettings webSettings = webView.getSettings();
        webSettings.setJavaScriptEnabled(true);
        webSettings.setBuiltInZoomControls(false);
        webSettings.setJavaScriptCanOpenWindowsAutomatically(true);
        webSettings.setCacheMode(WebSettings.LOAD_NO_CACHE);
        webSettings.setDomStorageEnabled(true);
        webSettings.setDatabaseEnabled(true);
        webSettings.setAppCacheEnabled(true);
        webSettings.setAllowFileAccess(true);
        webSettings.setSavePassword(true);
        webSettings.setSupportZoom(true);
        webSettings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        webSettings.setUseWideViewPort(true);
        //webview在安卓5.0之前默认允许其加载混合网络协议内容
        // 在安卓5.0之后，默认不允许加载http与https混合内容，需要设置webview允许其加载混合网络协议内容
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            webSettings.setMixedContentMode(WebSettings.MIXED_CONTENT_ALWAYS_ALLOW);
        }
        mPYWH5Plamform = PYWH5Plamform.getInstance(this);
        mPYWH5Plamform.setDepartmentCode("2");
        mPYWH5Plamform.reset();
        mPYWH5Plamform.attachWebview(webView);
        webView.addJavascriptInterface(mPYWH5Plamform, "AndroidPengYouWan");
//        webView.loadUrl("http://pyw.cn/SDKH5/pywsdktest.html");
//        webView.loadUrl("https://zzbypywan01.m6yx.com/plat/13/1/hts/p13_1.html");//真武传奇
//        webView.loadUrl("https://zzbypywan01.m6yx.com/plat/14/1/hts/p14_1.html");//狂斩一刀
//        webView.loadUrl("https://zzbypywan01.m6yx.com/plat/13/hts/3/p13_3.html");//微变传奇
//        webView.loadUrl("https://zzbypywan01.m6yx.com/plat/13/hts/4/p13_4.html");//正版传奇
//        webView.loadUrl(getString(getId("pyw_url","string")));
        webView.setWebViewClient(new WebViewClient() {
            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                view.loadUrl(url);
                return true;
            }

            @Override
            public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
                handler.proceed();  //接受所有证书
            }

            @Override
            public void onPageFinished(WebView view, String url) {
                hideView();
                super.onPageFinished(view, url);
            }
        });
        int splshId = getId("img_loading","drawable");
        if(splshId>0){
            view.setBackgroundResource(splshId);
        }
        getGameUrl();
    }

    private void hideView(){
        if(view!=null){
            ((ViewGroup)view.getParent()).removeView(view);
            view = null;
        }
    }

    private void loadUrl(String url) {
        if (webView != null) {
            webView.loadUrl(url);
        } else {
            Toast.makeText(H5Activity.this, "控件加载有误", Toast.LENGTH_SHORT).show();
        }
    }

    @Override
    public void onBackPressed() {
        if (mPYWH5Plamform.isInit())
            mPYWH5Plamform.exitOnly();
        else
            super.onBackPressed();
    }

    @Override
    protected void onDestroy() {
        mPYWH5Plamform.destory();
        super.onDestroy();
        System.exit(0);
    }

    @Override
    protected void onPause() {
        super.onPause();
        if (mPYWH5Plamform != null && mPYWH5Plamform.isInit())
            mPYWH5Plamform.hideFloatTools();
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (mPYWH5Plamform != null && mPYWH5Plamform.isInit())
            mPYWH5Plamform.showFloatTools();
    }

    ProgressDialog mProgressDialog;

    private void showProgressDialog() {
        if (mProgressDialog == null) {
            mProgressDialog = new ProgressDialog(H5Activity.this);
        }
        mProgressDialog.show();
    }

    private void hideProgress() {
        if (mProgressDialog != null && mProgressDialog.isShowing()) {
            mProgressDialog.dismiss();
        }
    }

    private void getGameUrl() {
        showProgressDialog();
        String key = getString(getId("pyw_gamekey", "string"));
        String url = "https://g1.pyw.cn/iosUrl/" + key + ".txt";
        GetGameUrlRequest req = new GetGameUrlRequest(url,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        hideProgress();
                        if (!TextUtils.isEmpty(response)) {
                            loadUrl(response);
                        } else {
                            showMsg("游戏地址返回不正确");
                        }
                    }
                }, new Response.ErrorListener() {

            @Override
            public void onErrorResponse(VolleyError error) {
                hideProgress();
                showMsg("获取游戏地址异常");
            }
        });
        RequestQueueManager.getInstance().addToRequestQueue(req);
    }


    private void showMsg(String msg) {
        Toast.makeText(H5Activity.this, msg, Toast.LENGTH_SHORT).show();
    }


    public int getId(String resName, String kindStr) {
        int id = getResources().getIdentifier(resName, kindStr, getPackageName());
        if (id == 0) {
            try {
                throw new Exception("can not find resources id");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return id;
    }
}
