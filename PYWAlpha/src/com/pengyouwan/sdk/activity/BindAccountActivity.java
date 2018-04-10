package com.pengyouwan.sdk.activity;

import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.sdk.base.BaseCommonTitleFragmentActivity;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.interfaces.DialogBtnClickListener;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.protocol.BindAccountTask;
import com.pengyouwan.sdk.ui.dialog.BindAccountTipsDialog;
import com.pengyouwan.sdk.ui.dialog.CustomProgressDialog;
import com.pengyouwan.sdk.ui.fragment.ResetAccountPwdFragment;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.ToastUtil;

/**
 * 描述：绑定游戏账号页面
 * 
 * @author Hanson
 * @since 创建时间：2016-7-1 下午5:35:54
 * 
 */
public class BindAccountActivity extends BaseCommonTitleFragmentActivity
		implements OnClickListener {
	private CustomProgressDialog progress;

	private final int MSG_UI_SHOW_PROGRESS = 0x2000;

	private final int MSG_UI_HIDE_PROGRESS = 0x2003;

	private final int MSG_UI_MODIFY_PSW_SUCCESS = 0x2004;
	
	private final int MSG_UI_MODIFY_PSW_FAIL = 0x2006;

	private final int MSG_BACK_DO_NET_WORK = 0x2005;

	private EditText userNameEditText;

	private EditText passwordEditText;

	private View btnModify;

	private ImageView mPwdVisible;

	private boolean mIsVisible = true;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		View view = getLayoutInflater().inflate(
				ResIdManager.getLayoutId(this,
						Rx.layout.pyw_activity_bind_account), null);
		View v = view.findViewById(ResIdManager.getId(this,
				Rx.id.pyw_layout_content));
		if (AppUtil.isScreenLandscape(BindAccountActivity.this)) {
			int size = AppUtil.dip2px(this, 78);
			int top = AppUtil.dip2px(this, 5);
			v.setPadding(size, top, size, 0);
			v.findViewById(ResIdManager.getId(this, Rx.id.pyw_view_marginview))
					.setLayoutParams(
							new LayoutParams(LayoutParams.MATCH_PARENT, AppUtil
									.dip2px(this, 17)));
		} else {
			int size = AppUtil.dip2px(this, 12);
			int top = AppUtil.dip2px(this, 19);
			v.setPadding(size, top, size, 0);
			v.findViewById(ResIdManager.getId(this, Rx.id.pyw_view_marginview))
					.setLayoutParams(
							new LayoutParams(LayoutParams.MATCH_PARENT, AppUtil
									.dip2px(this, 34)));
		}
		setContentView(view);
		initView();
	}

	private void hideProgresss() {
		if (progress != null) {
			progress.dismiss();
		}
	}

	@Override
	public void handleUiMessage(Message msg) {
		switch (msg.what) {
		case MSG_UI_SHOW_PROGRESS:
			if (progress == null) {
				progress = new CustomProgressDialog(BindAccountActivity.this,
						"请稍后...");
			}
			progress.show();
			break;
		case MSG_UI_HIDE_PROGRESS:
			hideProgresss();
			break;
		case MSG_UI_MODIFY_PSW_SUCCESS:
			ToastUtil.showMsg("绑定成功");
			hideProgresss();
			finish();
			break;
		case MSG_UI_MODIFY_PSW_FAIL:
			hideProgresss();
			showTipsDialog();
			break;
		}
	}

	private void initView() {
		setCommonTitle("绑定游戏账号");
		userNameEditText = (EditText) findViewById((ResIdManager.getId(this,
				Rx.id.pyw_et_login_account)));
		passwordEditText = (EditText) findViewById((ResIdManager.getId(this,
				Rx.id.pyw_et_login_psw)));
		btnModify = findViewById((ResIdManager.getId(this, Rx.id.pyw_btn_login)));
		mPwdVisible = (ImageView) findViewById(ResIdManager.getId(this,
				Rx.id.pyw_pwd_visible_img));
		mPwdVisible.setOnClickListener(this);
		btnModify.setOnClickListener(this);
	}

	// 执行绑定
	private void doBindPassport() {
		SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
		String userName = userNameEditText.getText().toString().trim();
		String pwd = passwordEditText.getText().toString().trim();
		BindAccountTask bindPassportTask = new BindAccountTask() {
			@Override
			public void callback(HttpResponse httpResponse) {
				BindAccountResponse bindPassportResponse = (BindAccountResponse) httpResponse;
				if (bindPassportResponse != null) {
					int ack = bindPassportResponse.getAck();
					if (ack == 200) {
						sendEmptyUiMessage(MSG_UI_MODIFY_PSW_SUCCESS);
					} else if(ack == 400) {//返回400表示账号密码错误
						sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);
						ToastUtil.showMsg("绑定失败:" + bindPassportResponse.getErrorMsg());
					} else if(ack == 500) {//返回500表示账号已被绑定需要弹窗
						sendEmptyUiMessage(MSG_UI_MODIFY_PSW_FAIL);
					}
				}
			}
		};
		try {
			bindPassportTask.request(pwd, user.getPhoneNo(), userName);
		} catch (AppException e) {
			sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			e.printStackTrace();
		}
	}
	
	 private void showTipsDialog() {
	        BindAccountTipsDialog dialog = new BindAccountTipsDialog(BindAccountActivity.this);
	        dialog.setOnDialogBtnClickListener(new DialogBtnClickListener() {

	            @Override
	            public void onRightBtnClick() {
	                // do nothing
	            }

	            @Override
	            public void onLeftBtnClick() {
	                setResult(ResetAccountPwdFragment.FINISH_CURRENT_PAGE);
	                finish();
	            }
	        });
	        dialog.show();
	    }

	public void handleBackgroundMessage(Message msg) {
		switch (msg.what) {
		case MSG_BACK_DO_NET_WORK:
			sendEmptyUiMessage(MSG_UI_SHOW_PROGRESS);
			doBindPassport();
			break;

		}
	};

	// 检测输入信息是否正确
	private boolean checkInfo() {
		String accountStr = userNameEditText.getText().toString();
		if (TextUtils.isEmpty(accountStr)) {
			ToastUtil.showMsg("账号不能为空");
			return false;
		}
		String passwordstr = passwordEditText.getText().toString().trim();
		if (TextUtils.isEmpty(passwordstr)) {
			ToastUtil.showMsg("密码不能为空");
			return false;
		} else if (passwordstr.length() < 6) {
			ToastUtil.showMsg("密码长度须大于6位");
			return false;
		}
		return true;
	}

	@Override
	public void onClick(View v) {
		if (v == mPwdVisible) {
			mIsVisible = AppUtil.changePwdVisible(passwordEditText, mPwdVisible,
					mIsVisible, BindAccountActivity.this);
		}else if(v == btnModify){
			if (checkInfo()) {
				sendEmptyBackgroundMessage(MSG_BACK_DO_NET_WORK);
			}
		}
	}

}
