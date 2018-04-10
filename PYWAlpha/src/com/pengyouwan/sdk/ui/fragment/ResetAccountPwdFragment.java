package com.pengyouwan.sdk.ui.fragment;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.provider.MediaStore;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.MeasureSpec;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.base.BaseWorkerFragment;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.FolderManager;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.protocol.ResetAccountPwdTask;
import com.pengyouwan.sdk.protocol.UnBindAccountTask;
import com.pengyouwan.sdk.ui.dialog.CustomProgressDialog;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.StringUtil;
import com.pengyouwan.sdk.utils.ToastUtil;

/**
 * 描述：设置游戏账号独立密码
 * 
 * @author Hanson
 * @since 创建时间：2016-7-1 下午8:42:29
 * 
 */
public class ResetAccountPwdFragment extends BaseWorkerFragment {

	private TextView accountNameText, inputTipsText, tipsText, pwdText;

	private View confirmBtn, backBtn, resetStartLayout, resetEndLayout;

	private EditText pwdEditext;

	private final int RESET = 0xd001;

	private final int MSG_UI_MODIFY_START = 0xd002;

	private final int MSG_UI_HIDE_PROGRESS = 0xd003;

	private final int MSG_UI_MODIFY_SUCCESS = 0xd004;

	private CustomProgressDialog confirmDialog;

	private String account, newPsw;

	public static final int STATE_UNBIND = 0xd005;

	public static final int STATE_SETPWD = 0xd006;

	public static final int FINISH_CURRENT_PAGE = 0xd007;

	private int state;

	private ImageView mPwdVisible;

	private boolean mIsVisible = true;

	private Bitmap mBitmap;

	private boolean isCappingView = false;// 是否正在处于截图状态

	public static ResetAccountPwdFragment getInstance(Bundle data) {
		ResetAccountPwdFragment mf = new ResetAccountPwdFragment();
		mf.setArguments(data);
		return mf;
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		View view = null;
		if (AppUtil.isScreenLandscape(getActivity())) {
			view = inflater.inflate(ResIdManager.getLayoutId(getActivity(),
					Rx.layout.pyw_fragment_resetaccountpwd_landscape), null);
		} else {
			view = inflater.inflate(ResIdManager.getLayoutId(getActivity(),
					Rx.layout.pyw_fragment_resetaccountpwd_portrait), null);
		}
		initView(view);
		return view;
	}

	private void initView(View view) {
		accountNameText = (TextView) view.findViewById(ResIdManager.getId(
				getActivity(), Rx.id.pyw_tv_account));
		tipsText = (TextView) view.findViewById(ResIdManager.getId(
				getActivity(), Rx.id.pyw_tv_tips));
		inputTipsText = (TextView) view.findViewById(ResIdManager.getId(
				getActivity(), Rx.id.pyw_tv_input_tips));
		pwdText = (TextView) view.findViewById(ResIdManager.getId(
				getActivity(), Rx.id.pyw_tv_pwd));
		confirmBtn = view.findViewById(ResIdManager.getId(getActivity(),
				Rx.id.pyw_btn_login));
		backBtn = view.findViewById(ResIdManager.getId(getActivity(),
				Rx.id.pyw_btn_back));
		resetStartLayout = view.findViewById(ResIdManager.getId(getActivity(),
				Rx.id.pyw_layout_reset_start));
		resetEndLayout = view.findViewById(ResIdManager.getId(getActivity(),
				Rx.id.pyw_layout_reset_finish));
		pwdEditext = (EditText) view.findViewById(ResIdManager.getId(
				getActivity(), Rx.id.pyw_et_register_account));
		mPwdVisible = (ImageView) view.findViewById(ResIdManager.getId(
				getActivity(), Rx.id.pyw_pwd_visible_img));
		mPwdVisible.setOnClickListener(mListener);
		confirmBtn.setOnClickListener(mListener);
		backBtn.setOnClickListener(mListener);
		showLayout(resetStartLayout);
		Bundle data = getArguments();
		if (data != null) {
			state = data.getInt("state", STATE_SETPWD);
			String tips = data.getString("tips");
			if (!TextUtils.isEmpty(tips)) {
				tipsText.setText(tips);
			}
			account = data.getString("account");
			if (!TextUtils.isEmpty(account)) {
				inputTipsText.setText(getSpan("登录账号名:", account));
			}
		}
	}

