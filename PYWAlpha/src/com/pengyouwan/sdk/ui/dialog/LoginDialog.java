/**
 * 
 */

package com.pengyouwan.sdk.ui.dialog;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.base.BaseDialog;
import com.pengyouwan.sdk.activity.FastRegisterActivity;
import com.pengyouwan.sdk.activity.ForgetLoginPasswordActivity;
import com.pengyouwan.sdk.activity.RegisterActivity;
import com.pengyouwan.sdk.db.UserOperator;
import com.pengyouwan.sdk.entity.Constants.UserContants;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.protocol.DelCacheTask;
import com.pengyouwan.sdk.protocol.LoginTask;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.BehavioralHelper;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.ToastUtil;
import com.pyw.common.BehaviorConstants;

/**
 * 描述:登录框
 * 
 * @author CJ
 * @since 2016-6-30 下午3:36:25
 */
public class LoginDialog extends BaseDialog {

	private Activity mActivity;

	private EditText userNameEditText;

	private EditText passwordEditText;

	private TextView forgetPwd, regiest, fast_regiest, separated;

	private LinearLayout userNameLayout;

	private Button enterGameBtn;

	private View selectAccount;

	// 密码、账号文本监听器
	private TextWatcher pwdTextWatcher, mUserNameTextWatcher;

	private PopupWindow mPopupWinodw;

	private SDKUser mSelectUser;

	private BaseAdapter adapter;

	private ListView mListview;

	private CustomProgressDialog progressDialog;

	public LoginDialog(Activity activity) {
		super(activity, ResIdManager.getStyleId(activity,
				Rx.style.PYWTheme_Widget_Dialog));
		setContentView(ResIdManager.getLayoutId(getContext(),
				Rx.layout.pyw_dialog_login_start));
		setCancelable(false);
		mActivity = activity;
		initView();
		// 往数据库写入行为操作数据
		BehavioralHelper.getInstance().saveBehavior(
				BehaviorConstants.PAGE.REGISTRATION_LOGIN_PAGE,
				BehaviorConstants.BEHAVIORA.ENTER_PAGE,
				BehaviorConstants.TYPE.TYPE_ENTER_PAGE);
	}

	/**
	 * 手动显示数据构造方法
	 * 
	 * @param activity
	 * @param user
	 *            手动传入user 供展示
	 */
	public LoginDialog(Activity activity, SDKUser user) {
		super(activity, ResIdManager.getStyleId(activity,
				Rx.style.PYWTheme_Widget_Dialog));
		setContentView(ResIdManager.getLayoutId(getContext(),
				Rx.layout.pyw_dialog_login_start));
		setCancelable(false);
		mSelectUser = user;// 赋值当前user
		mActivity = activity;
		initView();
		// 往数据库写入行为操作数据
		BehavioralHelper.getInstance().saveBehavior(
				BehaviorConstants.PAGE.REGISTRATION_LOGIN_PAGE,
				BehaviorConstants.BEHAVIORA.ENTER_PAGE,
				BehaviorConstants.TYPE.TYPE_ENTER_PAGE);
	}

	/**
	 * 初始化视图
	 */
	private void initView() {
		enterGameBtn = (Button) findViewById(ResIdManager.getId(getContext(),
				Rx.id.pyw_btn_entergame));
		userNameLayout = (LinearLayout) findViewById((ResIdManager.getId(
				getContext(), Rx.id.pyw_layout_login_account)));
		userNameEditText = (EditText) findViewById((ResIdManager.getId(
				getContext(), Rx.id.pyw_et_login_account)));
		passwordEditText = (EditText) findViewById((ResIdManager.getId(
				getContext(), Rx.id.pyw_et_login_psw)));
		forgetPwd = (TextView) findViewById((ResIdManager.getId(getContext(),
				Rx.id.pyw_tv_forgetpsw_tips)));
		fast_regiest = (TextView) findViewById((ResIdManager.getId(
				getContext(), Rx.id.pyw_tv_quick_regist)));
		separated = (TextView) findViewById((ResIdManager.getId(getContext(),
				Rx.id.pyw_tv_separated)));
		regiest = (TextView) findViewById(ResIdManager.getId(getContext(),
				Rx.id.pyw_tv_fast_regist));
		selectAccount = findViewById(ResIdManager.getId(getContext(),
				Rx.id.pyw_layout_select_account));
		enterGameBtn.setOnClickListener(mClickListener);
		forgetPwd.setOnClickListener(mClickListener);
		fast_regiest.setOnClickListener(mClickListener);
		regiest.setOnClickListener(mClickListener);
		selectAccount.setOnClickListener(mClickListener);
		if (mSelectUser == null) {// 当前user为空则缓存获取
			initLastLoginUserInfo();
		}
		if (InitManager.getInstance().isFast() == 0) {// 隐藏快速注册
			fast_regiest.setVisibility(View.GONE);
			separated.setVisibility(View.GONE);

		}
		showLastLoginUserInfo();
		initPopupWindow();
		// 限制输入12字符
		userNameEditText.addTextChangedListener(getUserNameTextWatcher());
		// 限制输入12字符
		passwordEditText.addTextChangedListener(getPwdTextWatcher());
		// 设置焦点监听
		passwordEditText.setOnFocusChangeListener(new OnFocusChangeListener() {
			public void onFocusChange(View v, boolean hasFocus) {
				if (hasFocus) {// 获取焦点 清除密码
					if (passwordEditText.getText().length() > 0) {
						passwordEditText.setText("");
					}
				}
			}
		});
		// 回到登录页都手动清除内存的user对象 确保未登录状态
		UserManager.getInstance().cleanCurrenUser();
	}

