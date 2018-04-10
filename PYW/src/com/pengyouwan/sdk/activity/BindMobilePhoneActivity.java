package com.pengyouwan.sdk.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;

import com.pengyouwan.framework.v4.FragmentTransaction;
import com.pengyouwan.sdk.base.BaseCommonTitleFragmentActivity;
import com.pengyouwan.sdk.interfaces.ChangeFragmentCallback;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.manager.SDKEventDispatcher;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.open.ISDKEventCode;
import com.pengyouwan.sdk.open.ISDKEventExtraKey;
import com.pengyouwan.sdk.open.User;
import com.pengyouwan.sdk.ui.fragment.BindMobilePhoneCodeFragment;
import com.pengyouwan.sdk.ui.fragment.BindPassCardSuccessFragment;
import com.pengyouwan.sdk.ui.fragment.BindPassCardhadPhoneFragment;
import com.pengyouwan.sdk.ui.fragment.BindPasscardPhoneFragment;
import com.pengyouwan.sdk.ui.fragment.BindPasscardPwdFragment;
import com.pengyouwan.sdk.ui.fragment.BindMobilePhoneCodeFragment;
import com.pengyouwan.sdk.utils.BehavioralHelper;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.StaticsHelper;
import com.pyw.common.BehaviorConstants;

/**
 * 描述：绑定手机界面
 * 
 * @author Hanson
 * @since 创建时间：2016-6-30 下午6:19:52
 */
public class BindMobilePhoneActivity extends BaseCommonTitleFragmentActivity {

	private int contentId;

	private BindPassCardhadPhoneFragment passcardByPhone;

	private BindPasscardPhoneFragment inputPhoneFragment;

	private BindPasscardPwdFragment pwdFragment;

	private BindPassCardSuccessFragment successFragment;

	private BindMobilePhoneCodeFragment codeFragment;

	public static final int FRAGMENT_GET_CODE = 0x1010;

	public static final int FRAGMENT_PHONE = 0x1011;

	public static final int FRAGMENT_HAD_PHONE = 0x1012;

	public static final int FRAMGENT_SET_PWD = 0x1013;

	public static final int FRAGMENT_BIND_SUCCESS = 0x1014;

	public static final String PHONE_NUM = "phone";

	private boolean shouldSendCallback = false;

	private int[] stack = new int[5];

	private int top = 0;

