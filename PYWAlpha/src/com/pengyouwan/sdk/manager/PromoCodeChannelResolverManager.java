
package com.pengyouwan.sdk.manager;

import com.pengyouwan.sdk.utils.AppUtil;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

/**
 * 类描述:推广码和渠道的内容提供者管理类 作者：jqh 时间：2016/4/18
 */

public class PromoCodeChannelResolverManager {
    private final String sAuthority = "com.yunyou.pengyouwan.provider.DataProvider";

    private final Uri mUri = Uri.parse("content://" + sAuthority + "/promo_code_channel");

    private ContentResolver mContentResolver;

    private String NAME_PROMO_CODE = "promo_code";

    private String NAME_CHANNEL = "channel";

    public PromoCodeChannelResolverManager(Context context) {
        mContentResolver = context.getContentResolver();
    }

    public String[] query() {
        if (mContentResolver == null) {
            return null;
        }
        try {
            Cursor cursor = mContentResolver.query(mUri, new String[] {
                    NAME_PROMO_CODE, NAME_CHANNEL
            }, null, null, null);
            if (cursor != null) {
                if (cursor.moveToFirst()) {
                    String promoCode = cursor.getString(cursor.getColumnIndex(NAME_PROMO_CODE));
                    String channel = cursor.getString(cursor.getColumnIndex(NAME_CHANNEL));
                    cursor.close();
                    byte[] decodePromoCode = AppUtil.decode(promoCode.getBytes("ISO-8859-1"));
                    String resultPromoCode = new String(decodePromoCode, "ISO-8859-1");
                    resultPromoCode = URLDecoder.decode(resultPromoCode);

                    byte[] decodeChannel = AppUtil.decode(channel.getBytes("ISO-8859-1"));
                    String resultChannel = new String(decodeChannel, "ISO-8859-1");
                    resultChannel = URLDecoder.decode(resultChannel);

                    // 填坑..
                    if (resultPromoCode == null || resultPromoCode.contains("我是")) {
                        resultPromoCode = "";
                    }
                    if (resultChannel == null || resultChannel.contains("我是")) {
                        resultChannel = "";
                    }
                    return new String[] {
                            resultPromoCode, resultChannel
                    };
                }
                cursor.close();
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
