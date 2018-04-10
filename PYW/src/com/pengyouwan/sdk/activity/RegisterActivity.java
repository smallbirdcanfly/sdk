package com.pengyouwan.sdk.activity;

import com.pengyouwan.framework.v4.FragmentTransaction;
import com.pengyouwan.sdk.base.BaseCommonTitleFragmentActivity;
import com.pengyouwan.sdk.interfaces.ChangeFragmentCallback;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.ui.dialog.LoginDialog;
import com.pengyouwan.sdk.ui.fragment.CommonCodeFragment;
import com.pengyouwan.sdk.ui.fragment.RegisterLoginFragment;
import com.pengyouwan.sdk.ui.fragment.CommonPhoneFragment;
import com.pengyouwan.sdk.ui.fragment.RegisterPwdFragment;
import com.pengyouwan.sdk.utils.BehavioralHelper;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pyw.common.BehaviorConstants;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;

/**
 * 描述:注册
 * 
 * @author CJ
 * @since 2016-3-31下午6:13:55
 */
public class RegisterActivity extends BaseCommonTitleFragmentActivity {

	public static final int REGISTER_PAGE_FIRST = 0xA000;

	public static final int REGISTER_PAGE_SEC = 0xA001;

	public static final int REGISTER_PAGE_THR = 0xA002;

	public static final int REGISTER_PAGE_FOUR = 0xA003;

	public int currentPage = REGISTER_PAGE_FIRST;

	private int contentId;

	private CommonPhoneFragment phoneFragment;

	private CommonCodeFragment codeFragment;

	private RegisterPwdFragment pwdFragment;

	private RegisterLoginFragment loginFragment;

	private int[] stack = new int[3];

	private int top = 0;

	private Bundle mData;

