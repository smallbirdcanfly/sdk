
package com.pengyouwan.sdk.ui.dialog;

import java.io.File;
import java.io.FileOutputStream;
import java.lang.ref.WeakReference;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.base.BaseDialog;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.sdk.manager.FolderManager;
import com.pengyouwan.sdk.manager.SDKEventDispatcher;
import com.pengyouwan.sdk.net.DownloadRequestPackage;
import com.pengyouwan.sdk.open.ISDKEventCode;
import com.pengyouwan.sdk.utils.DownloadUtil;
import com.pengyouwan.sdk.utils.DownloadUtil.IDownloadListener;
import com.pengyouwan.sdk.utils.FileUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.SDCardUtil;
import com.pengyouwan.sdk.utils.ToastUtil;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;

public class DownloadProgressDialog extends BaseDialog {

    private TextView textPorgress;

    private ProgressBar pb;

    private Button btnStop;

    private final int MSG_UI_DOWNLOAD_ERROR = 0X001;

    private final int MSG_UI_DOWNLOAD_PROGRESS = 0X002;

    String url;

    String fileName;

    String tempName;

    public DownloadProgressDialog(Activity activity, String downloadUrl) {
        super(activity, ResIdManager.getStyleId(activity, Rx.style.PYWTheme_Widget_Dialog));
        setCancelable(false);
        initView(activity, downloadUrl);
    }

    private void initView(Activity activity, String downloadUrl) {
        setContentView(ResIdManager.getLayoutId(activity, Rx.layout.pyw_dialog_download));

        setWindowGravity(Gravity.CENTER);

        WindowManager.LayoutParams lp = getWindow().getAttributes();
        DisplayMetrics dm = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(dm);
        int parentWidth = dm.widthPixels;
        int width = parentWidth * 8 / 10;
        lp.width = width;
        lp.height = ViewGroup.LayoutParams.WRAP_CONTENT;
        getWindow().setAttributes(lp);

        pb = (ProgressBar) findViewById(ResIdManager.getId(activity, Rx.id.pyw_pb_progress));
        textPorgress = (TextView) findViewById(ResIdManager.getId(activity, Rx.id.pyw_tv_progress));
        btnStop = (Button) findViewById(ResIdManager.getId(activity, Rx.id.pyw_btn_dialog_switch));

        btnStop.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {
                mUiHandler.removeCallbacksAndMessages(null);
                // 释放资源杀死进程
                SDKEventDispatcher.sendEvent(ISDKEventCode.CODE_EXIT, null);
            }
        });

        url = downloadUrl;
        if (TextUtils.isEmpty(url)) {
            ToastUtil.showMsg("下载地址有误");
            return;
        }
        String name = MD5Util.getMd5(url);
        fileName = FolderManager.OTHER_CACHE_FOLDER + name + ".apk";
        tempName = FolderManager.OTHER_CACHE_FOLDER + name + ".temp";
        new Thread(new Runnable() {
            @Override
            public void run() {
                if (checkSDCard()) {
                    startDownload(url, tempName, fileName);
                }
            }
        }).start();
    }

    @Override
    public void show() {
        super.show();
        pb.setVisibility(View.VISIBLE);
    }

    // 执行下载
    private void startDownload(String url, String tempName, String fileName) {
        DownloadRequestPackage pkg = new DownloadRequestPackage(url);
        // String fileName = FolderManager.OTHER_CACHE_FOLDER + name + ".apk";
        // String path = FolderManager.OTHER_CACHE_FOLDER + name + ".temp";
        DownloadListener iListener = new DownloadListener(tempName);
        try {
            DownloadUtil.download(pkg, iListener);
            if (iListener.isError) {
                // 出错则删除下载文件
                FileUtil.deleteFile(tempName);
            }
            FileUtil.rename(tempName, fileName);
            ToastUtil.showMsg("下载完成，准备安装");
            installNormal(fileName);
        } catch (AppException e) {
            mUiHandler.sendEmptyMessage(MSG_UI_DOWNLOAD_ERROR);
            // 关闭io流
            iListener.closeFileStream();
            e.printStackTrace();
        }
    }

    /**
     * install package normal by system intent
     * 
     * @param context
     * @param filePath file path of package
     * @return whether apk exist
     */
    private boolean installNormal(String filePath) {
        Intent i = new Intent(Intent.ACTION_VIEW);
        File file = new File(filePath);
        if (file == null || !file.exists() || !file.isFile() || file.length() <= 0) {
            return false;
        }

        i.setDataAndType(Uri.parse("file://" + filePath),
                "application/vnd.android.package-archive");
        i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        getContext().startActivity(i);
        return true;
    }

    private class DownloadListener implements IDownloadListener {

        private String savePath;

        private FileOutputStream fos;

        private boolean isError = false;

        public DownloadListener(String savePath) {
            this.savePath = savePath;
        }

        @Override
        public void onProgressChanged(byte[] data, int offset, int length, int progress) {
            try {
                if (fos == null) {
                    File file = new File(savePath);
                    if (!file.exists()) {
                        File parent = file.getParentFile();
                        if (!parent.exists()) {
                            parent.mkdirs();
                        }
                        file.createNewFile();
                    }
                    this.fos = new FileOutputStream(file);
                }
                fos.write(data, offset, length);
                Message msg = Message.obtain();
                msg.arg1 = progress;
                msg.what = MSG_UI_DOWNLOAD_PROGRESS;
                mUiHandler.sendMessage(msg);
            } catch (Exception e) {
                isError = true;
                e.printStackTrace();
            }
        }

        // 关闭流
        public void closeFileStream() {
            if (fos != null) {
                try {
                    fos.close();
                } catch (Exception e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }

    }

    private Handler mUiHandler = new UiHandler(this);

    private static class UiHandler extends Handler {
        private final WeakReference<DownloadProgressDialog> mReference;

        public UiHandler(DownloadProgressDialog activity) {
            mReference = new WeakReference<DownloadProgressDialog>(activity);
        }

        public void handleMessage(android.os.Message msg) {
            super.handleMessage(msg);
            if (mReference.get() != null) {
                mReference.get().handleUiMessage(msg);
            }
        };
    }

    private void handleUiMessage(android.os.Message msg) {
        switch (msg.what) {
            case MSG_UI_DOWNLOAD_ERROR:
                ToastUtil.showMsg("下载游戏出错");

                doOnDownloadError();
                break;
            case MSG_UI_DOWNLOAD_PROGRESS:
                int progress = msg.arg1;
                pb.setProgress(progress);
                textPorgress.setText("已下载:" + progress + "%");
                break;
        }
    }

    private void doOnDownloadError() {
        textPorgress.setText("下载出错了");
        btnStop.setText("退出游戏");
    }

    // 检查sdk空间
    private boolean checkSDCard() {
        if (!SDCardUtil.hasSDCard()) {
            ToastUtil.showMsg("SD卡未挂载");
            return false;
        }
        if (!SDCardUtil.hasEnoughSpace(5 * 1024 * 1024)) {
            ToastUtil.showMsg("SD卡空间已满，无法加载更多内容");
            return false;
        }
        return true;
    }

    /**
     * 设置dialog位置
     * 
     * @param gravity
     */
    public void setWindowGravity(int gravity) {
        Window window = getWindow();
        window.setGravity(gravity);
    }

}
