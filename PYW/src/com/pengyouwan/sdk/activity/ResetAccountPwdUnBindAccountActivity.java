package com.pengyouwan.sdk.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;

import com.pengyouwan.framework.v4.FragmentTransaction;
import com.pengyouwan.sdk.base.BaseCommonTitleFragmentActivity;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.interfaces.ChangeFragmentCallback;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.ui.fragment.BindMobilePhoneCodeFragment;
import com.pengyouwan.sdk.ui.fragment.ResetAccountPwdFragment;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.ToastUtil;

/**
 * 描述：游戏账号绑定非通行证手机号时设置独立密码与解绑游戏账号
 * 
 * @author Hanson
 * @since 创建时间：2016-7-1 下午8:38:58
 * 
 */
public class ResetAccountPwdUnBindAccountActivity extends
		BaseCommonTitleFragmentActivity {

	private int contentId;

	private BindMobilePhoneCodeFragment codeFragment;// 获取验证码

	private ResetAccountPwdFragment accountFragment;

	public static final int FRAGMENT_ACCOUNT = 0xC001;

	public static final int FRAGMENT_CODE = 0xC002;

	private String account;

	private int state;

	private Bundle data = new Bundle();

	private int currentpage = -1;

	private boolean canFinish = false;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(ResIdManager.getLayoutId(this,
				Rx.layout.pyw_activity_framelayout));
		initView();
	}

	private void initView() {
		contentId = ResIdManager.getId(
				ResetAccountPwdUnBindAccountActivity.this,
				Rx.id.pyw_layout_fragments);
		int code = getIntent().getIntExtra("tag", FRAGMENT_CODE);
		account = getIntent().getStringExtra("account");
		canFinish = getIntent().getBooleanExtra("boolean", false);
		if (code == FRAGMENT_ACCOUNT) {
			state = ResetAccountPwdFragment.STATE_UNBIND;
		} else {
			state = ResetAccountPwdFragment.STATE_SETPWD;
		}
		changeFragmentByCode(code);
	}

	private ChangeFragmentCallback mCallback = new ChangeFragmentCallback() {

		@Override
		public void changeFragment(int fragmentCode) {
			changeFragmentByCode(fragmentCode);
		}

	};

	private void changeFragmentByCode(int code) {
		currentpage = code;
		FragmentTransaction transaction = getSupportFragmentManager()
				.beginTransaction();
		hideFragments(transaction);
		switch (code) {
		case FRAGMENT_ACCOUNT:
			setCommonTitle("验证手机");
			if (codeFragment == null) {
				SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
				if (user != null) {
					String phone = user.getPhoneNo();
					if (!TextUtils.isEmpty(phone)) {
						data.putString("phone", phone);
						data.putInt("TAG", FRAGMENT_CODE);
						data.putInt("is_reg", FRAGMENT_CODE);
						codeFragment = BindMobilePhoneCodeFragment
								.getInstance(data);
						codeFragment.setOnFragmentChangeCallback(mCallback);
						transaction.add(contentId, codeFragment);
					} else {
						ToastUtil.showMsg("获取手机信息失败");
						return;
					}
				} else {
					ToastUtil.showMsg("获取账号信息有误");
					return;
				}
			}
			break;
		case FRAGMENT_CODE:
			setCommonTitle("设置登录密码");
			if (accountFragment == null) {
				data.putString("account", account);
				data.putInt("state", state);
				accountFragment = ResetAccountPwdFragment.getInstance(data);
				transaction.add(contentId, accountFragment);
			}
			transaction.show(accountFragment);
			break;
		}
	}

	@Override
	public void onBackPressed() {
		if (currentpage == FRAGMENT_CODE) {
			if (accountFragment != null && accountFragment.canPressback()
					&& !canFinish) {
				changeFragmentByCode(FRAGMENT_ACCOUNT);
			} else {
				if (state == ResetAccountPwdFragment.STATE_UNBIND) {// 如果是解绑的话，屏蔽返回键
				} else {
					finish();
				}
			}
		} else {
			finish();
		}
	};

	@Override
	protected void onLeftBtnClick() {
		onBackPressed();
	}

	private void hideFragments(FragmentTransaction transaction) {
		if (transaction != null) {
			if (codeFragment != null) {
				transaction.hide(codeFragment);
			}
			if (accountFragment != null) {
				transaction.hide(accountFragment);
			}
			transaction.commitAllowingStateLoss();
		}
	}

	public static Intent createUnbindIntent(Context context, String account) {
		Intent intent = new Intent(context,
				ResetAccountPwdUnBindAccountActivity.class);
		intent.putExtra("account", account);
		intent.putExtra("tag", FRAGMENT_ACCOUNT);
		return intent;
	}

	public static Intent createPwdIntent(Context context, String account) {
		Intent intent = new Intent(context,
				ResetAccountPwdUnBindAccountActivity.class);
		intent.putExtra("account", account);
		intent.putExtra("tag", FRAGMENT_CODE);
		intent.putExtra("boolean", true);
		return intent;
	}
}
