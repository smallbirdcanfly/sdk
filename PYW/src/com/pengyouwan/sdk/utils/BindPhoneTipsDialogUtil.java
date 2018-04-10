
package com.pengyouwan.sdk.utils;

import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.preference.SDKPereferenceUtil;

/**
 * Copyright (C) pengpuxin Inc.All Rights Reserved.
 * FileName：com.pengyouwan.sdk.utils.
 * 
 * @Description：控制显示绑定手机的弹窗工具类 History： 版本号 作者 日期 简要介绍相关操作
 * @version pengpuxin 2016-7-7 Create
 */
public class BindPhoneTipsDialogUtil {

    public static long showTimeDistance = 0;// 弹窗周期 默认0

    /**************** 　弹窗 使用方法 start *************/
    // if (BindPhoneTipsDialogUtil.isToShowDialog()) {
    // //执行弹窗动作
    // // showDialog(); //自定动态换
    // BindPhoneTipsDialogUtil.setDialogTime();
    // }
    /**************** 　弹窗 使用方法 end *************/

    /**
     * 是否应该显示弹窗
     * 
     * @return isToShowDialog
     */
    public static boolean isToShowDialog() {
        return calIsshowDialog();
    }

    /**
     * 服务器返回的弹窗时间，计算设置标志位看是否应该弹窗
     * 
     * @param time 服务器返回弹窗动作的时间，分位单位
     */
    public static void setIsToShowDialog(String time) {
        if (time == null) {
            return;
        }
        try {
            showTimeDistance = Long.parseLong(time) * 60 * 1000; // 这是服务器返回的时间戳周期
            calIsshowDialog();
        } catch (Exception e) {
            e.printStackTrace();
            // 捕捉异常
            return;
        }
    }

    /**
     * 计算是否弹出
     */
    private static boolean calIsshowDialog() {
        try {
            long dialogTime = SDKPereferenceUtil.getDialogTime(SDKControler.getContext()); // 这是上次弹窗的时间戳
            long currentTime = System.currentTimeMillis(); // 这是系统当前的时间戳
            // 2种情况下会进行弹窗，
            if (dialogTime == 0) {
                // 1，如果本地保存的上次弹窗时间为0，则之前从未进行过弹窗
                return true;
            } else if (currentTime - dialogTime >= showTimeDistance) {
                // 2，如果当前时间 - 上次弹窗时间 <=服务器返回的弹窗时间戳 =》弹窗
                return true;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 这是SDK调用了弹窗 如果sdk弹了绑定通行证的窗，则把弹窗的时间保存SP
     * 
     * @param time 进行弹窗动作的时间，时间戳
     */
    public static void setDialogTime() {
        // 保存弹窗的时间
        SDKPereferenceUtil.saveDialogTime(SDKControler.getContext(), System.currentTimeMillis());
    }
}
