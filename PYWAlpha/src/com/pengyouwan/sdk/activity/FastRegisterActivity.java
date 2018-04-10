package com.pengyouwan.sdk.activity;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import android.app.Activity;
import android.content.Intent;
import android.database.sqlite.SQLiteDiskIOException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.sdk.base.BaseCommonTitleFragmentActivity;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.FolderManager;
import com.pengyouwan.sdk.manager.SDKEventDispatcher;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.open.ISDKEventCode;
import com.pengyouwan.sdk.open.ISDKEventExtraKey;
import com.pengyouwan.sdk.protocol.FastRegisterTask;
import com.pengyouwan.sdk.ui.dialog.CustomProgressDialog;
import com.pengyouwan.sdk.ui.dialog.LoginDialog;
import com.pengyouwan.sdk.ui.dialog.LoginingDialog;
import com.pengyouwan.sdk.utils.BehavioralHelper;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.ToastUtil;
import com.pyw.common.BehaviorConstants;

public class FastRegisterActivity extends BaseCommonTitleFragmentActivity {

	private TextView accountTips;

	private EditText password;

	private Button login;

	private ImageView titleLogo;

	private static Activity mLoginActivity;

	private CustomProgressDialog progressDialog;

	private SDKUser user = null;

	private String account, pwd;

	private View resetEndLayout, titleLayout;

	private Bitmap mBitmap;

	private TextView textMianze;

