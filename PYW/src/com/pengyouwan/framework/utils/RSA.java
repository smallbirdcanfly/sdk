
package com.pengyouwan.framework.utils;

import java.security.PublicKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;

import android.util.Log;

import com.pengyouwan.sdk.utils.Base64;
import com.pengyouwan.sdk.utils.RSAUtils;

public class RSA {

    public static final String PUBLIC_KEY = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnHws3kjOS+FumpUWtCcl9Hi2A"
            + "\r"
            + "MNcnXXES3uUloR83D6UnsTlyLATarYgFdmFXK67iB9MPtTYzYzQKRkPigBmmotCx"
            + "\r"
            + "JDheWVCnsnFEDTe+SSNnpa+zxNecT5vBR4PNcm8LfnFOcwjEYHGmjVMFWZxd+58U"
            + "\r"
            + "dsWdbH4GMM2lD8Ay7QIDAQAB" + "\r";

    // "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnHws3kjOS+FumpUWtCcl9Hi2AMNcnXXES3uUloR83D6UnsTlyLATarYgFdmFXK67iB9MPtTYzYzQKRkPigBmmotCxJDheWVCnsnFEDTe+SSNnpa+zxNecT5vBR4PNcm8LfnFOcwjEYHGmjVMFWZxd+58UdsWdbH4GMM2lD8Ay7QIDAQAB";

    /**
     * @param source
     * @return 如何返回值为 -1：表示加密失败
     */
    public static String encrypt(String source) {
        try {
            PublicKey puk = RSAUtils.getPublicKey(PUBLIC_KEY);

            byte[] cipher = RSAUtils.encrypt(puk, source.getBytes());
            String ciphertext = Base64.encodeBuffer(cipher);
            return ciphertext;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "-1";// -1表示加密失败
        }
    }
}
