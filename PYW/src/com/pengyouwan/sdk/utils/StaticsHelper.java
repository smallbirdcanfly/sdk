package com.pengyouwan.sdk.utils;

import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import org.json.JSONException;
import org.json.JSONObject;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.utils.LogUtil;
import com.pengyouwan.sdk.db.StaticsOperator;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.protocol.LoginTimeUploadTask;

import android.text.TextUtils;
import android.util.Log;

/**
 * 数据上报辅助类，内部封装有线程池
 * 
 * @author zhj
 *
 */
public class StaticsHelper {

	public static int LAYZY_MODE = 0x001;

	public static int BUSY_MODE = LAYZY_MODE + 1;

	private int mMode = LAYZY_MODE;

	private StaticsObj mObj = new StaticsObj();

	private Timer mTimer;

	private boolean isOpen = false;

	public static String UPLOAD_URL = "";

	private int PERIOD = 3 * 60 * 1000;// 发送周期

	private static StaticsHelper mHelper = new StaticsHelper(LAYZY_MODE);

	public static StaticsHelper getInstance() {
		return mHelper;
	}

	private StaticsHelper(int mode) {
		this.mMode = mode;
	}

	/**
	 * 设置运行模式
	 * 
	 * @param m
	 */
	public void setMode(int m) {
		mMode = m;
	}

	public void init(boolean isOpen, String url, int period) {
		this.isOpen = isOpen;
		UPLOAD_URL = url;
		if (period < 3) {
			PERIOD = 3 * 60 * 1000;
			mMode = LAYZY_MODE;
		} else {
			PERIOD = period * 60 * 1000;
			mMode = BUSY_MODE;
		}
	}

	/**
	 * 上传db中所有未上报的数据 由于此方法亦是在timer线程中执行，因此会在执行操作完毕后，检测一次当前的上报模式，并对timer进行相应的模式重置
	 * 
	 * @param startTime
	 * @param endTime
	 */
	public void uploadData() {
		hadUpload = true;
		StaticsOperator mOp = StaticsOperator.getInstance();
		LoginTimeUploadTask task = new LoginTimeUploadTask() {
			@Override
			public void callback(HttpResponse httpResponse) {
				LoginTimeUploadResponse res = (LoginTimeUploadResponse) httpResponse;
				if (res.isOk()) {
					// 上报成功，删除db数据
					StaticsOperator.getInstance().clearTable();
				}
			}
		};

		List<String> list = mOp.getUnUploadDatas();
		if (list == null || list.size() == 0)
			return;

		String info = getDataFromList(list);
		try {
			task.uploadAll(info);
		} catch (AppException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private String getDataFromList(List<String> list) {
		StringBuilder sb = new StringBuilder();
		for (String str : list) {
			sb.append(str);
			sb.append(",");
		}
		sb.deleteCharAt(sb.length() - 1);
		return sb.toString();
	}

	/**
	 * 保存当前用户存活时间
	 */
	public void saveData() {
		if (mObj.account == null || mObj.startTime <= 0)
			return;

		long t = System.currentTimeMillis();
		if (t - mObj.startTime > 1000) {
			StaticsOperator mOp = StaticsOperator.getInstance();
			mOp.updateOrInsert(mObj.startTime + "", mObj.account, t + "");
		}
	}

	boolean hadUpload = false;

	/**
	 * 账号登录时调用，执行上报流程
	 */
	public void accountChange() {
		if (checkInit()) {
			hadUpload = false;
			SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
			if (user == null)
				return;
			String account = user.getUserName();
			// 避免短时间重复发送通知
			if (account.equals(mObj.account) && System.currentTimeMillis() - mObj.startTime < 1000) {
				return;
			}
			destroyTimer();
			// 更换账号，保存上个账号状态
			saveData();
			mObj.account = account;
			mObj.startTime = System.currentTimeMillis();
			doWorkSchdule();
		}else{
			destroyTimer();
		}
	}

	private boolean checkInit() {
		return isOpen && !TextUtils.isEmpty(UPLOAD_URL);
	}

	private void destroyTimer() {
		if (mTimer != null) {
			mTimer.cancel();
			mTimer.purge();
			mTimer = null;
		}
	}

	private boolean isFirstSchduleTime = true;// 是否首次进行实时上报

	public void doWorkSchdule() {
		mTimer = new Timer();
		mTimer.schedule(new TimerTask() {
			@Override
			public void run() {
				if (mMode == BUSY_MODE) {
					if (isFirstSchduleTime) {
						// 首次进行实时上报，进行一次db的缓存数据上报，避免长期实时上报模式下，导致db中缓存数据积压
						isFirstSchduleTime = false;
						uploadData();
					}
					schduleUpload();
				} else {
					saveData();
					if (!hadUpload) {
						uploadData();
					}
				}
			}
		}, 0, PERIOD);
	}

	private void schduleUpload() {
		if (mObj.startTime < 0)
			return;
		LoginTimeUploadTask task = new LoginTimeUploadTask() {
			@Override
			public void callback(HttpResponse httpResponse) {
				LoginTimeUploadResponse res = (LoginTimeUploadResponse) httpResponse;
				if (!res.isOk()) {
					// 上报失败，缓存数据
					saveData();
				}
			}
		};
		try {
			task.request(mObj.startTime + "", System.currentTimeMillis() + "");
		} catch (AppException e) {
			saveData();
			e.printStackTrace();
		}
	}

	private boolean isPasue = false;

	public void onBecameBackground() {
		isPasue = true;
		saveData();
		destroyTimer();
		mObj.startTime = -1;
	}

	public void onBecameForeground() {
		if (isPasue) {
			mObj.startTime = System.currentTimeMillis();
			accountChange();
			isPasue = false;
		}
	}

	/**
	 * 销毁helper的内部关联对象，关闭数据库连接等
	 */
	public void destroy() {
		destroyTimer();
		StaticsOperator.getInstance().destroy();
		mHelper = null;
	}

	public class StaticsObj {
		public String account;
		public long startTime;
	}
}