	private SpannableString getSpan(String str1, String phone) {
		SpannableString ss = new SpannableString(str1 + phone);
		ss.setSpan(new ForegroundColorSpan(Color.parseColor("#ee970f")),
				str1.length(), ss.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		return ss;
	}

	private void showLayout(View view) {
		resetStartLayout.setVisibility(View.GONE);
		resetEndLayout.setVisibility(View.GONE);
		view.setVisibility(View.VISIBLE);
	}

	public boolean canPressback() {
		if (resetEndLayout != null) {
			return resetEndLayout.getVisibility() != View.VISIBLE;
		}
		return false;
	}

	// 检测输入信息是否正确
	private boolean checkInfo() {
		String passwordstr = pwdEditext.getText().toString().trim();
		if (TextUtils.isEmpty(passwordstr)) {
			ToastUtil.showMsg("密码不能为空");
			return false;
		} else if (passwordstr.length() < 6 || passwordstr.length() > 12) {
			ToastUtil.showMsg("密码长度须为6~12位");
			return false;
		}
		return true;
	}

	private View.OnClickListener mListener = new View.OnClickListener() {

		@Override
		public void onClick(View v) {
			if (v == confirmBtn) {
				if (checkInfo()) {
					sendEmptyBackgroundMessage(RESET);
				}
			} else if (v == backBtn) {
				if (isCappingView) {
					ToastUtil.showMsg("正在保留账号截图，请稍后..");
				} else {
					SDKUser user = UserManager.getInstance()
							.getCurrentUserForSDK();
					if (state == STATE_UNBIND
							&& account.equals(user.getUserName())) {
						UserManager.getInstance().setChangeAccount(true);//设置切换账号状态 否则会导致自动又登录
						UserManager.getInstance().logout();
						SDKControler.finishActivities();
					}
					getActivity().finish();
				}
			} else if (v == mPwdVisible) {
				mIsVisible = AppUtil.changePwdVisible(pwdEditext, mPwdVisible,
						mIsVisible, getActivity());
			}
		}
	};

	@Override
	public void handleBackgroundMessage(Message msg) {
		switch (msg.what) {
		case RESET:
			if (state == STATE_UNBIND) {// 如果是解绑账号，直接调用解绑账号接口，如果是修改则调用修改账号密码接口
				doUnbind();
			} else {
				modifyPassWord();
			}
			break;
		default:
			break;
		}
	}

	@Override
	public void handleUiMessage(Message msg) {
		switch (msg.what) {
		case MSG_UI_MODIFY_START:
			if (confirmDialog == null) {
				confirmDialog = new CustomProgressDialog(getActivity(),
						"正在设置密码..");
			}
			confirmDialog.show();
			break;
		case MSG_UI_HIDE_PROGRESS:
			if (confirmDialog != null) {
				confirmDialog.dismiss();
			}
			break;
		case MSG_UI_MODIFY_SUCCESS:
			if (confirmDialog != null) {
				confirmDialog.dismiss();
			}
			accountNameText.setText(getSpan("游戏账号:", account));
			pwdText.setText(getSpan("独立密码:", newPsw));
			showLayout(resetEndLayout);
			saveDialogShot(resetEndLayout);
			break;
		default:
			break;
		}
	}

	// 将对话框的view截图
	private void saveDialogShot(View view) {
		if (view != null) {
			isCappingView = true;
			view.setDrawingCacheEnabled(true);
			view.measure(
					MeasureSpec.makeMeasureSpec(0, MeasureSpec.UNSPECIFIED),
					MeasureSpec.makeMeasureSpec(0, MeasureSpec.UNSPECIFIED));
			view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
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
						fos = new FileOutputStream(file);
						mBitmap.compress(CompressFormat.PNG, 100, fos);
						fos.flush();
						MediaStore.Images.Media.insertImage(getActivity()
								.getContentResolver(), file.getAbsolutePath(),
								fileName, null);
						// 最后通知图库更新
						getActivity().sendBroadcast(
								new Intent(
										Intent.ACTION_MEDIA_SCANNER_SCAN_FILE,
										Uri.parse("file://" + path)));
						ToastUtil.showMsg("账号密码已截图至:" + path);
					} catch (FileNotFoundException e) {
						ToastUtil.showMsg("创建截图文件失败");
					} catch (IOException e) {
						ToastUtil.showMsg("保存截图文件失败");
					} finally {
						try {
							if (mBitmap != null && !mBitmap.isRecycled()) {
								mBitmap.recycle();
								mBitmap = null;
							}
							fos.close();
							isCappingView = false;
						} catch (IOException e) {
							e.printStackTrace();
						}
					}
				}
			}
		}).start();
	}

	/**
	 * 确认修改密码
	 */
	@SuppressLint("DefaultLocale")
	private void modifyPassWord() {
		sendEmptyUiMessage(MSG_UI_MODIFY_START);
		newPsw = pwdEditext.getText().toString();
		if (StringUtil.isEmpty(newPsw)) {
			ToastUtil.showMsg("密码不能为空");
		}
		ResetAccountPwdTask task = new ResetAccountPwdTask() {

			@Override
			public void callback(HttpResponse httpResponse) {
				ReSetAccountPwdResponse response = (ReSetAccountPwdResponse) httpResponse;
				if (response != null) {
					if (response.isOk()) {
						sendEmptyUiMessage(MSG_UI_MODIFY_SUCCESS);
						ToastUtil.showMsg("设置成功");
					} else {
						sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);
						ToastUtil.showMsg(response.getErrorMsg());
					}
				}
			}
		};
		try {
			task.request(newPsw, account);
		} catch (AppException e) {
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);
			e.printStackTrace();
		}
	}

	private void doUnbind() {
		final SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
		newPsw = pwdEditext.getText().toString();
		if (StringUtil.isEmpty(newPsw)) {
			ToastUtil.showMsg("密码不能为空");
		}
		sendEmptyUiMessage(MSG_UI_MODIFY_START);
		UnBindAccountTask task = new UnBindAccountTask() {
			@Override
			public void callback(HttpResponse httpResponse) {
				UnBindAccountResponse response = (UnBindAccountResponse) httpResponse;
				if (response != null) {
					if (response.isOk()) {
						if (user.getUserName().equals(account)) {
							// 将账号状态重置，并清楚通行证信息
							user.setAccountType(2);
							user.setPhoneNo("");
							user.setPhoneNoToken("");
							user.setPwd(MD5Util.getMd5(newPsw).toLowerCase());
							getActivity().setResult(FINISH_CURRENT_PAGE);
						}
						sendEmptyUiMessage(MSG_UI_MODIFY_SUCCESS);
						ToastUtil.showMsg("解绑成功");
					} else {
						sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);
						ToastUtil.showMsg(response.getErrorMsg());
					}
				}
			}
		};
		try {
			task.request(newPsw, account);
		} catch (AppException e) {
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);
			e.printStackTrace();
		}
	}
}
