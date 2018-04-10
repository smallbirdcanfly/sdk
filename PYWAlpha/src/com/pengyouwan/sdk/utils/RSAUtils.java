/**
 * Copyright 2011-2014 Com4loves.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.pengyouwan.sdk.utils;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.security.spec.X509EncodedKeySpec;

import javax.crypto.Cipher;

import org.apache.commons.codec.CharEncoding;
import org.apache.commons.lang3.StringUtils;
import org.bouncycastle.jce.provider.BouncyCastleProvider;


/**
 * @author Zero.zhao
 * 
 */
public class RSAUtils {
	private static String RSAKeyStore = "c:/RSAKey.txt";

	private static BouncyCastleProvider provider = new BouncyCastleProvider();

	// Modified by Zhao Tianchuang 2014-06-30 22:23:59 增加字节数据转字符串专用集合
	/** 字节数据转字符串专用集合 */
	private static final char[] HEX_CHAR = { '0', '1', '2', '3', '4', '5', '6',
			'7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };

	// private static Provider provider = null;
	//
	// private static Cipher cipher = null;
	//
	// static {
	// // provider = new BouncyCastleProvider();
	// try {
	// cipher = Cipher.getInstance("RSA",
	// new org.bouncycastle.jce.provider.BouncyCastleProvider());
	// } catch (NoSuchAlgorithmException e) {
	// e.printStackTrace();
	// } catch (NoSuchPaddingException e) {
	// e.printStackTrace();
	// }
	// }

	/**
	 * 生成密钥对
	 * 
	 * @return
	 * @throws Exception
	 */
	public static KeyPair generateKeyPair() throws Exception {
		return generateKeyPair(RSAKeyStore);
	}

	/**
	 * 生成密钥对
	 * 
	 * @param rsaKeyStore
	 *            密钥文件地址
	 * @return
	 * @throws Exception
	 */
	public static KeyPair generateKeyPair(String rsaKeyStore) throws Exception {
		try {
			KeyPairGenerator keyPairGen = KeyPairGenerator.getInstance("RSA",
					new BouncyCastleProvider());

			final int KEY_SIZE = 1024; // 这个值关系到块加密的大小,可以更改,但是不要太大,否则效率会降低
			keyPairGen.initialize(KEY_SIZE, new SecureRandom());

			KeyPair keyPair = keyPairGen.generateKeyPair();

			System.err.println(keyPair.getPrivate());
			System.err.println(keyPair.getPublic());

			saveKeyPair(keyPair, rsaKeyStore);

			return keyPair;

		} catch (Exception e) {
			throw new Exception(e.getMessage());
		}
	}

	/**
	 * 得到密钥
	 * 
	 * @return
	 * @throws Exception
	 */
	public static KeyPair getKeyPair() throws Exception {
		return getKeyPair(RSAKeyStore);
	}

	/**
	 * 得到密钥
	 * 
	 * @param rsaKeyStore
	 * @return
	 * @throws Exception
	 */
	public static KeyPair getKeyPair(String rsaKeyStore) throws Exception {
		FileInputStream fis = new FileInputStream(rsaKeyStore);
		ObjectInputStream ois = new ObjectInputStream(fis);
		KeyPair keyPair = (KeyPair) ois.readObject();
		ois.close();
		fis.close();

		return keyPair;
	}

	private static void saveKeyPair(KeyPair keyPair, String rsaKeyStore)
			throws Exception {
		FileOutputStream fos = new FileOutputStream(rsaKeyStore);
		ObjectOutputStream oos = new ObjectOutputStream(fos);
		// 生成密钥
		oos.writeObject(keyPair);
		oos.close();
		fos.close();
	}

	/**
	 * 生成公钥
	 * 
	 * @param modules
	 * @param publicExponent
	 * @return
	 * @throws Exception
	 */
	public static RSAPublicKey generateRSAPublicKey(byte[] modules,
			byte[] publicExponent) throws Exception {
		KeyFactory keyFactory = null;
		try {
			keyFactory = KeyFactory.getInstance("RSA",
					new BouncyCastleProvider());
		} catch (NoSuchAlgorithmException e) {
			throw new Exception(e.getMessage());
		}

		RSAPublicKeySpec pubKeySpec = new RSAPublicKeySpec(new BigInteger(
				modules), new BigInteger(publicExponent));

		try {
			return (RSAPublicKey) keyFactory.generatePublic(pubKeySpec);
		} catch (InvalidKeySpecException e) {
			throw new Exception(e.getMessage());
		}
	}

	/**
	 * 生成私钥
	 * 
	 * @param modulus
	 * @param privateExponent
	 * @return
	 * @throws Exception
	 */
	public static RSAPrivateKey generateRSAPrivateKey(byte[] modulus,
			byte[] privateExponent) throws Exception {
		KeyFactory keyFac = null;
		try {
			keyFac = KeyFactory.getInstance("RSA",
					new org.bouncycastle.jce.provider.BouncyCastleProvider());
		} catch (NoSuchAlgorithmException ex) {
			throw new Exception(ex.getMessage());
		}

		RSAPrivateKeySpec priKeySpec = new RSAPrivateKeySpec(new BigInteger(
				modulus), new BigInteger(privateExponent));
		try {
			return (RSAPrivateKey) keyFac.generatePrivate(priKeySpec);
		} catch (InvalidKeySpecException ex) {
			throw new Exception(ex.getMessage());
		}
	}

	/**
	 * 加密
	 * 
	 * @param pk
	 * @param data
	 * @return
	 * @throws Exception
	 */
	public static byte[] encrypt(PublicKey pk, byte[] data) throws Exception {
		try {

			Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
			cipher.init(Cipher.ENCRYPT_MODE, pk);
//			return cipher.doFinal(data);
////			int blockSize = cipher.getBlockSize();// 获得加密块大小，如：加密前数据为128个byte，而key_size=1024
			int blockSize = data.length;
			ByteArrayOutputStream bout = new ByteArrayOutputStream(64);
			int j = 0;

			while (data.length - j * blockSize > 0) {
				bout.write(cipher.doFinal(data, j * blockSize, blockSize));
				j++;
			}
			byte[] results = bout.toByteArray();
			if (bout != null)
				bout.close();
			return results;
			
//			// 加密块大小为127
//			// byte,加密后为128个byte;因此共有2个加密块，第一个127
//			// byte第二个为1个byte
//			int outputSize = cipher.getOutputSize(data.length);// 获得加密块加密后块大小
//			int leavedSize = data.length % blockSize;
//			int blocksSize = leavedSize != 0 ? data.length / blockSize + 1
//					: data.length / blockSize;
//			byte[] raw = new byte[outputSize * blocksSize];
//			int i = 0;
//			while (data.length - i * blockSize > 0) {
//				if (data.length - i * blockSize > blockSize)
//					cipher.doFinal(data, i * blockSize, blockSize, raw, i
//							* outputSize);
//				else
//					cipher.doFinal(data, i * blockSize, data.length - i
//							* blockSize, raw, i * outputSize);
//				// 这里面doUpdate方法不可用，查看源代码后发现每次doUpdate后并没有什么实际动作除了把byte[]放到
//				// ByteArrayOutputStream中，而最后doFinal的时候才将所有的byte[]进行加密，可是到了此时加密块大小很可能已经超出了
//				// OutputSize所以只好用dofinal方法。
//
//				i++;
//			}
//			return raw;
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		}
	}

	// Modified by Zhao Tianchuang 2014-06-30 22:10:00 增加RSA公钥解密
	/**
	 * 公钥解密
	 * 
	 * @param pk
	 *            解密的密钥
	 * @param raw
	 *            已经加密的数据
	 * @return 解密后的明文
	 * @throws Exception
	 */
	public static byte[] decrypt(PublicKey pk, byte[] raw) throws Exception {
		try {
			Cipher cipher = Cipher.getInstance("RSA", provider);
			// Cipher cipher = Cipher.getInstance("RSA",
			// new org.bouncycastle.jce.provider.BouncyCastleProvider());

			cipher.init(Cipher.DECRYPT_MODE, pk);
			// Modified by Zhao Tianchuang 2012-11-22 修改解密raw字符长度问题
			// int blockSize = cipher.getBlockSize();
			int blockSize = raw.length;
			ByteArrayOutputStream bout = new ByteArrayOutputStream(64);
			int j = 0;

			while (raw.length - j * blockSize > 0) {
				bout.write(cipher.doFinal(raw, j * blockSize, blockSize));
				j++;
			}
			byte[] results = bout.toByteArray();
			if (bout != null)
				bout.close();
			return results;
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		}
	}

	/**
	 * 私钥解密
	 * 
	 * @param key
	 *            解密的密钥
	 * @param raw
	 *            已经加密的数据
	 * @return 解密后的明文
	 * @throws Exception
	 */
	public static byte[] decrypt(PrivateKey pk, byte[] raw) throws Exception {

		try {
			Cipher cipher = Cipher.getInstance("RSA", provider);
			// Cipher cipher = Cipher.getInstance("RSA",
			// new org.bouncycastle.jce.provider.BouncyCastleProvider());

			cipher.init(Cipher.DECRYPT_MODE, pk);
			// Modified by Zhao Tianchuang 2012-11-22 修改解密raw字符长度问题
			// int blockSize = cipher.getBlockSize();
			int blockSize = raw.length;
			ByteArrayOutputStream bout = new ByteArrayOutputStream(64);
			int j = 0;

			while (raw.length - j * blockSize > 0) {
				bout.write(cipher.doFinal(raw, j * blockSize, blockSize));
				j++;
			}
			byte[] results = bout.toByteArray();
			if (bout != null)
				bout.close();
			return results;
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		}
	}

	/**
	 * 解密
	 * 
	 * @param key
	 *            解密的密钥
	 * @param raw
	 *            已经加密的数据
	 * @return 解密后的明文
	 * @throws Exception
	 */
	public static byte[] defaultDecrypt(PublicKey pk, byte[] raw)
			throws Exception {

		try {
			Cipher cipher = Cipher.getInstance("RSA");

			cipher.init(Cipher.DECRYPT_MODE, pk);
			// Modified by Zhao Tianchuang 2012-11-22 修改解密raw字符长度问题
			// int blockSize = cipher.getBlockSize();
			int blockSize = raw.length;
			ByteArrayOutputStream bout = new ByteArrayOutputStream(64);
			int j = 0;

			while (raw.length - j * blockSize > 0) {
				bout.write(cipher.doFinal(raw, j * blockSize, blockSize));
				j++;
			}
			byte[] results = bout.toByteArray();
			if (bout != null)
				bout.close();
			return results;
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		}
	}

	/**
	 * 解密
	 * 
	 * @param key
	 *            解密的密钥
	 * @param raw
	 *            已经加密的数据
	 * @return 解密后的明文
	 * @throws Exception
	 */
	public static byte[] defaultDecrypt(PrivateKey pk, byte[] raw)
			throws Exception {

		try {
			Cipher cipher = Cipher.getInstance("RSA");

			cipher.init(Cipher.DECRYPT_MODE, pk);
			// Modified by Zhao Tianchuang 2012-11-22 修改解密raw字符长度问题
			// int blockSize = cipher.getBlockSize();
			int blockSize = raw.length;
			ByteArrayOutputStream bout = new ByteArrayOutputStream(64);
			int j = 0;

			while (raw.length - j * blockSize > 0) {
				bout.write(cipher.doFinal(raw, j * blockSize, blockSize));
				j++;
			}
			byte[] results = bout.toByteArray();
			if (bout != null)
				bout.close();
			return results;
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		}
	}

	public static byte[] hex2byte(String hex) throws IllegalArgumentException {
		if (hex.length() % 2 != 0) {
			throw new IllegalArgumentException();
		}
		char[] arr = hex.toCharArray();
		byte[] b = new byte[hex.length() / 2];
		for (int i = 0, j = 0, l = hex.length(); i < l; i++, j++) {
			String swap = "" + arr[i++] + arr[i];
			int byteint = Integer.parseInt(swap, 16) & 0xFF;
			b[j] = new Integer(byteint).byteValue();
		}
		return b;
	}

	public static String byte2hex(byte[] b) {
		String hs = "";
		String stmp = "";
		for (int i = 0; i < b.length; i++) {
			stmp = Integer.toHexString(b[i] & 0xFF);
			if (stmp.length() == 1) {
				hs += "0" + stmp;
			} else {
				hs += stmp;
			}
		}
		// return hs;
		return hs.toUpperCase();
	}

	/**
	 * 字节数据转成十六进制字符串
	 * 
	 * @param data
	 * @return
	 */
	public static String byteArrayToString(byte[] data) {
		StringBuilder builder = new StringBuilder();
		for (int i = 0; i < data.length; i++) {
			// 取出字节的高四位 作为索引得到相应的十六进制标识符 注意无符号右移
			builder.append(HEX_CHAR[(data[i] & 0xf0) >>> 4]);
			// 取出字节的低四位 作为索引得到相应的十六进制标识符
			builder.append(HEX_CHAR[(data[i] & 0x0f)]);
			if (i < data.length - 1) {
				builder.append(' ');
			}
		}
		return builder.toString();
	}

	/**
	 * 得到公钥
	 * 
	 * @param key
	 *            密钥字符串(经过Base64编码)
	 * @return
	 * @throws Exception
	 */
	public static PublicKey getPublicKey(String key) throws Exception {
		// Modify by Lichengxiang 使用替代品，去掉sun.misc带来的可能在未来版本删除的警告
		// byte[] encodedKey = new BASE64Decoder().decodeBuffer(key);
		byte[] encodedKey = Base64.decodeBuffer(key);

		X509EncodedKeySpec keySpec = new X509EncodedKeySpec(encodedKey);
		KeyFactory keyFactory = KeyFactory.getInstance("RSA");
		PublicKey publicKey = keyFactory.generatePublic(keySpec);
		return publicKey;
	}

	/**
	 * 得到私钥
	 * 
	 * @param key
	 *            密钥字符串(经过Base64编码)
	 * @return
	 * @throws Exception
	 */
	public static PrivateKey getPrivateKey(String key) throws Exception {
		// Modify by Lichengxiang 使用替代品，去掉sun.misc带来的可能在未来版本删除的警告
		// byte[] encodedKey = new BASE64Decoder().decodeBuffer(key);
		byte[] encodedKey = Base64.decodeBuffer(key);
		PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(encodedKey);
		KeyFactory keyFactory = KeyFactory.getInstance("RSA");
		PrivateKey privateKey = keyFactory.generatePrivate(keySpec);
		return privateKey;
	}

	/**
	 * 得到密钥字符串(经过base64编码)
	 * 
	 * @param key
	 * @return
	 * @throws Exception
	 */
	public static String getKeyString(Key key) throws Exception {
		byte[] keyBytes = key.getEncoded();
		// Modify by Lichengxiang 使用替代品，去掉sun.misc带来的可能在未来版本删除的警告
		// String s = (new BASE64Encoder()).encode(keyBytes);
		String s = Base64.encodeBufferWithoutEnd(keyBytes);
		return s;
	}

	public static String loadKey(String store) throws Exception {

		File file = new File(store);
		FileInputStream in = new FileInputStream(file);

		BufferedReader reader = new BufferedReader(new InputStreamReader(in));

		try {
			String readLine = null;
			StringBuffer buffer = new StringBuffer();
			while ((readLine = reader.readLine()) != null) {
				if (readLine.charAt(0) == '-') {
					continue;
				} else {
					buffer.append(readLine);
					buffer.append('\r');
				}
			}

			return buffer.toString();

		} catch (Exception e) {
			throw e;
		} finally {
			reader.close();
			in.close();
		}
	}
	
	/**
	 * RSA签名
	 * 
	 * @param content
	 *            待签名数据
	 * @param privateKey
	 *            商户私钥
	 * @param encode
	 *            字符集编码
	 * @return 签名值
	 * @throws IOException
	 * @throws NoSuchAlgorithmException
	 * @throws InvalidKeySpecException
	 * @throws SignatureException
	 * @throws InvalidKeyException
	 */
	public static String sign(String content, String privateKey, String encode) throws IOException,
			NoSuchAlgorithmException, InvalidKeySpecException, SignatureException, InvalidKeyException {
		String charset = CharEncoding.UTF_8;
		if (!StringUtils.isBlank(encode)) {
			charset = encode;
		}
		PKCS8EncodedKeySpec priPKCS8 = new PKCS8EncodedKeySpec(Base64.decode(privateKey.getBytes()));
		KeyFactory keyf = KeyFactory.getInstance("RSA");
		PrivateKey priKey = keyf.generatePrivate(priPKCS8);

		java.security.Signature signature = java.security.Signature.getInstance("SHA1WithRSA");
		signature.initSign(priKey);
		signature.update(content.getBytes(charset));
		byte[] signed = signature.sign();
		return Base64.encodeBuffer(signed);

	}
}
