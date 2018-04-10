package com.pyw.demo;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;

import com.pengyouwan.framework.utils.LogUtil;
import com.pyw.entity.UserParams;
import com.pyw.open.IDefListener;
import com.pyw.open.IGameExitListener;
import com.pyw.open.IGetRoleListener;
import com.pyw.open.ILogoutCallback;
import com.pyw.open.ILogoutListener;
import com.pyw.open.IPayListener;
import com.pyw.open.PYWSDK;
import com.pyw.open.PYWUser;
import com.pyw.open.PayParams;
import com.pyw.open.PayResult;

public class MainActivity extends Activity {
	public static final String TAG = "MainActivity";
	private Context mContext;

	private EditText edProductId, edPrice;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		setContentView(R.layout.activity_main);

		edProductId = (EditText) findViewById(R.id.ed_proudct_id);
		edPrice = (EditText) findViewById(R.id.ed_price);

		mContext = this;

		LogUtil.d("before init--->>>");
		
		/**
		 * 必须在主act中onCreate执行
		 */
		PYWSDK.init(this, new IDefListener() {

			@Override
			public void onSuccess() {

				Toast.makeText(mContext, "init success!!!!", Toast.LENGTH_SHORT)
						.show();
			}

			@Override
			public void onFail(int code, String message) {
				Toast.makeText(mContext,
						"init fail code:" + code + " msg: " + message,
						Toast.LENGTH_SHORT).show();
			}
		});

		/**
		 * 调用登录接口
		 */
		findViewById(R.id.button_login).setOnClickListener(
				new View.OnClickListener() {

					@Override
					public void onClick(View arg0) {
						PYWSDK.login(new com.pyw.open.IUserListener() {

							@Override
							public void onLoginSuccess(PYWUser user) {
								Toast.makeText(mContext, "Login success",
										Toast.LENGTH_SHORT).show();
							}

							@Override
							public void onLoginFail(int code, String message) {
								Toast.makeText(mContext, "Login fail",
										Toast.LENGTH_SHORT).show();
							}
						});
					}
				});

		/**
		 * 调用定额充值接口
		 */
		findViewById(R.id.button_pay).setOnClickListener(
				new View.OnClickListener() {

					@Override
					public void onClick(View arg0) {
						pay(false);
					}
				});

		/**
		 * 调用任意充值接口
		 */
		findViewById(R.id.button_pay_any_amount).setOnClickListener(
				new View.OnClickListener() {

					@Override
					public void onClick(View arg0) {
						pay(true);
					}
				});

		/**
		 * 调用登出接口
		 */
		findViewById(R.id.button_logout).setOnClickListener(
				new View.OnClickListener() {

					@Override
					public void onClick(View v) {

						PYWSDK.logout(new ILogoutListener() {

							@Override
							public void success() {

								Toast.makeText(mContext, "Logouted！！",
										Toast.LENGTH_SHORT).show();
							}

							@Override
							public void fail(int code) {
								Toast.makeText(mContext, "logout error",
										Toast.LENGTH_SHORT).show();
							}
						});
					}
				});

		/**
		 * 调用退出游戏接口
		 */
		findViewById(R.id.button_exitgame).setOnClickListener(
				new View.OnClickListener() {

					@Override
					public void onClick(View arg0) {

						PYWSDK.exitGame(new IGameExitListener() {

							@Override
							public void onExitError(int code, String message) {
								// 退出错误
								Toast.makeText(mContext, "exit game ",
										Toast.LENGTH_SHORT).show();
							}

							@Override
							public void onExit() {

								Toast.makeText(mContext, "exit game",
										Toast.LENGTH_SHORT).show();
								exit();
							}

							@Override
							public void onCancel() {

								Toast.makeText(mContext, "exit game cancel",
										Toast.LENGTH_SHORT).show();
							}
						});
					}
				});

		/**
		 * 调用上传角色信息接口。需要在以下四种场景中调用此接口： 1.创建角色。2.进入游戏。3.角色升级。4.退出游戏
		 */
		findViewById(R.id.button_role_message).setOnClickListener(
				new OnClickListener() {

					@Override
					public void onClick(View v) {
						UserParams params = new UserParams();
						// 角色id （必填）
						params.setRoleid("1");
						// 角色名 （必填）
						params.setRoleName("角色名");
						// 角色等級 （必填）
						params.setRoleLevel("1");
						// 区服标识 （必填）
						params.setServerArea("1");
						// 区服完整信息（必填）
						params.setServerAreaName("工会信息");
						PYWSDK.getRoleMessage(params, new IGetRoleListener() {

							@Override
							public void onSuccess() {

							}

							@Override
							public void onFail(int code, String message) {

							}
						});
					}
				});