	private Bundle data;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(ResIdManager.getLayoutId(BindMobilePhoneActivity.this,
				Rx.layout.pyw_activity_framelayout));
		Intent intent = getIntent();
		if (intent != null) {
			shouldSendCallback = intent
					.getBooleanExtra("send_call_back", false);
		}
		data = new Bundle();
		initTitle();
		initView();
	}

	private void initView() {
		contentId = ResIdManager.getId(BindMobilePhoneActivity.this,
				Rx.id.pyw_layout_fragments);
		if (TextUtils.isEmpty(UserManager.getInstance().getCurrentUserForSDK()
				.getPhoneNo())) {
			changeFragmentByCode(FRAGMENT_PHONE);
		} else {
			changeFragmentByCode(FRAGMENT_HAD_PHONE);
		}
	}

	private ChangeFragmentCallback mCallback = new ChangeFragmentCallback() {

		@Override
		public void changeFragment(int fragmentCode) {
			changeFragmentByCode(fragmentCode);
		}
	};

	private void changeFragmentByCode(int code) {
		FragmentTransaction transaction = getSupportFragmentManager()
				.beginTransaction();
		push(code);
		hideFragments(transaction);
		switch (code) {
		case FRAGMENT_GET_CODE:
			// 往数据库写入行为操作数据
			BehavioralHelper.getInstance().saveBehavior(
					BehaviorConstants.PAGE.BIND_PHONE_PAGE_VERIFY_PHONE,
					BehaviorConstants.BEHAVIORA.ENTER_PAGE,
					BehaviorConstants.TYPE.TYPE_ENTER_PAGE);
			setCommonTitle("验证手机");
			if (codeFragment == null) {
				data.putInt("TAG", FRAMGENT_SET_PWD);
				codeFragment = BindMobilePhoneCodeFragment.getInstance(data);
				codeFragment.setOnFragmentChangeCallback(mCallback);
				transaction.add(contentId, codeFragment);
			}
			transaction.show(codeFragment);
			break;
		case FRAGMENT_PHONE:
			// 往数据库写入行为操作数据
			BehavioralHelper.getInstance().saveBehavior(
					BehaviorConstants.PAGE.BIND_PHONE_PAGE_BIND_PHONE,
					BehaviorConstants.BEHAVIORA.ENTER_PAGE,
					BehaviorConstants.TYPE.TYPE_ENTER_PAGE);
			setCommonTitle("绑定手机");
			if (inputPhoneFragment == null) {
				inputPhoneFragment = BindPasscardPhoneFragment
						.getInstance(data);
				inputPhoneFragment.setOnFragmentChangeCallback(mCallback);
				transaction.add(contentId, inputPhoneFragment);
			}
			transaction.show(inputPhoneFragment);
			break;
		case FRAGMENT_HAD_PHONE:
			setCommonTitle("绑定手机");
			if (passcardByPhone == null) {
				passcardByPhone = BindPassCardhadPhoneFragment
						.getInstance(data);
				passcardByPhone.setChangeFragmentCallback(mCallback);
				transaction.add(contentId, passcardByPhone);
			}
			transaction.show(passcardByPhone);
			break;
		case FRAMGENT_SET_PWD:
			// 往数据库写入行为操作数据
			BehavioralHelper.getInstance().saveBehavior(
					BehaviorConstants.PAGE.BIND_PHONE_PAGE_SET_PASSWORD,
					BehaviorConstants.BEHAVIORA.ENTER_PAGE,
					BehaviorConstants.TYPE.TYPE_ENTER_PAGE);
			setCommonTitle("设置手机登录密码");
			if (pwdFragment == null) {
				pwdFragment = BindPasscardPwdFragment.getInstance(data);
				pwdFragment.setChangeFragmentCallback(mCallback);
				transaction.add(contentId, pwdFragment);
			}
			transaction.show(pwdFragment);
			break;
		case FRAGMENT_BIND_SUCCESS:
			cleanTop();
			setCommonTitle("绑定成功");
			if (successFragment == null) {
				successFragment = BindPassCardSuccessFragment.getInstance(data);
				successFragment.setChangeFragmentCallback(mCallback);
				transaction.add(contentId, successFragment);
			}
			transaction.show(successFragment);
			break;
		default:
			if (shouldSendCallback) {
				dispatchSDKCallback();
			}
			finish();
			break;
		}
	}

	private void cleanTop() {
		top = 0;
	}

	private void hideFragments(FragmentTransaction transaction) {
		if (transaction != null) {
			if (passcardByPhone != null) {
				transaction.hide(passcardByPhone);
			}
			if (inputPhoneFragment != null) {
				transaction.hide(inputPhoneFragment);
			}
			if (successFragment != null) {
				transaction.hide(successFragment);
			}
			if (pwdFragment != null) {
				transaction.hide(pwdFragment);
			}
			if (codeFragment != null) {
				transaction.hide(codeFragment);
			}
			transaction.commitAllowingStateLoss();
		}
	}

	@Override
	public void onBackPressed() {
		if (stack != null) {
			int code = pop();
			if (code == -1) {
				if (SDKControler.getPageName().equals(
						BehaviorConstants.PAGE.BIND_PHONE_PAGE_BIND_PHONE + "")) {
					// 往数据库写入行为操作数据
					BehavioralHelper
							.getInstance()
							.saveBehavior(
									BehaviorConstants.PAGE.BIND_PHONE_PAGE_BIND_PHONE,
									BehaviorConstants.BEHAVIORA.RETURN,
									BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
				}
			}
			if (code > 0) {
				if (SDKControler.getPageName().equals(
						BehaviorConstants.PAGE.BIND_PHONE_PAGE_VERIFY_PHONE
								+ "")) {
					// 往数据库写入行为操作数据
					BehavioralHelper
							.getInstance()
							.saveBehavior(
									BehaviorConstants.PAGE.BIND_PHONE_PAGE_VERIFY_PHONE,
									BehaviorConstants.BEHAVIORA.RETURN,
									BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
				} else if (SDKControler.getPageName().equals(
						BehaviorConstants.PAGE.BIND_PHONE_PAGE_SET_PASSWORD
								+ "")) {
					// 往数据库写入行为操作数据
					BehavioralHelper
							.getInstance()
							.saveBehavior(
									BehaviorConstants.PAGE.BIND_PHONE_PAGE_SET_PASSWORD,
									BehaviorConstants.BEHAVIORA.RETURN,
									BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
				}
				changeFragmentByCode(code);
			} else {
				finish();
			}
		} else {
			finish();
		}
	};

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

	// 初始化界面标题
	private void initTitle() {
		setCommonTitle("绑定手机");
	}

	public static Intent createIntentForTipsDilaog(Context context) {
		Intent intent = new Intent(context, BindMobilePhoneActivity.class);
		intent.putExtra("send_call_back", true);
		return intent;
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
		stack = null;
	}

	private void dispatchSDKCallback() {
		User user = UserManager.getInstance().getCurrentUser();
		// 登陆成功回调数据
		Bundle data = new Bundle();
		// 返回游戏回调数据
		Bundle backToGameData = new Bundle();
		backToGameData.putSerializable(ISDKEventExtraKey.EXTRA_USER, user);
		data.putSerializable(ISDKEventExtraKey.EXTRA_USER, user);
		// 更新登录时长信息
		StaticsHelper.getInstance().accountChange();
		SDKEventDispatcher.sendEventNow(ISDKEventCode.CODE_LOGIN_SUCCESS, data);
	}

	@Override
	protected void onLeftBtnClick() {
		if (shouldSendCallback) {
			dispatchSDKCallback();
		}
		onBackPressed();
	}

}
