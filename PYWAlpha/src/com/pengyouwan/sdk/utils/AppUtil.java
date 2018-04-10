package com.pengyouwan.sdk.utils;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import java.util.zip.Deflater;
import java.util.zip.Inflater;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.util.DisplayMetrics;
import android.util.Log;
import android.widget.EditText;
import android.widget.ImageView;

import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.sdk.ui.dialog.TokenErrorDialog;

/**
 * 描述:工具类
 *
 * @author zhj
 * @since 2015-6-1 上午10:41:25
 */
public class AppUtil {

    private static String phoneNum = null;
    private static String deviceId;

    public static void restartApp(Context context) {
        gc();
        // 开启一个新任务栈
        Intent i = context.getPackageManager().getLaunchIntentForPackage(
                context.getPackageName());
        i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        context.startActivity(i);
        // 关闭当前游戏进程，退出应用
        android.os.Process.killProcess(android.os.Process.myPid());
    }

    /**
     * 通行证账号交易密码加密方法
     */
    public static String passNoPayEncode(String str) {
        String md5 = MD5Util.getMd5(str).toLowerCase();
        String secret = MD5Util.getMd5(md5 + SecretUtil.getB()).toLowerCase();
        return secret;
    }

    /**
     * 交易密码加密方法
     */
    public static String payEncode(String str) {
        String md5 = MD5Util.getMd5(str);
        String secret = MD5Util.getMd5(md5 + SecretUtil.getA());
        return secret;
    }

    /**
     * 获取apiSecret2
     */
    public static String getApiSecret2(String tid, String apiSecret) {
        if (apiSecret == null) {
            return "";
        }
        CRC32 c32 = new CRC32();
        c32.update(tid.getBytes());
        int len = (int) (Math.abs(c32.getValue()) % apiSecret.length());
        if (len == 0) {
            len = 1;
        }
        String str1 = apiSecret.substring(len, apiSecret.length());
        String str2 = apiSecret.substring(0, len);
        return MD5Util.getMd5(str1 + tid + str2).toLowerCase();
    }

    /**
     * 获取SDK版本号
     *
     * @return
     */
    public static int getSdkInt() {
        return Build.VERSION.SDK_INT;
    }

    /**
     * 获取设备屏幕大小
     *
     * @param context
     * @return 0 width,1 height
     */
    public static int[] getScreenSize(Context context) {
        DisplayMetrics dm = new DisplayMetrics();
        dm = context.getApplicationContext().getResources().getDisplayMetrics();
        int screenWidth = dm.widthPixels;
        int screenHeight = dm.heightPixels;

        return new int[]{screenWidth, screenHeight};
    }

    /**
     * 校验手机号是否正确
     *
     * @param mobiles
     * @return
     */
    public static boolean isMobile(String mobiles) {
        Pattern p = Pattern
                .compile("^((13[0-9])|(15[^4,\\D])|(17[0-9])|(14[0-9])|(18[0-9]))\\d{8}$");
        Matcher m = p.matcher(mobiles);
        return m.matches();
    }

    /**
     * AES解密
     *
     * @param content  待解密内容
     * @param password 解密密钥
     * @return
     */
    public static byte[] aesDecrypt(byte[] content) {
        try {
            String key = "45678iue2541455x";
            String iv = "45678iue2541455x";
            Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
            SecretKeySpec keyspec = new SecretKeySpec(key.getBytes(), "AES");
            IvParameterSpec ivspec = new IvParameterSpec(iv.getBytes());

            cipher.init(Cipher.DECRYPT_MODE, keyspec, ivspec);

            byte[] original = cipher.doFinal(content);
            return original;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 拨打客服电话
     */
    public static void callPhone(Context context) {
        try {
            String number = context.getResources().getString(
                    ResIdManager.getStringId(context,
                            Rx.string.pyw_service_phone_num));
            // 用intent启动拨打电话
            Intent intent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:"
                    + number));
            context.startActivity(intent);
        } catch (Exception e) {
            // 如果禁止了权限则直接toast
            ToastUtil.showMsg("客服电话为："
                    + context.getResources().getString(
                    ResIdManager.getStringId(context,
                            Rx.string.pyw_service_phone_num)));
        }
    }

