
package com.pengyouwan.sdk.manager;


import android.os.Environment;

import com.pengyouwan.sdk.utils.FileUtil;

/**
 * 描述:系统文件夹管理
 * 
 * @author zhj
 * @since 2015-6-5 上午11:29:13
 */
public class FolderManager {

    /**
     * sdcard
     */
    public static final String SDCARD_FOLDER = Environment.getExternalStorageDirectory().toString();

    /**
     * 应用目录
     */
    public static final String ROOT_FOLDER = SDCARD_FOLDER + "/pywSDK/";

    /**
     * 缓存目录
     */
    public static final String CACHE_FOLDER = ROOT_FOLDER + "cache/";

    /** 图片缓存目录 */
    public static final String IMAGE_CACHE_FOLDER = CACHE_FOLDER + ".image/";

    /** 其他监时文件缓存目录 */
    public static final String OTHER_CACHE_FOLDER = CACHE_FOLDER + "other/";

    /**
     * 日志目录
     */
    public static final String LOG_FOLDER = ROOT_FOLDER + "log/";

    /**
     * 配置目录
     */
    public static final String CONFIG_FOLDER = ROOT_FOLDER + "config/";

    /**
     * 临时文件后缀名
     */
    public static final String TEMP_FILE_EXT_NAME = ".temp";

    /**
     * 日志文件路径
     */
    public static final String LOG_FILE_PATH = LOG_FOLDER + "log.txt";

    /**
     * 初始化文件系统
     */
    public static void initSystemFolder() {
        boolean isSDCardAvailable = Environment.getExternalStorageState()
                .equals(Environment.MEDIA_MOUNTED);
        if (!isSDCardAvailable) {
            // 存储卡不可用，返回
            return;
        }
        checkFolder(ROOT_FOLDER);
        checkFolder(CACHE_FOLDER);
        checkFolder(IMAGE_CACHE_FOLDER);
        checkFolder(OTHER_CACHE_FOLDER);
        checkFolder(LOG_FOLDER);
        checkFolder(CONFIG_FOLDER);

    }

    // 检查文件夹，不存在或文件夹版本号不同时，会重新创建
    private static void checkFolder(String folder) {
        if (!FileUtil.isFileExist(folder)) {
            FileUtil.createFolder(folder, false);
        }
    }

}
