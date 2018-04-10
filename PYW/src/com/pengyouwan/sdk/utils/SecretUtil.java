
package com.pengyouwan.sdk.utils;

/**
 * 描述:处理C端的交互文件
 *
 * @author TORNEY
 * @since 2015年10月20日 下午8:32:07
 */
public class SecretUtil {
    /**
     * 加密
     * 
     * @param data
     * @return
     */
    public static native byte[] doA(byte[] data);

    /**
     * 解密
     * 
     * @param data
     * @return
     */
    public static native byte[] doB(byte[] data);

    /**
     * 获取加密Key
     * 
     * @return
     */
    public static native String getA();
    
    public static native String getB();

    // 在C++中创建Java中的int数组，其中元素为 数组a中的对应元素乘以b
    static {
        System.loadLibrary("PywSec");// 注意这里为自己指定的.so文件，无lib前缀，亦无后缀
    }
}