    /***
     * 解码
     *
     * @param data
     * @return
     * @throws Exception
     */
    public static byte[] decode(byte[] data) throws Exception {
        int c = -1;
        byte[] buf = new byte[1024];
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        byte[] tmpBuf = SecretUtil.doB(data);

        Inflater inf = new Inflater(true);
        inf.setInput(tmpBuf);
        while (0 != (c = inf.inflate(buf))) {
            baos.write(buf, 0, c);
            baos.flush();
        }
        baos.close();
        inf.end();

        return baos.toByteArray();
    }

    /**
     * 编码
     *
     * @param data
     * @return
     * @throws Exception
     */
    public static byte[] encode(byte[] data) throws Exception {
        byte[] buf = new byte[1024];
        int c = -1;
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        Deflater def = new Deflater(9, true);
        def.setInput(data);
        def.finish();

        while (0 != (c = def.deflate(buf))) {
            baos.write(buf, 0, c);
            baos.flush();
        }
        baos.close();
        def.end();

        byte[] tmpBuf = baos.toByteArray();
        byte[] result = SecretUtil.doA(tmpBuf);

        return result;
    }

    /**
     * 获取imei 某些国产机，没有获取到读取的权限，会直接crash，所以try ，catch一下 唯一标识规则
     * imei+androidId+wifiMac
     *
     * @param context
     * @return
     */
    public static String getImei(Context context) {
        if (!TextUtils.isEmpty(deviceId))
            return deviceId;
        try {
            TelephonyManager tm = (TelephonyManager) context
                    .getSystemService(Context.TELEPHONY_SERVICE);
            StringBuilder imei = new StringBuilder();
            deviceId = tm.getDeviceId();
            String androidId = Secure.getString(context.getContentResolver(),
                    Secure.ANDROID_ID);
            String imsi = tm.getSubscriberId();
            imei.append(deviceId == null ? "" : (deviceId + "|"));
            imei.append(androidId == null ? "" : (androidId + "|"));
            imei.append(getWifiMac(context) + "|");
            imei.append(imsi == null ? "" : imsi);
            deviceId = imei.toString();
            return deviceId;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "||";
    }

    /**
     * 获取wifi-mac
     *
     * @param context
     * @return
     */
    private static String getWifiMac(Context context) {
        try {
            // wifi mac地址
            WifiManager wifi = (WifiManager) context
                    .getSystemService(Context.WIFI_SERVICE);
            WifiInfo info = wifi.getConnectionInfo();
            String wifiMac = info.getMacAddress();
            if (!TextUtils.isEmpty(wifiMac)) {
                return wifiMac;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

    /**
     * 获取手机ip地址
     *
     * @return
     */
    public static String getLocalIpAddress() {
        try {
            for (Enumeration<NetworkInterface> en = NetworkInterface
                    .getNetworkInterfaces(); en.hasMoreElements(); ) {
                NetworkInterface intf = en.nextElement();
                for (Enumeration<InetAddress> enumIpAddr = intf
                        .getInetAddresses(); enumIpAddr.hasMoreElements(); ) {
                    InetAddress inetAddress = enumIpAddr.nextElement();
                    if (!inetAddress.isLoopbackAddress()) {
                        return inetAddress.getHostAddress().toString();
                    }
                }
            }
        } catch (SocketException ex) {
            Log.e("WifiPreference IpAddress", ex.toString());
        }
        return null;
    }

    /**
     * 获取本应用名称
     *
     * @param context
     * @return
     */
    public static String getApplicationName(Context context) {
        PackageManager pm = context.getPackageManager();
        ApplicationInfo info = getPackageInfo(context).applicationInfo;
        String name = (String) pm.getApplicationLabel(info);
        return name;
    }

    /**
     * 根据手机分辨率将dp转为px单位
     */
    public static int dip2px(Context context, float dpValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (dpValue * scale + 0.5f);
    }

    /**
     * 获取版本号
     *
     * @return
     */
    public static int getVersionCode(Context context) {
        PackageInfo pi = getPackageInfo(context);
        if (pi != null) {
            return pi.versionCode;
        } else {
            return 0;
        }
    }

    /**
     * 将版本号转换为两位数的形式 注意版本号应为4位数，且高2位和低2位都要小于16
     */
    public static String getConvertVersionCoce(Context context) {
        int code = getVersionCode(context);
        if (code == 0) {
            return "00";
        } else {
            int i = code / 100;
            int j = code % 100;
            return Integer.toHexString(i) + Integer.toHexString(j);
        }
    }

    /**
     * 获取系统版本，如1.5,2.1
     *
     * @return SDK版本号
     */
    public static String getSysVersionName() {
        return Build.VERSION.RELEASE;
    }

    /**
     * 获取安装包信息
     *
     * @param context
     * @return
     */
    public static PackageInfo getPackageInfo(Context context) {
        PackageManager pm = context.getPackageManager();
        try {
            return pm.getPackageInfo(context.getPackageName(), 0);
        } catch (NameNotFoundException e) {
            return null;
        }
    }

    /**
     * 获取版本名称
     *
     * @return
     */
    public static String getVersionName(Context context) {
        PackageInfo pi = getPackageInfo(context);
        if (pi != null) {
            return pi.versionName;
        } else {
            return "";
        }
    }

    /**
     * 从下载url中截取文件名
     *
     * @param url
     * @return
     */
    public static String getFileNameFromUrl(String url) {
        if (TextUtils.isEmpty(url) || url.lastIndexOf("/") == -1) {
            return "";
        }
        return url.substring(url.lastIndexOf("/") + 1);
    }

    /**
     * 将sp值转换为px值，保证文字大小不变
     *
     * @param spValue
     * @return
     */
    public static int sp2px(Context context, float spValue) {
        final float fontScale = context.getResources().getDisplayMetrics().scaledDensity;
        return (int) (spValue * fontScale + 0.5f);
    }

    /**
     * 获取联网请求的流水号
     */
    public static String getTid() {
        String uuid = UUID.randomUUID().toString();
        uuid.replaceAll("-", "");
        uuid = uuid.substring(0, 16);
        return uuid;
    }

    /**
     * 回收资源
     */
    @SuppressWarnings({"unchecked", "rawtypes"})
    public static void gc() {
        try {
            Class localClass = Class.forName("android.app.ActivityThread");
            Method localMethod = localClass.getMethod("currentActivityThread",
                    new Class[0]);
            Object localObject1 = localMethod.invoke(localClass, new Object[]{});
            Field localField1 = localClass.getDeclaredField("mActivities");
            localField1.setAccessible(true);
            Map localHashMap = (Map) localField1.get(localObject1);
            Iterator localIterator = localHashMap.entrySet().iterator();
            while (localIterator.hasNext()) {
                Map.Entry localEntry = (Map.Entry) localIterator.next();
                Object localObject2 = localEntry.getValue();
                Object localObject3 = null;
                Class[] arrayOfClass = localClass.getDeclaredClasses();
                for (Object localObject5 : arrayOfClass) {
                    if ((((Class) localObject5).getSimpleName()
                            .equals("ActivityRecord"))
                            || (((Class) localObject5).getSimpleName()
                            .equals("ActivityClientRecord"))) {
                        localObject3 = localObject5;
                        break;
                    }
                }
                Field localField4 = ((Class) localObject3)
                        .getDeclaredField("paused");
                ((Field) localField4).setAccessible(true);
                boolean bool1 = ((Boolean) ((Field) localField4)
                        .get(localObject2)).booleanValue();
                Field localField2 = ((Class) localObject3)
                        .getDeclaredField("stopped");
                localField2.setAccessible(true);
                boolean bool2 = ((Boolean) localField2.get(localObject2))
                        .booleanValue();
                if ((bool1) || (bool2)) {
                    Field localField3 = ((Class) localObject3)
                            .getDeclaredField("activity");
                    localField3.setAccessible(true);
                    Activity localActivity = (Activity) localField3
                            .get(localObject2);
                    localActivity.finish();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取渠道
     *
     * @param context
     * @return
     */
    public static String[] getChannel(Context context) {
        ApplicationInfo appinfo = context.getApplicationInfo();
        String sourceDir = appinfo.sourceDir;
        String ret = "";
        ZipFile zipfile = null;
        try {
            zipfile = new ZipFile(sourceDir);
            Enumeration<?> entries = zipfile.entries();
            while (entries.hasMoreElements()) {
                ZipEntry entry = ((ZipEntry) entries.nextElement());
                String entryName = entry.getName();
                if (entryName.contains("META-INF/pyw_promo")) {
                    ret = entryName;
                    break;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (zipfile != null) {
                try {
                    zipfile.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        // pyw_promo_FriendsPlay-pengyouwan-v2-0423.123456
        if (TextUtils.isEmpty(ret)) {
            return null;
        }
        int index = ret.lastIndexOf(".");
        String str = ret.substring(index + 1, ret.length());
        return str.split("-");
    }

    /**
     * 判断当前屏幕是否是横屏
     *
     * @param context
     * @return
     */
    public static boolean isScreenLandscape(Context context) {
        Configuration configuration = context.getResources().getConfiguration(); // 获取设置的配置信息
        int ori = configuration.orientation; // 获取屏幕方向
        if (ori == configuration.ORIENTATION_LANDSCAPE) {
            // 横屏
            return true;
        } else if (ori == configuration.ORIENTATION_PORTRAIT) {
            // 竖屏
            return false;
        }
        return false;
    }

    /**
     * 控制界面密码是明文还是密文
     *
     * @param edit      输入框
     * @param imageview 眼镜的view
     * @param curStatus 当前状态
     * @param context
     * @return
     */
    public static boolean changePwdVisible(EditText edit, ImageView imageview,
                                           boolean curStatus, Context context) {
        if (curStatus) {
            curStatus = false;
            edit.setTransformationMethod(PasswordTransformationMethod
                    .getInstance());
            imageview.setImageResource(ResIdManager.getDrawableId(context,
                    Rx.drawable.pyw_img_visible_disabled));
        } else {
            curStatus = true;
            edit.setTransformationMethod(HideReturnsTransformationMethod
                    .getInstance());
            imageview.setImageResource(ResIdManager.getDrawableId(context,
                    Rx.drawable.pyw_img_visible_normal));
        }
        // 把光标移到最后
        CharSequence text = edit.getText();
        if (text instanceof Spannable) {
            Spannable spanText = (Spannable) text;
            Selection.setSelection(spanText, text.length());
        }
        return curStatus;
    }

    /**
     * 获取手机号
     *
     * @param context
     * @return
     */
    public static String getPhoneNum(Context context) {
        if (phoneNum == null) {
            TelephonyManager tm = (TelephonyManager) context
                    .getSystemService(Context.TELEPHONY_SERVICE);
            // 获取手机号码
            phoneNum = tm.getLine1Number();
            // 只尝试获取一次
            if (phoneNum == null)
                phoneNum = "";
        }
        return phoneNum;
    }

    /**
     * token失效处理
     */
    public static void tokenErrorLogout(Activity activity) {
        TokenErrorDialog dialog = new TokenErrorDialog(activity);
        dialog.show();
    }

}
