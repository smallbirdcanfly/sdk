package com.pengyouwan.sdk.db;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;

import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.Base64;

/**
 * 行为统计操作类
 * 
 * @author px
 * 
 */
public class BehavioralOperator {
	private static long maxTime;
	private static BehavioralOperator mOperator = null;

	private BehavioralOperator() {
	}

	public static BehavioralOperator getInstance() {
		if (mOperator == null) {
			synchronized (StaticsOperator.class) {
				if (mOperator == null) {
					mOperator = new BehavioralOperator();
				}
			}
		}
		return mOperator;
	}

	/**
	 * 插入数据
	 * 
	 * @param pageName
	 * @param behavioralName
	 */
	public void insert(String pageName, String behavioralName, String type_sn) {
		SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
		ContentValues cv = new ContentValues();
		cv.put(BehavioralTable.CREAT_TIME, System.currentTimeMillis());
		cv.put(BehavioralTable.DEVICE,
				AppUtil.getImei(SDKControler.getContext()));
		cv.put(BehavioralTable.TYPE_SN, type_sn);
		cv.put(BehavioralTable.GAME_ID, InitManager.getInstance().getGameId());
		cv.put(BehavioralTable.PAGE_NAME, pageName);
		cv.put(BehavioralTable.BEHAVIORAL_NAME, behavioralName);
		cv.put(BehavioralTable.IP_NAME, AppUtil.getLocalIpAddress());
		if (user != null) {
			cv.put(BehavioralTable.ACCOUNT, TextUtils.isEmpty(user
					.getUserName()) ? "" : user.getUserName());
		} else {
			cv.put(BehavioralTable.ACCOUNT, "");
		}

		PYWDBHelper.getInstance().getWritableDatabase()
				.insert(BehavioralTable.TABLE_NAME, null, cv);
	}

	/**
	 * 获取所有行为统计数据
	 * 
	 * @return
	 */
	public String getBehavioralDatas() {
		Cursor c = PYWDBHelper
				.getInstance()
				.getReadableDatabase()
				.query(BehavioralTable.TABLE_NAME, null, null, null, null,
						null, BehavioralTable.CREAT_TIME, "150");
		if (c != null) {
			JSONArray ja = new JSONArray();
			try {
				for (c.moveToFirst(); !c.isAfterLast(); c.moveToNext()) {
					long creatTime = c.getLong(c
							.getColumnIndexOrThrow(BehavioralTable.CREAT_TIME));
					String device = c.getString(c
							.getColumnIndexOrThrow(BehavioralTable.DEVICE));
					String accountType = c.getString(c
							.getColumnIndexOrThrow(BehavioralTable.TYPE_SN));
					String gameId = c.getString(c
							.getColumnIndexOrThrow(BehavioralTable.GAME_ID));
					String pageName = c.getString(c
							.getColumnIndexOrThrow(BehavioralTable.PAGE_NAME));
					String ip = c.getString(c
							.getColumnIndexOrThrow(BehavioralTable.IP_NAME));
					String behavioralName = c
							.getString(c
									.getColumnIndexOrThrow(BehavioralTable.BEHAVIORAL_NAME));
					String account = c.getString(c
							.getColumnIndexOrThrow(BehavioralTable.ACCOUNT));
					String data = getJsonObject(creatTime, device, accountType,
							gameId, pageName, behavioralName, ip, account)
							.toString();
					ja.put(new String(Base64.encode(AppUtil.encode(data
							.getBytes("ISO-8859-1"))), "ISO-8859-1"));
					if (maxTime < creatTime)
						maxTime = creatTime;
				}
			} catch (Exception e) {
				LogUtil.d("error  " + e.toString());
			}
			c.close();
			if (ja.length() > 0) {
				return ja.toString();
			} else {
				return "";
			}
		}
		return "";
	}

	private JSONObject getJsonObject(long creatTime, String device,
			String accountType, String gameId, String pageName,
			String behavioralName, String ip, String account) {
		JSONObject jobj = new JSONObject();
		try {
			String channel = SDKControler.getSDKConfig().getChannel();
			String promo = SDKControler.getSDKConfig().getPromo();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			Date date = new Date(creatTime);
			LogUtil.d("creatTime",
					"creatTime: " + simpleDateFormat.format(date));
			jobj.put("action_time", simpleDateFormat.format(date));
			jobj.put("imei", device);
			jobj.put("type_sn", accountType);
			jobj.put("game_id", gameId);
			jobj.put("page_sn", pageName);
			jobj.put("action_sn", behavioralName);
			jobj.put("os", "ANDROID");
			jobj.put("channel_id", "17");
			jobj.put("promo_code", TextUtils.isEmpty(promo) ? "" : promo);
			jobj.put("promo_channel", TextUtils.isEmpty(channel) ? "pyw"
					: channel);
			jobj.put("ip", ip);
			jobj.put("account", account);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jobj;

	}

	/**
	 * 删除所有数据
	 */
	public void clearTable() {
		PYWDBHelper
				.getInstance()
				.getWritableDatabase()
				.delete(BehavioralTable.TABLE_NAME,
						BehavioralTable.CREAT_TIME + " <= ?",
						new String[] { maxTime + "" });
	}

	public synchronized void destroy() {
		PYWDBHelper.getInstance().close();
		PYWDBHelper.destroy();
		mOperator = null;
	}
}
