/**
 * 
 */

package com.pengyouwan.sdk.utils;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.security.KeyStore;
import java.util.Hashtable;

import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.CoreProtocolPNames;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HTTP;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.http.SSLSocketFactoryEx;
import com.pengyouwan.sdk.net.RequestPackage;

/**
 * 描述:强更下载文件工具
 * 
 * @author CJ
 * @since 2016-7-7 下午5:37:07
 */
public class DownloadUtil {
	/**
	 * 文件下载
	 * 
	 * @param requestPackage
	 * @param downloadListener
	 * @throws AppException
	 */
	public static void download(RequestPackage requestPackage,
			IDownloadListener downloadListener) throws AppException {
		HttpClient httpClient = null;
		HttpUriRequest uriReq = null;

		long fileSize = 0;
		try {
			httpClient = getHttpClient(requestPackage);
			uriReq = createHttpUriRequest(requestPackage);
			HttpResponse httpResponse = httpClient.execute(uriReq);
			int statusCode = httpResponse.getStatusLine().getStatusCode();
			if (statusCode != HttpStatus.SC_OK
					&& statusCode != HttpStatus.SC_CREATED
					&& statusCode != HttpStatus.SC_NO_CONTENT
					&& statusCode != HttpStatus.SC_PARTIAL_CONTENT) {
				throw AppException.http(statusCode);
			}

			fileSize = httpResponse.getEntity().getContentLength();
			BufferedInputStream bis = new BufferedInputStream(httpResponse
					.getEntity().getContent());
			byte[] data = new byte[8 * 1024];
			long haveRead = 0;
			int read = 0;
			int progress = 0;
			while ((read = bis.read(data)) != -1) {
				haveRead += read;
				if (fileSize > 0) {
					progress = (int) ((float) haveRead / fileSize * 100);
				}
				downloadListener.onProgressChanged(data, 0, read, progress);
			}
		} catch (IOException e) {
			// 发生网络异常
			// e.printStackTrace();
			throw AppException.network(e);
		} catch (Exception e) {
			// 保存数据时异常
			// e.printStackTrace();
			throw AppException.run(e);
		} finally {
			if (httpClient != null) {
				// 释放连接
				httpClient.getConnectionManager().shutdown();
			}
			httpClient = null;
		}
	}

	// 创建一个HttpClient对象
	private static HttpClient createHttpClient(RequestPackage requestPackage) {
		HttpClient client = new DefaultHttpClient();
		HttpParams httpParams = client.getParams();
		httpParams.setParameter(CoreProtocolPNames.USE_EXPECT_CONTINUE, false);

		Hashtable<String, Object> params = requestPackage.getSettings();
		if (params != null) {
			if (params.containsKey("conn-timeout")) {
				// 设置 连接超时时间
				HttpConnectionParams.setConnectionTimeout(httpParams,
						(Integer) params.get("conn-timeout"));
			}
			if (params.containsKey("socket-timeout")) {
				// 设置 读数据超时时间
				HttpConnectionParams.setSoTimeout(httpParams,
						(Integer) params.get("socket-timeout"));
			}
		}

		return client;
	}

	public static HttpClient getHttpClient(RequestPackage requestPackage) {
		HttpClient httpClient;
		Hashtable<String, Object> param = requestPackage.getSettings();
		try {
			KeyStore trustStore = KeyStore.getInstance(KeyStore
					.getDefaultType());
			trustStore.load(null, null);
			SSLSocketFactory sf = new SSLSocketFactoryEx(trustStore);
			sf.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER); // 允许所有主机的验证

			HttpParams params = new BasicHttpParams();

			HttpProtocolParams.setVersion(params, HttpVersion.HTTP_1_1);
			HttpProtocolParams.setContentCharset(params,
					HTTP.DEFAULT_CONTENT_CHARSET);
			HttpProtocolParams.setUseExpectContinue(params, true);

			// 设置连接管理器的超时
			ConnManagerParams.setTimeout(params, 10000);
			if (param.containsKey("conn-timeout")) {
				// 设置 连接超时时间
				HttpConnectionParams.setConnectionTimeout(params,
						(Integer) param.get("conn-timeout"));
			}
			if (param.containsKey("socket-timeout")) {
				// 设置 读数据超时时间
				HttpConnectionParams.setSoTimeout(params,
						(Integer) param.get("socket-timeout"));
			}

			// 设置http https支持
			SchemeRegistry schReg = new SchemeRegistry();
			schReg.register(new Scheme("http", PlainSocketFactory
					.getSocketFactory(), 80));
			schReg.register(new Scheme("https", sf, 443));

			ClientConnectionManager conManager = new ThreadSafeClientConnManager(
					params, schReg);

			httpClient = new DefaultHttpClient(conManager, params);
		} catch (Exception e) {
			e.printStackTrace();
			return new DefaultHttpClient();
		}

		return httpClient;
	}

	// 创建一个HttpUriRequest对象
	private static HttpUriRequest createHttpUriRequest(
			RequestPackage requestPackage) throws AppException {
		String prevUrl = requestPackage.getUrl();
		String params = requestPackage.getGetRequestParams();

		HttpUriRequest uriReq = null;
		if (requestPackage.getRequestType() == RequestPackage.TYPE_GET) {
			uriReq = new HttpGet(prevUrl + params);
		} else {
			uriReq = new HttpPost(prevUrl);
			// uriReq.setHeader("Content-Type", "multipart/form-data");
			((HttpPost) uriReq)
					.setEntity(requestPackage.getPostRequestEntity());
		}
		Hashtable<String, Object> settings = requestPackage.getSettings();
		if (settings != null) {
			if (settings.containsKey("socket-timeout")) {
				// 设置 读数据超时时间
				HttpConnectionParams.setSoTimeout(uriReq.getParams(),
						(Integer) settings.get("socket-timeout"));
			}
		}
		// 设置头
		Hashtable<String, String> headers = requestPackage.getRequestHeaders();
		if (headers != null && headers.size() > 0) {
			for (String key : headers.keySet()) {
				if (!"Connection".equalsIgnoreCase(key)) {
					// 屏弊自定义Connection
					uriReq.setHeader(key, headers.get(key));
				}
			}
		}
		uriReq.setHeader("Connection", "Keep-Alive");
		// uriReq.setHeader("User-Agent", getUserAgent());

		return uriReq;
	}

	/**
	 * 下载回调
	 */
	public interface IDownloadListener {

		void onProgressChanged(byte[] data, int offset, int length, int progress);
	}

}
