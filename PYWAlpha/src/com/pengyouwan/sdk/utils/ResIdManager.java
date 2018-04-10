
package com.pengyouwan.sdk.utils;

import android.content.Context;

/**
 * 描述:资源id转换类
 *
 * @author zhj
 * @since 2015年9月22日 下午9:27:40
 */
public class ResIdManager {

    /**
     * 获取layout
     * 
     * @param context
     * @param resName
     * @return
     */
    public static int getLayoutId(Context context, String resName) {
        return getId(resName, "layout", context);
    }

    /**
     * 获取string
     * 
     * @param context
     * @param resName
     * @return
     */
    public static int getStringId(Context context, String resName) {
        return getId(resName, "string", context);
    }

    /**
     * 获取drawable
     * 
     * @param context
     * @param resName
     * @return
     */
    public static int getDrawableId(Context context, String resName) {
        return getId(resName, "drawable", context);
    }

    /**
     * 获取style
     * 
     * @param context
     * @param resName
     * @return
     */
    public static int getStyleId(Context context, String resName) {
        return getId(resName, "style", context);
    }

    /**
     * 获取id
     * 
     * @param context
     * @param resName
     * @return
     */
    public static int getId(Context context, String resName) {
        return getId(resName, "id", context);
    }

    /**
     * 获取color
     * 
     * @param context
     * @param resName
     * @return
     */
    public static int getColorId(Context context, String resName) {
        return getId(resName, "color", context);
    }

    /**
     * 获取anim
     * 
     * @param context
     * @param resName
     * @return
     */
    public static int getAnimId(Context context, String resName) {
        return getId(resName, "anim", context);
    }

    public static int getAttrId(Context context, String resName) {
        return getId(resName, "attr", context);
    }

    public static int getId(String resName, String kindStr, Context context) {
        if (context.getResources().getIdentifier(resName, kindStr, context.getPackageName()) == 0) {
            try {
                throw new Exception("can not find resources id");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return context.getResources().getIdentifier(resName, kindStr, context.getPackageName());
    }
}
