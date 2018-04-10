package com.pyw.plugin.uc;

import java.util.Map;
import java.util.TreeMap;

public class SinUtils {

	public static String sign(Map<String, String> reqMap, String signKey) {
		// 将所有key按照字典顺序排序
		TreeMap<String, String> signMap = new TreeMap<String, String>(reqMap);
		StringBuilder stringBuilder = new StringBuilder(1024);
		for (Map.Entry<String, String> entry : signMap.entrySet()) {
			// sign和signType不参与签名
			if ("sign".equals(entry.getKey())
					|| "signType".equals(entry.getKey())) {
				continue;
			}
			// 值为null的参数不参与签名
			if (entry.getValue() != null) {
				stringBuilder.append(entry.getKey()).append("=")
						.append(entry.getValue());
			}
		}
		// 拼接签名秘钥
		stringBuilder.append(signKey);
		// 剔除参数中含有的'&'符号
		String signSrc = stringBuilder.toString().replaceAll("&", "");
		return MD5Util.md5(signSrc).toLowerCase();

	}
}