package com.pengyouwan.sdk.manager;

import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.sdk.db.UserOperator;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.open.ISDKEventCode;
import com.pengyouwan.sdk.open.ISDKEventExtraKey;
import com.pengyouwan.sdk.protocol.InitTask;
import com.pengyouwan.sdk.protocol.LoginNoPwdTask;
import com.pengyouwan.sdk.protocol.LoginTask;
import com.pengyouwan.sdk.ui.dialog.CustomProgressDialog;
import com.pengyouwan.sdk.ui.dialog.LoginDialog;
import com.pengyouwan.sdk.ui.dialog.LoginingDialog;
import com.pengyouwan.sdk.ui.dialog.NewAccountLoginDialog;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ToastUtil;
import com.yunyou.pengyouwan.service.IDataInterface;

/**
 * 描述:登录管理器 登录相关入口以及判读均在此操作
 * 
 * @author CJ
 * @since 2016-6-30 下午2:21:29
 */
public class LoginManager {
	private Activity mActivity;

	private SDKUser mSelectUser;

	private List<SDKUser> mUsers;

	private CustomProgressDialog progressDialog;

	private IDataInterface mIDataInterface;

	private boolean isLoginable = true;// 是否能登录，防止二次点击

	// 单例
	private static class LoginManagerHolder {
		private static LoginManager INSTANCE = new LoginManager();
	}

	public static LoginManager getInstance() {
		return LoginManagerHolder.INSTANCE;
	}

	// 判断是否绑定了服务
	private boolean isBindService = false;

	private ServiceConnection mServiceConnection = new ServiceConnection() {

		@Override
		public void onServiceConnected(ComponentName name, IBinder service) {// 绑定成功
			mIDataInterface = IDataInterface.Stub.asInterface(service);
			aidlGetUserInfo();
		}

		@Override
		public void onServiceDisconnected(ComponentName name) {

		}
	};

	/**
	 * 登录方法入口
	 * 
	 * @param activity
	 */
	public void login(Activity activity) {
		mActivity = activity;
		if (isLoginable) {
			checkInit();
		}
	}

	/**
	 * 检查初始化
	 */
	private void checkInit() {
		showProgress();
		try {
			isLoginable = false;
			if (!InitManager.getInstance().isValid()) {// 未初始化
				InitTask mTask = new InitTask() {
					public void callback(HttpResponse httpResponse) {
						InitResponse mResponse = (InitResponse) httpResponse;
						if (mResponse != null) {
							if (mResponse.isOk()) {
								// 初始化成功判断强更
								// if
								// (!TextUtils.isEmpty(SDKControler.getUpdateUrl()))
								// {
								// new DownloadProgressDialog(mActivity,
								// SDKControler.getUpdateUrl()).show();
								// } else {
								// // 检查完成之后判断登录
								checkLoginType();
								// }
							} else {
								dismissProgress();
								String msg = mResponse.getMsg();
								ToastUtil.showMsg(msg == null ? "登录失败" : msg);
								initFail(msg == null ? "登录失败" : msg);
							}
						}
					}
				};
				mTask.request(SDKControler.getGameKey(), mActivity);
			} else {
				// 检查完成之后判断登录
				checkLoginType();
			}
		} catch (AppException e) {
			e.printStackTrace();
			dismissProgress();
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			loginFail("错误类型:" + e.getType() + ",code:" + e.getCode());
		}
	}

	/**
	 * 检查登录方式 DB缓存--APP缓存--登录Dialog
	 */
	private void checkLoginType() {
		if (UserManager.getInstance().getChangeAccountType() == UserManager.CHANGE_ACCOUNT_OHTHER) {// 若是游戏管理的切换账号
			doLoginForChangeAccount();
		} else {
			if (!initLastLoginUserInfo()
					&& !UserManager.getInstance().isChangeAccount()) {
				// 有缓存账号,且不是调用了sdk切换账号
				if (TextUtils.isEmpty(mSelectUser.getPwd())) {// 获取上次的账号，但是无密码，代表是服务器返回的列表
					showLoginDialog();
				} else {
					doLogin();
				}
			} else {// 上次无缓存则aidl找
				if (UserManager.getInstance().isChangeAccount()) {
					// 如果是切换账号 则直接回到登录界面
					showLoginDialog();
				} else {
					try {
						Intent intent = new Intent();
						Bundle bundle = new Bundle();
						long time = System.currentTimeMillis();
						String tid = AppUtil.getTid();
						String packageName = AppUtil.getPackageInfo(mActivity).packageName;
						String apiSec2 = AppUtil.getApiSecret2(tid, "pyw!@$");
						bundle.putLong("key1", time);// 当前时间戳,毫秒
						bundle.putString("key2", packageName);// 程序包名
						bundle.putString("key3", tid);// tid
						bundle.putString("key4",
								MD5Util.getMd5(packageName + apiSec2 + time));
						intent.setAction("com.yunyou.pengyouwan.IDataService");
						intent.putExtras(bundle);
						Intent intentex = getExplicitIntent(
								mActivity.getBaseContext(), intent);
						if (intentex != null) {// 是否安装了app
							Intent eintent = new Intent(intentex);
							isBindService = mActivity.bindService(eintent,
									mServiceConnection,
									Context.BIND_AUTO_CREATE);
							if (!isBindService) {// 绑定失败
								showLoginDialog();
							}
						} else {// 无安装app
							showLoginDialog();
						}
					} catch (Exception e) {// 绑定出错
						e.printStackTrace();
						showLoginDialog();
					}
				}
			}
		}
	}

