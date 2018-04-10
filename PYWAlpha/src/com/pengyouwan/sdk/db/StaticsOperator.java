package com.pengyouwan.sdk.db;

import java.util.ArrayList;
import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

import android.content.ContentValues;
import android.database.Cursor;

/**
 * 统计表操作类 单例
 * 
 * @author zhj
 *
 */
public class StaticsOperator {

	private static StaticsOperator mOperator = null;

	private StaticsOperator() {
	}

	public static StaticsOperator getInstance() {
		if (mOperator == null) {
			synchronized (StaticsOperator.class) {
				if (mOperator == null) {
					mOperator = new StaticsOperator();
				}
			}
		}
		return mOperator;
	}

	/**
	 * 插入值
	 * 
	 * @param startTime
	 */
	public void insert(String startTime, String account,String endTime) {
		ContentValues cv = new ContentValues();
		cv.put(StaticsTable.ACCOUNT, account);
		cv.put(StaticsTable.START_AT, startTime);
		cv.put(StaticsTable.END_TIME, endTime);
		PYWDBHelper.getInstance().getWritableDatabase().insert(StaticsTable.TABLE_NAME, null, cv);
	}

	/**
	 * 获取未上报的数据
	 */
	public List<String> getUnUploadDatas() {
		Cursor c = PYWDBHelper.getInstance().getReadableDatabase().query(StaticsTable.TABLE_NAME,
				null, null, null, null, null, null);
		if (c != null) {
			List<String> infos = new ArrayList<String>(c.getCount());
			try {
				for (c.moveToFirst(); !c.isAfterLast(); c.moveToNext()) {
					String account = c.getString(c.getColumnIndexOrThrow(StaticsTable.ACCOUNT));
					String sTime = c.getString(c.getColumnIndexOrThrow(StaticsTable.START_AT));
					String eTime = c.getString(c.getColumnIndexOrThrow(StaticsTable.END_TIME));
					infos.add(getJsonList(eTime,account,sTime));
				}
			} catch (Exception e) {
				// ToastUtil.showMsg("用户数据解析失败");
			}
			c.close();
			return infos;
		}
		return null;
	}
	
	private String getJsonList(String endTime, String username, String startTime) {
		JSONObject jobj = new JSONObject();
		try {
			jobj.put("account", username);
			jobj.put("endTime", endTime);
			jobj.put("startTime", startTime);
		} catch (JSONException e) {
			e.printStackTrace();
		}
		return jobj.toString();
	}

	/**
	 * 删除所有数据
	 */
	public void clearTable() {
		PYWDBHelper.getInstance().getWritableDatabase().delete(StaticsTable.TABLE_NAME, null, null);
	}

	/**
	 * 更新
	 */
	public void updateOrInsert(String startTime, String account,String endTime) {
		ContentValues cv = new ContentValues();
		cv.put(StaticsTable.ACCOUNT, account);
		cv.put(StaticsTable.START_AT, startTime);
		cv.put(StaticsTable.END_TIME, endTime);
		int line = PYWDBHelper.getInstance().getWritableDatabase().update(StaticsTable.TABLE_NAME, cv,
				StaticsTable.START_AT + "=? and "+ StaticsTable.ACCOUNT+" =?", new String[] { startTime,account });
		if(line<1){
			PYWDBHelper.getInstance().getWritableDatabase().insert(StaticsTable.TABLE_NAME, null, cv);
		}
	}
	
	
	public synchronized void destroy(){
		PYWDBHelper.getInstance().close();
		PYWDBHelper.destroy();
		mOperator = null;
	}
}
