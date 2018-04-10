
package com.pyw.pengyouwan.h5.demo;


import com.pyw.open.PYWPoxyApplication;

/**
 * 描述:自定义Application，需要在AndroidManifest.xml的<application>中指定本类名
 *
 * @since 2015年9月23日 下午3:36:53
 */
public class DemoApplication extends PYWPoxyApplication {

    @Override
    public void onCreate() {
        super.onCreate();
        //h5版本的sdk无需再application初始化 -- zhj
//        SDKConfig sdkconfig = new SDKConfig();
//        /** 必填**，请替换成朋友玩提供的GameKey,此处为测试值 **/
//        sdkconfig.setGameKey("258c1dc4");
//
//        PYWPlatform.initSDK(this, sdkconfig, new SDKEventListener(this));
    }
}