	/**
	 * 检查是否有新购账号
	 */
	private void checkNewAccount() {
		mUsers = new ArrayList<SDKUser>();
		JSONArray jsonArray = UserManager.getInstance().getUserList();
		for (int i = 0; i < jsonArray.length(); i++) {
			try {
				JSONObject jobj = (JSONObject) jsonArray.get(i);
				SDKUser user = new SDKUser();
				user.setUserName(jobj.getString("account"));
				if (jobj.getString("last_buy").equals("1")) {// 1为新购账号
					user.setIsNew(1);
				}
				mUsers.add(user);
			} catch (JSONException e) {
				e.printStackTrace();
			}
		}
		if (mUsers.size() > 0) {
			if (mUsers.get(0).getIsNew() > 0) {// 新购账号
				// --进入询问窗口--
				new NewAccountLoginDialog(mActivity, mUsers).show();
				isLoginable = true;
			} else {// 无新购账号，直接拿第一个账号去登录
				doLoginForNoPwd();
			}
		} else {// 此情况若是通行证登录不会出现，若出现则回到登录页面
			showLoginDialog();
		}
	}

	public static Intent getExplicitIntent(Context context,
			Intent implicitIntent) {
		// Retrieve all services that can match the given intent
		PackageManager pm = context.getPackageManager();
		List<ResolveInfo> resolveInfo = pm.queryIntentServices(implicitIntent,
				0);
		// Make sure only one match was found
		if (resolveInfo == null || resolveInfo.size() != 1) {
			return null;
		}
		// Get component info and create ComponentName
		ResolveInfo serviceInfo = resolveInfo.get(0);
		String packageName = serviceInfo.serviceInfo.packageName;
		String className = serviceInfo.serviceInfo.name;
		ComponentName component = new ComponentName(packageName, className);
		// Create a new intent. Use the old one for extras and such reuse
		Intent explicitIntent = new Intent(implicitIntent);
		// Set the component to be explicit
		explicitIntent.setComponent(component);
		return explicitIntent;
	}

	/**
	 * 获取上次登陆账号
	 * 
	 * @return true-成功获取上次登陆缓存信息 false-获取失败,或者没有账号信息
	 */
	private boolean initLastLoginUserInfo() {
		mSelectUser = UserOperator.getInstance().getLastLoginUserInfo();
		return mSelectUser == null;
	}

	/**
	 * 进入登录主界面
	 */
	private void showLoginDialog() {
		unBindService();
		isLoginable = true;
		dismissProgress();
		new LoginDialog(mActivity).show();
	}