		/**
		 * 非登出接口处的登出回调（如个人中心的注销）
		 */
		PYWSDK.setLogoutCallback(new ILogoutCallback() {

			@Override
			public void onLogout() {
				Toast.makeText(mContext, "callback logout", Toast.LENGTH_SHORT)
						.show();
			}
		});
	}

	/**
	 * 退出应用时必须调用
	 */
	@Override
	public void onBackPressed() {

		PYWSDK.exitGame(new IGameExitListener() {

			@Override
			public void onExitError(int code, String message) {
				// 退出错误
				Toast.makeText(mContext, "exit game fail", Toast.LENGTH_SHORT)
						.show();
			}

			@Override
			public void onExit() {
				// 这里执行真正的退出游戏操作
				Toast.makeText(mContext, "exit game success", Toast.LENGTH_SHORT)
						.show();
				exit();
			}

			@Override
			public void onCancel() {
				// 取消退出操作，正常回到游戏
				Toast.makeText(mContext, "exit game cancel", Toast.LENGTH_SHORT)
						.show();
			}
		});
	}

	/**
	 * 充值
	 * 
	 * @param isAnyAmount
	 *            是否任意充
	 */
	private void pay(Boolean isAnyAmount) {
		String productId = "";
		if (!isAnyAmount) {
			productId = edProductId.getText().toString();
			if (TextUtils.isEmpty(productId)) {
				Toast.makeText(mContext, "商品id不能为空", Toast.LENGTH_SHORT).show();
				return;
			}
		}
		String priceStr = edPrice.getText().toString();
		int price;
		if (TextUtils.isEmpty(priceStr)) {
			Toast.makeText(mContext, "价格不能为空", Toast.LENGTH_SHORT).show();
			return;
		} else {
			try {
				price = Integer.parseInt(priceStr);
			} catch (NumberFormatException e) {
				Toast.makeText(getBaseContext(), "输入金额有误", Toast.LENGTH_SHORT)
						.show();
				return;
			}
		}
		PayParams params = new PayParams();
		// 充值类型 1-定额充值 2-任意充值
		params.setChargeType(isAnyAmount ? "2" : "1");
		// 游戏附加字段(必须为json字串)
		params.setExtension(getOrderExtraParams());
		// 订单价格
		params.setPrice(price);
		// 商品id
		params.setProductId(productId);
		// 商品名称
		params.setProductName("元宝");
		// 订单id
		params.setOrderID(System.currentTimeMillis() + "");
		// 角色名称
		params.setRoleName("角色名称");
		// 区服名称
		params.setServerName("区服信息");
		PYWSDK.pay(params, new IPayListener() {

			@Override
			public void onPaySuccess(PayResult result) {
				Log.v(TAG, "pay success: " + result);
			}

			@Override
			public void onPayFail(int code, String message) {
				Toast.makeText(getBaseContext(), message, Toast.LENGTH_SHORT)
						.show();
				Log.e(TAG, "pay failed: " + message);
			}
		});
	}

	/**
	 * 模拟发送订单额外数据（非必传）CP根据需要传(必须为json字串)
	 * 
	 * @return
	 */
	private String getOrderExtraParams() {
		JSONObject jobj = new JSONObject();
		try {
			// 以下为非必要参数，只供参考，厂商可根据自身需求决定传什么参数与值或者不传
			jobj.put("roles_nick", "角色名称1");
			jobj.put("area_name", "游戏区服名称");
			jobj.put("area_num", "游戏区服编号");
			jobj.put("channel", "渠道号");
			jobj.put("product_desc", "商品描述");
		} catch (JSONException e) {
			e.printStackTrace();
		}
		return jobj.toString();
	}

	/**
	 * 退出操作
	 */
	private void exit() {
		System.exit(0);
	}

	@Override
	protected void onPause() {
		PYWSDK.onPause();
		super.onPause();
	}

	@Override
	protected void onResume() {
		PYWSDK.onResume();
		super.onResume();
	}

	@Override
	protected void onDestroy() {
		PYWSDK.onDestroy();
		super.onDestroy();
	}

	@Override
	protected void onStart() {
		PYWSDK.onStart();
		super.onStart();
	}

	@Override
	protected void onRestart() {
		PYWSDK.onRestart();
		super.onRestart();
	}

	@Override
	protected void onStop() {
		PYWSDK.onStop();
		super.onStop();
	}

	@Override
	protected void onNewIntent(Intent intent) {
		PYWSDK.newIntent(intent);
		super.onNewIntent(intent);
	}

	@Override
	public void onConfigurationChanged(Configuration newConfig) {
		PYWSDK.configurationChanged(newConfig);
		super.onConfigurationChanged(newConfig);
	}

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		PYWSDK.onActivityResult(requestCode, resultCode, data);
		super.onActivityResult(requestCode, resultCode, data);
	}
}