	private static Activity mLoginActivity;// 登录框传入的activity

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(ResIdManager.getLayoutId(RegisterActivity.this,
				Rx.layout.pyw_activity_register));
		initTitle();
		initFragment();
	}

	public static Intent createIntent(Activity activity) {
		Intent intent = new Intent(activity, RegisterActivity.class);
		mLoginActivity = activity;
		return intent;
	}

	// 初始化界面标题
	private void initTitle() {
		setCommonTitle("手机注册（1/3）");

		ImageView logo = (ImageView) findViewById(ResIdManager.getId(
				RegisterActivity.this, Rx.id.pyw_title_logo));
		logo.setVisibility(View.VISIBLE);
	}

	private void initFragment() {
		mData = new Bundle();
		contentId = ResIdManager.getId(RegisterActivity.this,
				Rx.id.pyw_layout_fragments);
		chageFragmentByCode(REGISTER_PAGE_FIRST);
	}

	// 切换fragment
	private void chageFragmentByCode(int fragmentCode) {
		push(fragmentCode);
		currentPage = fragmentCode;
		FragmentTransaction transaction = getSupportFragmentManager()
				.beginTransaction();
		hideFragments(transaction);
		// transaction.hide(phoneFragment).hide(codeFragment).hide(pwdFragment);
		switch (fragmentCode) {
		case REGISTER_PAGE_FIRST:
			// 往数据库写入行为操作数据
			BehavioralHelper.getInstance().saveBehavior(
					BehaviorConstants.PAGE.PHONE_REGISTRATION_1,
					BehaviorConstants.BEHAVIORA.ENTER_PAGE,
					BehaviorConstants.TYPE.TYPE_ENTER_PAGE);
			setCommonTitle("手机注册（1/3）");
			if (phoneFragment == null) {
				mData.putInt("TAG", CommonPhoneFragment.TAG_FROM_REGISTER);
				phoneFragment = CommonPhoneFragment.getInstance(mData);
				phoneFragment.setOnFragmentChangeCallback(mCallback);
				transaction.add(contentId, phoneFragment);
			}
			transaction.show(phoneFragment);
			break;
		case REGISTER_PAGE_SEC:
			// 往数据库写入行为操作数据
			BehavioralHelper.getInstance().saveBehavior(
					BehaviorConstants.PAGE.PHONE_REGISTRATION_2,
					BehaviorConstants.BEHAVIORA.ENTER_PAGE,
					BehaviorConstants.TYPE.TYPE_ENTER_PAGE);
			setCommonTitle("手机注册（2/3）");
			if (codeFragment == null) {
				codeFragment = CommonCodeFragment.getInstance(mData);
				codeFragment.setOnFragmentChangeCallback(mCallback);
				transaction.add(contentId, codeFragment);
			}
			transaction.show(codeFragment);
			break;
		case REGISTER_PAGE_THR:
			// 往数据库写入行为操作数据
			BehavioralHelper.getInstance().saveBehavior(
					BehaviorConstants.PAGE.PHONE_REGISTRATION_3,
					BehaviorConstants.BEHAVIORA.ENTER_PAGE,
					BehaviorConstants.TYPE.TYPE_ENTER_PAGE);
			setCommonTitle("手机注册（3/3）");
			if (pwdFragment == null) {
				pwdFragment = RegisterPwdFragment.getInstance(mData);
				transaction.add(contentId, pwdFragment);
			}
			transaction.show(pwdFragment);
			break;
		case REGISTER_PAGE_FOUR:
			if (loginFragment == null) {
				loginFragment = RegisterLoginFragment.getInstance(mData);
				loginFragment.setOnFragmentChangeCallback(mCallback);
				transaction.add(contentId, loginFragment);
			}
			transaction.show(loginFragment);
			setCommonTitle("温馨提示");
			break;
		}
	}

	private void hideFragments(FragmentTransaction transaction) {
		if (transaction != null) {
			if (phoneFragment != null) {
				transaction.hide(phoneFragment);
			}
			if (codeFragment != null) {
				transaction.hide(codeFragment);
			}
			if (pwdFragment != null) {
				transaction.hide(pwdFragment);
			}
			if (loginFragment != null) {
				transaction.hide(loginFragment);
			}
			transaction.commitAllowingStateLoss();
		}
	}

	private ChangeFragmentCallback mCallback = new ChangeFragmentCallback() {
		@Override
		public void changeFragment(int fragmentCode) {
			if (fragmentCode == REGISTER_PAGE_FIRST) {
				cleanTop();
			}
			chageFragmentByCode(fragmentCode);
		}
	};

	@Override
	public void onBackPressed() {
		if (stack != null) {
			int code = pop();
			if (code == -1) {
				if (SDKControler.getPageName().equals(
						BehaviorConstants.PAGE.PHONE_REGISTRATION_1 + "")) {
					// 往数据库写入行为操作数据
					BehavioralHelper.getInstance().saveBehavior(
							BehaviorConstants.PAGE.PHONE_REGISTRATION_1,
							BehaviorConstants.BEHAVIORA.RETURN,
							BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
				}
			}
			if (code > 0) {
				if (SDKControler.getPageName().equals(
						BehaviorConstants.PAGE.PHONE_REGISTRATION_2 + "")) {
					// 往数据库写入行为操作数据
					BehavioralHelper.getInstance().saveBehavior(
							BehaviorConstants.PAGE.PHONE_REGISTRATION_2,
							BehaviorConstants.BEHAVIORA.RETURN,
							BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
				} else if (SDKControler.getPageName().equals(
						BehaviorConstants.PAGE.PHONE_REGISTRATION_3 + "")) {
					// 往数据库写入行为操作数据
					BehavioralHelper.getInstance().saveBehavior(
							BehaviorConstants.PAGE.PHONE_REGISTRATION_3,
							BehaviorConstants.BEHAVIORA.RETURN,
							BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
				}
				chageFragmentByCode(code);
			} else {
				finish();
				new LoginDialog(mLoginActivity).show();
			}
		} else {
			finish();
			new LoginDialog(mLoginActivity).show();
		}
	};

	private void cleanTop() {
		top = 0;
	}

	private void push(int code) {

		stack[top++] = code;
	}

	private int pop() {
		if (top >= 2) {
			top -= 2;
			return stack[top];
		} else {
			return -1;
		}
	}

	@Override
	protected void onLeftBtnClick() {
		onBackPressed();
	}

}
