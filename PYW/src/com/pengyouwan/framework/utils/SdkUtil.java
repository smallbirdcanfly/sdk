
package com.pengyouwan.framework.utils;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
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

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;

/**
 * 描述:工具类
 * 
 * @author zhj
 * @since 2015-6-1 上午10:41:25
 */
public class SdkUtil {

    public static void restartApp(Context context) {
        gc();
        // 开启一个新任务栈
        Intent i = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        context.startActivity(i);
        // 关闭当前游戏进程，退出应用
        android.os.Process.killProcess(android.os.Process.myPid());
    }

    /**
     * 获取apiSecret2
     */
    public static String getApiSecret2(String tid, String apiSecret) {
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
     * 根据手机的分辨率从 px(像素) 的单位 转成为 dp 
     */  
    public static int px2dip(Context context, float pxValue) {  
        final float scale = context.getResources().getDisplayMetrics().density;  
        return (int) (pxValue / scale + 0.5f);  
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

        return new int[] {
                screenWidth, screenHeight
        };
    }

    /**
     * 校验手机号是否正确
     * 
     * @param mobiles
     * @return
     */
    public static boolean isMobile(String mobiles) {
        Pattern p = Pattern
                .compile("^((13[0-9])|(15[^4,\\D])|(17[0-9])|(14[6-7])|(18[0-9]))\\d{8}$");
        Matcher m = p.matcher(mobiles);
        return m.matches();
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
        byte[] tmpBuf = new byte[data.length];

        for (int i = 0, j = tmpBuf.length - 1, k = 0;; i++, j--) {
            if (i == j) {
                tmpBuf[k] = data[i];
                break;
            } else if (i > j) {
                break;
            }

            tmpBuf[k++] = data[i];
            tmpBuf[k++] = data[j];
        }

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
        byte[] result = new byte[tmpBuf.length];
        for (int i = 0, j = 0, k = tmpBuf.length - 1; i < tmpBuf.length;) {
            result[j++] = tmpBuf[i++];
            if (i == tmpBuf.length)
                break;
            result[k--] = tmpBuf[i++];
        }

        return result;
    }

    /**
     * 优先返回imsi，如果imsi获取到，则返回imei
     * 
     * @param context
     * @return
     */
    public static String getImsiOrImei(Context context) {
        String str = getImsi(context);
        if (TextUtils.isEmpty(str)) {
            str = getImei(context);
        }
        return str;
    }

    /**
     * 获取imei 某些国产机，没有获取到读取的权限，会直接crash，所以try ，catch一下
     * 
     * @param context
     * @return
     */
    public static String getImei(Context context) {
        try {
            TelephonyManager tm = (TelephonyManager) context
                    .getSystemService(Context.TELEPHONY_SERVICE);
            String iemi = tm.getDeviceId();
            return iemi == null ? "" : iemi;
        } catch (Exception e) {
        }
        return "";
    }

    /**
     * 获取imsi
     * 
     * @param context
     * @return
     */
    public static String getImsi(Context context) {
        try {
            TelephonyManager tm = (TelephonyManager) context
                    .getSystemService(Context.TELEPHONY_SERVICE);
            String tel = tm.getSubscriberId();
            return TextUtils.isEmpty(tel) ? "" : tel;
        } catch (Exception e) {
        }
        return "";
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
    public static void gc() {
        try {
            Class localClass = Class.forName("android.app.ActivityThread");
            Method localMethod = localClass.getMethod("currentActivityThread", new Class[0]);
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
                    if ((((Class) localObject5).getSimpleName().equals("ActivityRecord"))
                            || (((Class) localObject5).getSimpleName()
                                    .equals("ActivityClientRecord"))) {
                        localObject3 = localObject5;
                        break;
                    }
                }
                Field localField4 = ((Class) localObject3).getDeclaredField("paused");
                ((Field) localField4).setAccessible(true);
                boolean bool1 = ((Boolean) ((Field) localField4).get(localObject2)).booleanValue();
                Field localField2 = ((Class) localObject3).getDeclaredField("stopped");
                localField2.setAccessible(true);
                boolean bool2 = ((Boolean) localField2.get(localObject2)).booleanValue();
                if ((bool1) || (bool2)) {
                    Field localField3 = ((Class) localObject3).getDeclaredField("activity");
                    localField3.setAccessible(true);
                    Activity localActivity = (Activity) localField3.get(localObject2);
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
        String str = ret.substring(index, ret.length());
        return str.split("-");
    }
}