	// 展示当前选中的用户账号
	private void showLastLoginUserInfo() {
		if (userNameEditText != null && passwordEditText != null) {
			if (mSelectUser != null) {
				userNameEditText.setText(mSelectUser.getUserName());
				passwordEditText.setText(mSelectUser.getPwd());
			} else {
				userNameEditText.setText("");
				passwordEditText.setText("");
			}
		}
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

	private View.OnClickListener mClickListener = new View.OnClickListener() {

		@Override
		public void onClick(View v) {
			if (v == forgetPwd) {// 忘记密码
				Intent intent = ForgetLoginPasswordActivity
						.createIntent(mActivity);
				mActivity.startActivity(intent);
				// 往数据库写入行为操作数据
				BehavioralHelper.getInstance().saveBehavior(
						BehaviorConstants.PAGE.REGISTRATION_LOGIN_PAGE,
						BehaviorConstants.BEHAVIORA.RETRIEVE_PASSWORD,
						BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
				if (isShowing()) {// 关闭登录框
					dismiss();
				}
			} else if (v == regiest) {// 注册
				Intent intent = RegisterActivity.createIntent(mActivity);
				mActivity.startActivity(intent);
				// 往数据库写入行为操作数据
				BehavioralHelper.getInstance().saveBehavior(
						BehaviorConstants.PAGE.REGISTRATION_LOGIN_PAGE,
						BehaviorConstants.BEHAVIORA.PHONE_REGISTRATION,
						BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
				if (isShowing()) {// 关闭登录框
					dismiss();
				}
			} else if (v == selectAccount) {// 选择账号列表
				if (mPopupWinodw != null) {
					if (adapter != null && adapter.getCount() > 0) {
						mPopupWinodw.showAsDropDown(userNameLayout, 0, -8);
					} else {
						ToastUtil.showMsg("没有缓存账号");
					}
				}
			} else if (v == enterGameBtn) {// 进入游戏
				if (checkInfo()) {// 检查信息正常
					// 往数据库写入行为操作数据
					BehavioralHelper.getInstance().saveBehavior(
							BehaviorConstants.PAGE.REGISTRATION_LOGIN_PAGE,
							BehaviorConstants.BEHAVIORA.ENTER_GAME,
							BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
					doLogin();
				}
			} else if (v == fast_regiest) { // 快速注册
				Intent intent = FastRegisterActivity.createIntent(mActivity);
				mActivity.startActivity(intent);
				// 往数据库写入行为操作数据
				BehavioralHelper.getInstance().saveBehavior(
						BehaviorConstants.PAGE.REGISTRATION_LOGIN_PAGE,
						BehaviorConstants.BEHAVIORA.QUICK_REGISTRATION,
						BehaviorConstants.TYPE.TYPE_CLICK_BUTTON);
				if (isShowing()) {
					dismiss();
				}
			}
		}
	};

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
					dismissProgress();
					if (response.isOk()) {
						setContentGoTo();// 登录成功根据状态进行下一步
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
			loginTask.request(userNameEditText.getText().toString().trim(),
					passwordEditText.getText().toString().trim());
		} catch (AppException e) {
			dismissProgress();
			e.printStackTrace();
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
		}
	}

	/**
	 * 判断账号类型
	 */
	private void setContentGoTo() {
		if (isShowing()) {// 关闭登录框
			dismiss();
		}
		int accountType = UserManager.getInstance().getCurrentUserForSDK()
				.getAccountType();
		if (accountType == UserContants.USER_TYPE_PASSPORT) {// 通行证登录
			JSONArray jsonArray = UserManager.getInstance().getUserList();
			if (UserManager.getInstance().getUserList().length() > 0) {// 如果列表无返回账号
				try {
					JSONObject jobj = (JSONObject) jsonArray.get(0);
					SDKUser user = new SDKUser();
					user.setUserName(jobj.getString("account"));
					if (jobj.getString("last_buy").equals("1")) {// 1为新购账号
						user.setIsNew(1);
					}
					new LoginingDialog(mActivity, user, true,
							LoginingDialog.CHANGE_TO_LOGIN_FOR_NOPASS).show();
				} catch (JSONException e) {
					new LoginFromPassnoDialog(mActivity).show();
					e.printStackTrace();
				}
			} else {
				new LoginFromPassnoDialog(mActivity).show();
			}
		} else {// 游戏账号登录
			new LoginingDialog(mActivity, UserManager.getInstance()
					.getCurrentUserForSDK(), false,
					LoginingDialog.CHANGE_TO_LOGIN).show();
			// dispatchSDKCallback();
		}
	}

	// /**
	// * 发送登录成功回调
	// */
	// private void dispatchSDKCallback() {
	// if (isShowing()) {
	// dismiss();
	// }
	// Bundle data = new Bundle();
	// data.putSerializable(ISDKEventExtraKey.EXTRA_USER,
	// UserManager.getInstance()
	// .getCurrentUser());
	// int code = ISDKEventCode.CODE_LOGIN_SUCCESS;
	// SDKEventDispatcher.sendEventNow(code, data);
	// }

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

	/**
	 * 下拉账号列表
	 */
	private void initPopupWindow() {
		View view = getLayoutInflater().inflate(
				ResIdManager.getLayoutId(getContext(),
						Rx.layout.pyw_view_account_list), null);
		mPopupWinodw = new PopupWindow(view, AppUtil.dip2px(getContext(), 280),
				LayoutParams.WRAP_CONTENT, true);
		mPopupWinodw.setOutsideTouchable(true);
		mPopupWinodw.setBackgroundDrawable(new BitmapDrawable());
		mListview = (ListView) view.findViewById(ResIdManager.getId(
				getContext(), Rx.id.pyw_list_accounts));
		adapter = new MyListAdapter(getContext(), getAccountsFromDB());
		mListview.setAdapter(adapter);
		mListview.setOnItemClickListener(new OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				SDKUser user = (SDKUser) adapter.getItem(position);
				if (user != null) {
					mSelectUser = user;
					userNameEditText.setText(user.getUserName());
					passwordEditText.removeTextChangedListener(pwdTextWatcher);
					passwordEditText.setText(user.getPwd());
					// 限制输入12字符
					passwordEditText.addTextChangedListener(pwdTextWatcher);
					mPopupWinodw.dismiss();
				}
			}
		});
	}

	/**
	 * 获取账号列表
	 * 
	 * @return
	 */
	private ArrayList<SDKUser> getAccountsFromDB() {
		return (ArrayList<SDKUser>) UserOperator.getInstance().getUserInfos();
	}

	/**
	 * 删除DB中的联系人
	 * 
	 * @return
	 */
	private long delAccountsFromDB(int position) {
		SDKUser user = getAccountsFromDB().get(position);
		long delTag = -1;
		if (user != null) {
			delTag = UserOperator.getInstance().deleteUser(user);
			delAccountsFromServer(user.getUserName());// 删除服务器缓存
		}
		return delTag;
	}

	/**
	 * 删除服务器缓存账号
	 */
	private void delAccountsFromServer(String username) {
		try {
			DelCacheTask task = new DelCacheTask() {
				public void callback(HttpResponse httpResponse) {

				}
			};
			task.request(username);
		} catch (AppException e) {
			e.printStackTrace();
		}
	}

	private class MyListAdapter extends BaseAdapter {

		private Context context;

		private ArrayList<SDKUser> list;

		private DeleBtnClickListener mDeleListener;

		public MyListAdapter(Context context, ArrayList<SDKUser> lis) {
			this.context = context;
			this.list = lis;
			mDeleListener = new DeleBtnClickListener();
		}

		// 删除按钮监听--删除db账号
		private class DeleBtnClickListener implements View.OnClickListener {
			private int position = -1;

			@Override
			public void onClick(View v) {
				position = (Integer) v.getTag();
				if (position >= 0) {
					if (delAccountsFromDB(position) != 0
							|| delAccountsFromDB(position) != -1) {
						SDKUser user = list.remove(position);
						if (mSelectUser != null
								&& user.getUserName().equals(
										mSelectUser.getUserName())) {
							mSelectUser = null;
							showLastLoginUserInfo();
						}
						if (list.size() == 0) {
							mPopupWinodw.dismiss();
						} else {
							adapter.notifyDataSetChanged();
						}
					} else {
						ToastUtil.showMsg("删除出错,请稍后重试");
					}
				} else {
					ToastUtil.showMsg("删除出错,请稍后重试");
				}
			}
		}

		@Override
		public int getCount() {
			if (list != null) {
				return list.size();
			}
			return 0;
		}

		@Override
		public Object getItem(int position) {
			if (list != null && list.size() > position) {
				return list.get(position);
			}
			return null;
		}

		@Override
		public long getItemId(int position) {
			// TODO Auto-generated method stub
			return position;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			if (convertView == null) {
				LayoutInflater inflater = (LayoutInflater) context
						.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
				convertView = inflater.inflate(ResIdManager.getLayoutId(
						context, Rx.layout.pyw_item_account), null);
			}
			ImageView delIv = (ImageView) convertView.findViewById(ResIdManager
					.getId(context, Rx.id.pyw_iv_delect));
			delIv.setOnClickListener(mDeleListener);
			delIv.setTag(position);
			TextView text = (TextView) convertView.findViewById(ResIdManager
					.getId(context, Rx.id.pyw_tv_accountname));
			SDKUser user = list.get(position);
			if (user != null) {
				text.setText(user.getUserName());
			}
			return convertView;
		}

	}

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

	// 密码文本输入监听
	private TextWatcher getPwdTextWatcher() {
		if (pwdTextWatcher == null) {
			pwdTextWatcher = new TextWatcher() {
				private CharSequence charSequence;

				private int editStart;

				private int editEnd;

				private boolean isCache;// 是否缓存显示的密码

				@Override
				public void onTextChanged(CharSequence s, int start,
						int before, int count) {
					// TODO Auto-generated method stub
					charSequence = s;
				}

				@Override
				public void beforeTextChanged(CharSequence s, int start,
						int count, int after) {
					// TODO Auto-generated method stub
					if (s.length() > 13) {// 若一开始字符多于12代表是缓存账号显示的加密密码
						isCache = true;
					} else {
						isCache = false;
					}

				}

				@Override
				public void afterTextChanged(Editable s) {
					// 输入的时候，只有一个光标，这两个值相等
					editStart = passwordEditText.getSelectionStart();
					editEnd = passwordEditText.getSelectionEnd();
					if (isCache) {
						s.clear();
					} else {
						// 限定EditText只能输入12个字符
						if (charSequence.length() > 12) {
							// 默认光标在最前端，所以当输入第13个数字的时候，删掉（光标位置从13-1到12）的数字，这样就无法输入超过12个以后的数字
							s.delete(editStart - 1, editEnd);
						}
					}
				}
			};
		}
		return pwdTextWatcher;
	}

	// 账号文本输入监听
	private TextWatcher getUserNameTextWatcher() {
		if (mUserNameTextWatcher == null) {
			mUserNameTextWatcher = new TextWatcher() {
				private CharSequence charSequence;

				private int editStart;

				private int editEnd;

				@Override
				public void onTextChanged(CharSequence s, int start,
						int before, int count) {
					// TODO Auto-generated method stub
					charSequence = s;
				}

				@Override
				public void beforeTextChanged(CharSequence s, int start,
						int count, int after) {
					// TODO Auto-generated method stub

				}

				@Override
				public void afterTextChanged(Editable s) {
					// 输入的时候，只有一个光标，这两个值相等
					editStart = userNameEditText.getSelectionStart();
					editEnd = userNameEditText.getSelectionEnd();

					// 限定EditText只能输入12个字符
					if (charSequence.length() > 12) {
						// 默认光标在最前端，所以当输入第13个数字的时候，删掉（光标位置从13-1到12）的数字，这样就无法输入超过12个以后的数字
						s.delete(editStart - 1, editEnd);
					}
				}
			};
		}
		return mUserNameTextWatcher;
	}

	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		if (keyCode == KeyEvent.KEYCODE_BACK) {
			// 监听返回键,不然取消
			// dismiss();
		}
		return super.onKeyDown(keyCode, event);
	}

}
