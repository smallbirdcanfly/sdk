package com.pengyouwan.framework.http;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import javax.security.cert.CertificateException;
import javax.security.cert.X509Certificate;

import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.sdk.db.BehavioralOperator;
import com.pengyouwan.sdk.db.ErrorCollectOperator;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pyw.common.Constants;

/**
 * HttpURLConnection请求客户端
 * 
 * @author zhouq
 * 
 */
public class PYWHttpURLConnection {

	private static final String TAG = "PYWHttpURLConnection";

	private static PYWHttpURLConnection mHelper = null;

	private PYWHttpURLConnection() {
	}

	public static PYWHttpURLConnection getInstance() {
		if (mHelper == null) {
			synchronized (PYWHttpURLConnection.class) {
				if (mHelper == null) {
					mHelper = new PYWHttpURLConnection();
				}
			}
		}
		return mHelper;
	}

	private final static int CONNECT_TIME = 10000;
	private final static int READ_TIME = 10000;
	private final static String CHARACTER_ENCODING = "UTF-8";

	/**
	 * 发送post请求
	 * 
	 * @param urlstr
	 * @param encoding
	 * @param colData
	 * @return
	 * @throws IOException
	 */
	public String postRequest(String urlstr, String encoding,
			StringBuilder colData) throws IOException {

		LogUtil.d(TAG, "upload data: " + colData.toString());
		byte[] entity = colData.toString().getBytes();// 生成实体数据
		URL url = new URL(urlstr);
		HttpsURLConnection httpsConnection;
		HttpURLConnection httpConnection;
		DataOutputStream dos;
		if (url.getProtocol().toLowerCase().equals("https")) {
			httpsConnection = (HttpsURLConnection) getHttpURLConnection(urlstr,
					"POST");
			httpsConnection.setHostnameVerifier(DO_NOT_VERIFY);
			httpsConnection.setRequestProperty("Content-Length",
					String.valueOf(entity.length));
			httpsConnection.connect();

			dos = new DataOutputStream(httpsConnection.getOutputStream());
			dos.write(entity);
			dos.flush();
			dos.close();
			if (httpsConnection.getResponseCode() == 200) {// 成功返回处理数据
				if (urlstr.equals(Constants.URL_BEHAVIOR_COLLECTION)) {
					//用户行为信息上传成功后，把已经上传成功的数据删除
					BehavioralOperator.getInstance().clearTable();
				}else{
					//错误信息上传成功后，清表
					ErrorCollectOperator.getInstance().clearTable();
				}
				InputStream inStream = httpsConnection.getInputStream();
				byte[] number = readInputStream(inStream);
				try {
					number = AppUtil.decode(number);
				} catch (Exception e) {
					e.printStackTrace();
				}
				String json = new String(number);

				LogUtil.d(TAG, "json: " + json);
				return json;
			}
		} else {
			httpConnection = getHttpURLConnection(urlstr, "POST");
			httpConnection.setRequestProperty("Content-Length",
					String.valueOf(entity.length));
			httpConnection.connect();

			dos = new DataOutputStream(httpConnection.getOutputStream());
			dos.write(entity);
			dos.flush();
			dos.close();
			if (httpConnection.getResponseCode() == 200) {// 成功返回处理数据
				if (urlstr.equals(Constants.URL_BEHAVIOR_COLLECTION)) {
					//用户行为信息上传成功后，把已经上传成功的数据删除
					BehavioralOperator.getInstance().clearTable();
				}else{
					//错误信息上传成功后，清表
					ErrorCollectOperator.getInstance().clearTable();
				}
				InputStream inStream = httpConnection.getInputStream();
				byte[] number = readInputStream(inStream);
				try {
					number = AppUtil.decode(number);
				} catch (Exception e) {
					e.printStackTrace();
				}
				String json = new String(number);

				LogUtil.d(TAG, "json: " + json);
				return json;
			}
		}
		return null;
	}

	public String postRequest(String urlstr, StringBuilder colData)
			throws IOException {
		return postRequest(urlstr, CHARACTER_ENCODING, colData);
	}

	/**
	 * 发送GET请求
	 * 
	 * @param urlstr
	 * @return
	 * @throws IOException
	 * @throws Exception
	 */
	public String getRequest(String urlstr) throws Exception {
		HttpURLConnection connection = getHttpURLConnection(urlstr, "GET");

		if (connection.getResponseCode() == 200) {
			InputStream inStream = connection.getInputStream();
			byte[] number = readInputStream(inStream);
			String json = new String(number);
			return json;
		}
		return null;
	}

	private static HttpURLConnection getHttpURLConnection(String urlstr,
			String method) throws IOException {
		trustAllHosts();
		URL url = new URL(urlstr);
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		connection.setConnectTimeout(CONNECT_TIME);
		connection.setReadTimeout(READ_TIME);
		// Post请求必须设置允许输出 默认false
		connection.setDoOutput(true);
		// 设置请求允许输入 默认是true
		connection.setDoInput(true);
		// Post请求不能使用缓存
		connection.setUseCaches(false);
		connection.setRequestMethod(method);
		// 设置本次连接是否自动处理重定向
		connection.setInstanceFollowRedirects(true);

		// 头字段
		connection.setRequestProperty("Accept-Charset", "UTF-8");
		connection.setRequestProperty("Content-Type", "application/json");
		return connection;

	}

	/**
	 * 读取输入流数据 InputStream
	 * 
	 * @param inStream
	 * @return
	 * @throws IOException
	 */
	public static byte[] readInputStream(InputStream inStream)
			throws IOException {
		ByteArrayOutputStream outStream = new ByteArrayOutputStream();
		byte[] buffer = new byte[1024];
		int len = 0;
		while ((len = inStream.read(buffer)) != -1) {
			outStream.write(buffer, 0, len);
		}
		outStream.close();
		inStream.close();
		return outStream.toByteArray();
	}

	final static HostnameVerifier DO_NOT_VERIFY = new HostnameVerifier() {

		public boolean verify(String hostname, SSLSession session) {
			return true;
		}
	};

	/**
	 * Trust every server - dont check for any certificate
	 */
	private static void trustAllHosts() {
		// Create a trust manager that does not validate certificate chains
		TrustManager[] trustAllCerts = new TrustManager[] { new X509TrustManager() {

			public java.security.cert.X509Certificate[] getAcceptedIssuers() {
				return new java.security.cert.X509Certificate[] {};
			}

			public void checkClientTrusted(X509Certificate[] chain,
					String authType) throws CertificateException {
			}

			public void checkServerTrusted(X509Certificate[] chain,
					String authType) throws CertificateException {
			}

			@Override
			public void checkClientTrusted(
					java.security.cert.X509Certificate[] arg0, String arg1)
					throws java.security.cert.CertificateException {
				// TODO Auto-generated method stub

			}

			@Override
			public void checkServerTrusted(
					java.security.cert.X509Certificate[] arg0, String arg1)
					throws java.security.cert.CertificateException {
				// TODO Auto-generated method stub

			}
		} };

		// Install the all-trusting trust manager
		try {
			SSLContext sc = SSLContext.getInstance("TLS");
			sc.init(null, trustAllCerts, new java.security.SecureRandom());
			HttpsURLConnection
					.setDefaultSSLSocketFactory(sc.getSocketFactory());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
