package com.pyw.plugin.excutecallback;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;

import org.json.JSONArray;
import org.json.JSONObject;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;

import com.pengyouwan.framework.http.PYWHttpURLConnection;
import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.sdk.db.BehavioralOperator;
import com.pengyouwan.sdk.db.ErrorCollectOperator;
import com.pengyouwan.sdk.entity.DynamicUrl;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.net.RequestQueueManager;
import com.pengyouwan.sdk.net.SuperInitRequest;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pyw.common.Constants;
import com.pyw.common.Utils;
import com.pyw.manager.PYWSDKManager;
import com.pyw.open.IDefListener;
import com.pyw.open.KeyCodes;
import com.pyw.plugin.PYWPluginExecutor.executeCallback;

/**
 * 初始化回调
 * 
 * @author zhj
 * 
 */
public class InitCallback implements executeCallback {
	protected static final String TAG = "InitCallback";
	private IDefListener listener;

	private PYWSDKManager mManager;

	protected InitCallback(IDefListener lis, PYWSDKManager manager) {
		this.listener = lis;
		this.mManager = manager;
	}

	@Override
	public void onExecutionSuccess(Object obj) {
		doBeforeInit();
	}

	private void doBeforeInit() {
		if (TextUtils.isEmpty(mManager.getGameKey()))
			return;
		SuperInitRequest req = new SuperInitRequest(DynamicUrl.BASE_URL + mManager.getGameKey() + ".txt",
				new Listener<String>() {
					@Override
					public void onResponse(String response) {
						if (!TextUtils.isEmpty(response)) {
							try {
								JSONObject jobj = new JSONObject(response);
								DynamicUrl.DYNAMIC_URL = jobj.getString("base_url");
								DynamicUrl.OWN_DYNAMIC_H5 = jobj.getString("pay_url");
								DynamicUrl.OWN_DYNAMIC_URL = jobj.getString("pyw_channel_url");
							} catch (Exception e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}
						// do actully init
						doNormalInit();
					}
				}, new ErrorListener() {

					@Override
					public void onErrorResponse(VolleyError error) {
						// do actully init
						doNormalInit();
					}
				});
		RequestQueueManager.getInstance().addToRequestQueue(req);
	}

	// 真正的初始化
	private void doNormalInit() {
		// 朋友玩初始化成功，调聚合SDK初始化接口获取渠道id
		HashMap<String, String> params = new HashMap<String, String>();
		String channelId = mManager.getDataInfo().optString(Constants.KEY_CONFIG_JSON_CHANNELID);
		params.put("gamekey", mManager.getGameKey() == null ? "" : mManager.getGameKey());
		params.put("channel_id", channelId);
		params.put("tid", AppUtil.getTid());
		// 执行聯網初始化請求
		RequestNetUtil.getInstance().request(params, Constants.URL_INIT, getNetworkListener(), new ErrorListener() {

			@Override
			public void onErrorResponse(VolleyError error) {

				LogUtil.e(TAG, "init failed,net error, volleyError message: " + error);
				if (listener != null) {
					listener.onFail(KeyCodes.ERROR_PARAMS_TRANSFORM,
							"init failed,net error, volleyError message: " + error);
				}
				mManager.isSucess = false;
				mManager.dismissProgress();
			}
		});

	}

	private Listener<String> getNetworkListener() {
		return new Listener<String>() {
			@Override
			public void onResponse(String response) {
				if (mManager == null)
					return;
				try {
					JSONObject jobj = new JSONObject(response);
					int ack = jobj.getInt("ack");
					if (ack == 200) {
						// 上传用户行为数据
						new Thread(new Runnable() {

							@Override
							public void run() {
								String behaviorData = BehavioralOperator
										.getInstance().getBehavioralDatas();
								if (!TextUtils.isEmpty(behaviorData)) {
									StringBuilder sBuilder = new StringBuilder(
											behaviorData);
									try {

										PYWHttpURLConnection
												.getInstance()
												.postRequest(
														Constants.URL_BEHAVIOR_COLLECTION,
														sBuilder);

									} catch (IOException e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
									}
								}
							}
						}).start();

						// 上传错误收集数据
						new Thread(new Runnable() {

							@Override
							public void run() {
								String errorCollectData = ErrorCollectOperator
										.getInstance().getErrorlogDatas();
								if (!TextUtils.isEmpty(errorCollectData)) {
									StringBuilder sBuilder = new StringBuilder(
											errorCollectData);
									try {
										PYWHttpURLConnection
												.getInstance()
												.postRequest(
														Constants.URL_ERROR_COLLECTION,
														sBuilder);
									} catch (IOException e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
									}
								}
							}
						}).start();

						JSONObject data = jobj.optJSONObject("data");
						if (data != null) {
							// 强更地址
							if (data.has("setup_file")) {
								String u = data.getString("setup_file");
								SDKControler.setUpdateUrl(u);
								if(!TextUtils.isEmpty(u)) {
									mManager.doUpdate();
									return;
								}
							}
							// 解析數據
							String gameId = data.optString("gameid");
							mManager.setGameId(gameId);
							String channelId = data.optString("channel_id");
							String apiSecret = data.optString("apisecret");
							if (!TextUtils.isEmpty(gameId) && !TextUtils.isEmpty(channelId)) {
								// 保存支付用参数
								HashMap<String, String> spayParams = mManager.getPayParams();
								if (null == spayParams) {
									spayParams = new HashMap<String, String>();
									spayParams.put("gameid", gameId);
									mManager.setPayParams(spayParams);
								}
								mManager.setLoginChannelId(channelId);
								if (mManager.toDefaulChannel(channelId)) {
									// 服務器返回朋友玩登錄，直接返回成功
									mManager.setCurrentChannel2PYW();
									if (listener != null) {
										listener.onSuccess();
									}
								} else {
									// 服務器返回三方渠道登錄，初始化三方渠道SDK
									if (null != mManager.getChannelPlugin()) {
										InitManager.getInstance().setGameId(gameId);// 朋友玩获取gameid
										InitManager.getInstance().setApisecret(apiSecret);// 朋友玩获取apiSecret
										executeOtherPlugin();
									} else {
										mManager.isSucess = false;
										// 找不到三方渠道插件则不进行初始化直接返回成功
										if (listener != null) {
											listener.onFail(0, "can not find other plugin!");
										}
									}
								}
							} else {
								if (listener != null) {
									mManager.isSucess = false;
									// 數據解析出錯
									listener.onFail(KeyCodes.ERROR_PARAMS_TRANSFORM,
											"init failed,response params analytic error");
								}
							}
						} else {
							if (listener != null) {
								mManager.isSucess = false;
								// 返回數據為空
								listener.onFail(KeyCodes.ERROR_CALLBACK_PARAMS, "init failed,response data is null");
							}
						}
					} else {
						if (listener != null) {
							// 聯網錯誤
							listener.onFail(0, "网络异常");
							mManager.isSucess = false;
						}
					}
				} catch (Exception e) {
					if (listener != null) {
						mManager.isSucess = false;
						listener.onFail(KeyCodes.ERROR_PARAMS_TRANSFORM,
								"init failed,response params analytic error.e: " + e);
					}

				} finally {
					mManager.dismissProgress();
				}
			}
		};
	}

	private void executeOtherPlugin() {
		JSONObject channelJson = new JSONObject();
		JSONArray sDataChannels = mManager.getDataChannels();
		if (sDataChannels != null) {
			for (int i = 0; i < sDataChannels.length(); i++) {
				JSONObject channel = sDataChannels.optJSONObject(i);
				if (null != channel) {
					if (!"pyw".equals(channel.opt("name"))) {
						channelJson = channel;
					}
				}
			}
		}
		HashMap<String, Object> channelData = new HashMap<String, Object>();
		if (null != channelJson) {
			try {
				channelData = (HashMap<String, Object>) Utils.getMapForJson(channelJson.toString());
			} catch (Exception e) {
				LogUtil.e(TAG, "init error,get pywsdk.data fail.e: " + e);
			}
		}
		if (listener != null) {
			mManager.executeNormalInit(channelData, listener);
		}
	}

	@Override
	public void onExecutionFailure(int failCode, String failMessage) {
		if (mManager == null)
			return;
		mManager.dismissProgress();
		LogUtil.e(TAG, "onExecutionFailure: " + failMessage);
		if (listener != null) {
			mManager.isSucess = false;
			listener.onFail(failCode, failMessage);
		}
	}

}