	private CheckBox cbMianze;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(ResIdManager.getLayoutId(FastRegisterActivity.this,
				Rx.layout.pyw_activity_fastregister));
		initTitle();
		initView();
		doRegister();
		// 往数据库写入行为操作数据
		BehavioralHelper.getInstance().saveBehavior(
				BehaviorConstants.PAGE.QUICK_REGISTRATION_PAGE,
				BehaviorConstants.BEHAVIORA.ENTER_PAGE,
				BehaviorConstants.TYPE.TYPE_ENTER_PAGE);
	}

	public static Intent createIntent(Activity activity) {
		Intent intent = new Intent(activity, FastRegisterActivity.class);
		mLoginActivity = activity;
		return intent;
	}

	// 初始化界面标题
	private void initTitle() {
		setCommonTitle("快速注册");
	}

	private void initView() {
		cbMianze = (CheckBox) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_cb_mianze));
		textMianze = (TextView) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_tv_mianze));
		accountTips = (TextView) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_tv_fastregister_account_tips));
		password = (EditText) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_et_fastregister_password));
		login = (Button) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_btn_login_fastregister));
		titleLogo = (ImageView) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_title_logo));
		titleLayout = findViewById(ResIdManager.getId(this,
				Rx.id.pyw_common_title_fastregister));
		resetEndLayout = findViewById(ResIdManager.getId(this,
				Rx.id.pyw_layout_fastregister_start));
		titleLogo.setVisibility(View.GONE);
		login.setOnClickListener(mClickListener);
		textMianze.setOnClickListener(mClickListener);
	}

	// 将对话框的view截图
	private void saveDialogShot(View view) {
		if (view != null) {
			view.setDrawingCacheEnabled(true);
			// 控件宽度需要满屏，否则会压缩前端布局
			view.measure(MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(),
					MeasureSpec.EXACTLY), MeasureSpec.makeMeasureSpec(0,
					MeasureSpec.UNSPECIFIED));
			// 坐标需要在标题栏下面
			view.layout(0, titleLayout.getMeasuredHeight(),
					view.getMeasuredWidth(), view.getMeasuredHeight()
							+ titleLayout.getMeasuredHeight());
			view.buildDrawingCache();
			mBitmap = view.getDrawingCache();
			// view.destroyDrawingCache();
			writeBitmapToSDcard();
		}
	}

	// 将截屏图片写入sd卡
	private void writeBitmapToSDcard() {
		new Thread(new Runnable() {
			@Override
			public void run() {
				String fileName = System.currentTimeMillis() + ".png";
				String path = FolderManager.CACHE_FOLDER + fileName;
				File file = new File(path);
				if (file != null && mBitmap != null) {
					FileOutputStream fos = null;
					try {
						if(!file.exists()){
							file.createNewFile();
						}
						fos = new FileOutputStream(file);
						mBitmap.compress(CompressFormat.PNG, 100, fos);
						fos.flush();
						MediaStore.Images.Media.insertImage(
								getContentResolver(), mBitmap,
								fileName, null);
						// 最后通知图库更新
						sendBroadcast(new Intent(
								Intent.ACTION_MEDIA_SCANNER_SCAN_FILE,
								Uri.fromFile(file)));
						ToastUtil.showMsg("账号密码已截图至:" + path);
					} catch (FileNotFoundException e) {
						ToastUtil.showMsg("创建截图文件失败");
					} catch (IOException e) {
						ToastUtil.showMsg("保存截图文件失败");
					} catch (SQLiteDiskIOException e) {
					} finally {
						try {
							if (mBitmap != null && !mBitmap.isRecycled()) {
								mBitmap.recycle();
								mBitmap = null;
							}
							if (fos != null) {
								fos.close();
							}
						} catch (IOException e) {
							e.printStackTrace();
						}
					}
				}
			}
		}).start();
	}

	private View.OnClickListener mClickListener = new View.OnClickListener() {
		@Override
		public void onClick(View v) {
			if (v == login) {
				if (cbMianze.isChecked()) {
					if (user != null) {
						account = user.getUserName();
					}
					pwd = password.getText().toString();
					if (checkInfo()) {
						// 往数据库写入行为操作数据
						BehavioralHelper.getInstance().saveBehavior(
								BehaviorConstants.PAGE.QUICK_REGISTRATION_PAGE,
								BehaviorConstants.BEHAVIORA.ENTER_GAME,
								BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
						doLogin();// 登录
					}
				} else {
					ToastUtil.showMsg("请先阅读免责声明");
				}
			} else if (v == textMianze) {
				// TODO 跳转到免责页面
				startActivity(new Intent(FastRegisterActivity.this,
						MianzeActivity.class));
				cbMianze.setChecked(true);
			}
		}
	};

	/**
	 * 检测输入信息是否正确
	 * 
	 * @return
	 */
	private boolean checkInfo() {
		if (TextUtils.isEmpty(pwd)) {
			ToastUtil.showMsg("密码不能为空");
			return false;
		} else {
			if (pwd.length() < 6) {
				ToastUtil.showMsg("密码长度须大于6位");
				return false;
			}
		}
		return true;
	}

	/**
	 * 登录请求
	 */
	private void doLogin() {
		showProgress();
		FastRegisterTask task = new FastRegisterTask() {
			@Override
			public void callback(HttpResponse httpResponse) {
				FastRegisterResponse response = (FastRegisterResponse) httpResponse;
				if (response != null) {
					if (response.isOk()) {
						// 登录成功
						saveDialogShot(resetEndLayout);// 保存截图
						SDKUser user = response.getUser();
						UserManager.getInstance().setCurrentUser(user);// 缓存用户信息
						finish();
						if (mLoginActivity == null) {
							registerFail();
							return;
						}
						new LoginingDialog(mLoginActivity, response.getUser(),
								false, LoginingDialog.CHANGE_TO_LOGIN).show();
					} else {// 登录失败
						ToastUtil
								.showMsg(response.getErrorMsg() != null ? response
										.getErrorMsg() : "登录失败");
					}
				}
				dismissProgress();
			}
		};
		try {
			task.request(account, pwd, 2);
		} catch (AppException e) {
			dismissProgress();
			e.printStackTrace();
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
		}
	}

	/**
	 * 快速注册请求
	 */
	private void doRegister() {
		showProgress();
		FastRegisterTask task = new FastRegisterTask() {
			@Override
			public void callback(HttpResponse httpResponse) {
				FastRegisterResponse response = (FastRegisterResponse) httpResponse;
				if (response != null) {
					if (response.isOk()) {
						// 注册成功后
						user = response.getUser();
						accountTips.setText(getSpan("登录账号名:",
								user.getUserName()));
						password.setText(user.getPwd());
						password.setSelection(user.getPwd().length());// 设置光标到最后
					} else {// 注册失败
						ToastUtil
								.showMsg(response.getErrorMsg() != null ? response
										.getErrorMsg() : "注册失败");
					}
				}
				dismissProgress();
			}
		};
		try {
			task.request("", "", 1);
		} catch (AppException e) {
			dismissProgress();
			e.printStackTrace();
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
		}
	}

	// @Override
	// public void handleUiMessage(Message msg) {
	// switch (msg.what){
	// case REG_REQUEST_START:
	// showProgress();
	// break;
	// case REG_REQUEST_SUCCESS:
	// accountTips.setText(getSpan("登录账号名:", user.getUserName()));
	// password.setText(user.getPwd());
	// dismissProgress();
	// break;
	// }
	// }

	private SpannableString getSpan(String str1, String phone) {
		SpannableString ss = new SpannableString(str1 + phone);
		ss.setSpan(new ForegroundColorSpan(Color.parseColor("#ee970f")),
				str1.length(), ss.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		return ss;
	}

	/**
	 * 显示加载框
	 */
	private void showProgress() {
		if (progressDialog == null) {
			progressDialog = new CustomProgressDialog(
					FastRegisterActivity.this, "请稍后...");
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

	@Override
	protected void onLeftBtnClick() {
		// 往数据库写入行为操作数据
		BehavioralHelper.getInstance().saveBehavior(
				BehaviorConstants.PAGE.QUICK_REGISTRATION_PAGE,
				BehaviorConstants.BEHAVIORA.RETURN,
				BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
		onBackPressed();
	}

	@Override
	public void onBackPressed() {
		finish();
		if (mLoginActivity == null) {
			registerFail();
			return;
		}
		new LoginDialog(mLoginActivity).show();
	}

	// act 销毁的情况下 发送 登录失败回调
	private void registerFail() {
		// 登录失败清除缓存
		UserManager.getInstance().cleanCurrenUser();
		Bundle bundle = new Bundle();
		bundle.putString(ISDKEventExtraKey.EXTRA_ERRO, "注册失败");
		SDKEventDispatcher.sendEventNow(ISDKEventCode.CODE_LOGIN_FAILD, bundle);
	}
}
