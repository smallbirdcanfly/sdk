package com.pengyouwan.sdk.utils;

import android.os.CountDownTimer;
import android.text.TextUtils;

import com.pengyouwan.sdk.db.BehavioralOperator;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pyw.common.BehaviorConstants;

/**
 * 前台切后台超过一分钟 处理
 * 
 * @author px
 * 
 */
public class BehavioralHelper {
	private long startTime, currentTime;
	private static BehavioralHelper mHelper = null;
	private boolean isWrited = false;

	private BehavioralHelper() {
	}

	public static BehavioralHelper getInstance() {
		if (mHelper == null) {
			synchronized (BehavioralHelper.class) {
				if (mHelper == null) {
					mHelper = new BehavioralHelper();
				}
			}
		}
		return mHelper;
	}

	public void onBecameBackground() {
		startTime = System.currentTimeMillis();
		timer.start();
	}

	public void onBecameForeground() {
		if (startTime != 0 && isWrited == false) {
			currentTime = System.currentTimeMillis();
			if ((currentTime - startTime) > 1000 * 60) {
				// 往数据库写入数据
				if (!TextUtils.isEmpty(SDKControler.getPageName()))
					BehavioralHelper.getInstance().saveBehavior(
							Integer.parseInt(SDKControler.getPageName()),
							BehaviorConstants.BEHAVIORA.EXIT_PAGE,
							BehaviorConstants.TYPE.TYPE_EXIT_PAGE);
			} else {
				timer.cancel();
			}
		}
		isWrited = false;
		startTime = (long) 0;
	}

	public void saveBehavior(int pageNum, int behaviorNum, int typeNum) {
		SDKControler.setPageName(pageNum + "");
		// 往数据库写入数据
		BehavioralOperator.getInstance().insert(SDKControler.getPageName(),
				behaviorNum + "", typeNum + "");
	}

	private CountDownTimer timer = new CountDownTimer(60000, 1000) {

		@Override
		public void onTick(long millisUntilFinished) {

		}

		@Override
		public void onFinish() {
			// 往数据库写入数据
			if (!TextUtils.isEmpty(SDKControler.getPageName()))
				BehavioralHelper.getInstance().saveBehavior(
						Integer.parseInt(SDKControler.getPageName()),
						BehaviorConstants.BEHAVIORA.EXIT_PAGE,
						BehaviorConstants.TYPE.TYPE_EXIT_PAGE);
			isWrited = true;
			timer.cancel();

		}
	};
}