	/**
	 * aidl服务解绑 否则下次会异常
	 */
	private void unBindService() {
		if (isBindService) {
			try {
				mActivity.unbindService(mServiceConnection);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 正常登录方法
	 */
	private void doLogin() {
		showProgress();
		LoginTask loginTask = new LoginTask() {
			@Override
			public void callback(HttpResponse httpResponse) {
				LoginResponse response = (LoginResponse) httpResponse;
				if (response != null) {
					if (response.isOk()) {
						setContentGoTo();// 登录成功根据状态进行下一步
					} else {// 登录失败
						ToastUtil
								.showMsg(response.getErrorMsg() != null ? response
										.getErrorMsg() : "登录失败");
						loginFail(response.getErrorMsg() != null ? response
								.getErrorMsg() : "登录失败");
					}
				}
				dismissProgress();
			}
		};
		try {
			loginTask.request(mSelectUser.getUserName(), mSelectUser.getPwd());
		} catch (AppException e) {
			e.printStackTrace();
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			loginFail("错误类型:" + e.getType() + ",code:" + e.getCode());
		} finally {
			dismissProgress();
		}

	}

	/**
	 * 免密码登录方法(通行证登录成功且无新购账号的状态下)
	 */
	private void doLoginForNoPwd() {
		showProgress();
		SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
		try {
			LoginNoPwdTask task = new LoginNoPwdTask() {
				@Override
				public void callback(HttpResponse httpResponse) {
					LoginNoPwdResponse response = (LoginNoPwdResponse) httpResponse;
					if (response != null) {
						if (response.isOk()) {// 登录成功
							loginPwdSuccess();
						} else {// 登录失败
							dismissProgress();
							ToastUtil
									.showMsg(response.getErrorMsg() != null ? response
											.getErrorMsg() : "登录失败");
							loginFail(response.getErrorMsg() != null ? response
									.getErrorMsg() : "登录失败");
						}
					}
				}
			};
			if (UserManager.getInstance().getChangeAccountType() == UserManager.CHANGE_ACCOUNT_OHTHER) {// 游戏管理的切换账号
				task.request(user.getPhoneNo(), UserOperator.getInstance()
						.getChangeAccountInfo(), user.getPhoneNoToken());
			} else {
				task.request(user.getPhoneNo(), mUsers.get(0).getUserName(),
						user.getPhoneNoToken());
			}
		} catch (AppException e) {
			e.printStackTrace();
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			loginFail("错误类型:" + e.getType() + ",code:" + e.getCode());
		} finally {
			dismissProgress();
		}
	}

	/**
	 * 游戏管理中切换账号登录
	 */
	private void doLoginForChangeAccount() {
		showProgress();
		mSelectUser = UserOperator.getInstance().getLastLoginUserInfo();
		LoginTask loginTask = new LoginTask() {
			@Override
			public void callback(HttpResponse httpResponse) {
				LoginResponse response = (LoginResponse) httpResponse;
				if (response != null) {
					if (response.isOk()) {
						doLoginForNoPwd();
					} else {// 登录失败
						dismissProgress();
						ToastUtil
								.showMsg(response.getErrorMsg() != null ? response
										.getErrorMsg() : "登录失败");
						loginFail(response.getErrorMsg() != null ? response
								.getErrorMsg() : "登录失败");
					}
				}
			}
		};
		try {
			loginTask.request(mSelectUser.getUserName(), mSelectUser.getPwd());
		} catch (AppException e) {
			e.printStackTrace();
			dismissProgress();
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			loginFail("错误类型:" + e.getType() + ",code:" + e.getCode());
		}
	}

	/**
	 * aidl获取app账号
	 */
	private void aidlGetUserInfo() {
		try {
			String data = mIDataInterface.getData();
			if (data != null) {
				byte[] decode = AppUtil.decode(data.getBytes("ISO-8859-1"));
				String result = new String(decode, "ISO-8859-1");
				String[] userStr = result.split(",");
				if (userStr.length > 3 && userStr[0].length() > 0) {// 判断userStr长度是否大于0,兼容app新版本用rsa
					mSelectUser = new SDKUser();
					mSelectUser.setUserName(userStr[1]);
					mSelectUser.setPwd(userStr[2]);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			showLoginDialog();
		}
		if (mSelectUser != null && !UserManager.getInstance().isChangeAccount()) {// 非切换账号且获取到数据
			doLogin();
		} else {
			showLoginDialog();
		}
	}

	/**
	 * 登录成功后--根据登录后识别的用户信息跳转的相应的界面
	 */
	private void setContentGoTo() {
		unBindService();
		dismissProgress();
		SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
		int accountType = user.getAccountType();
		if (accountType == 1) {// 通行证登录
			checkNewAccount();// 检查是否有新购账号
		} else {// 游戏账号登录 -- 直接进入
			new LoginingDialog(mActivity, user, false,
					LoginingDialog.CHANGE_TO_LOGIN).show();
			isLoginable = true;
		}
	}

	/**
	 * 通行证登录成功
	 */
	private void loginPwdSuccess() {
		unBindService();
		dismissProgress();
		// 无新购账号，直接拿第一个账号去登录
		if (UserManager.getInstance().getChangeAccountType() == UserManager.CHANGE_ACCOUNT_OHTHER) {// 游戏管理的切换账号
			mSelectUser.setUserName(UserOperator.getInstance()
					.getChangeAccountInfo());
			new LoginingDialog(mActivity, mSelectUser, false,
					LoginingDialog.CHANGE_TO_LOGIN_FOR_NOPASS).show();
		} else {
			new LoginingDialog(mActivity, mUsers.get(0), false,
					LoginingDialog.CHANGE_TO_LOGIN_FOR_NOPASS).show();
		}
		isLoginable = true;
	}

	/**
	 * 登录失败（发送失败回调）
	 */
	private void loginFail(String errorMsg) {
		unBindService();
		isLoginable = true;
		// 登录失败清除缓存
		UserManager.getInstance().cleanCurrenUser();
		// Bundle bundle = new Bundle();
		// bundle.putString(ISDKEventExtraKey.EXTRA_ERRO, errorMsg);
		// SDKEventDispatcher.sendEventNow(ISDKEventCode.CODE_LOGIN_FAILD,
		// bundle);
		showLoginDialog();
	}

	/**
	 * 初始化失败（发送登录回调）
	 */
	private void initFail(String errorMsg) {
		unBindService();
		isLoginable = true;
		// 登录失败清除缓存
		UserManager.getInstance().cleanCurrenUser();
		Bundle bundle = new Bundle();
		bundle.putString(ISDKEventExtraKey.EXTRA_ERRO, errorMsg);
		SDKEventDispatcher.sendEventNow(ISDKEventCode.CODE_LOGIN_FAILD, bundle);
	}

	/**
	 * 显示加载框
	 */
	private void showProgress() {
		if (progressDialog == null) {
			progressDialog = new CustomProgressDialog(mActivity, "请稍后...");
		}
		progressDialog.show();
	}

	/**
	 * 隐藏加载框
	 */
	private void dismissProgress() {
		if (progressDialog != null && progressDialog.isShowing()) {
			progressDialog.dismiss();
		}
	}
}
