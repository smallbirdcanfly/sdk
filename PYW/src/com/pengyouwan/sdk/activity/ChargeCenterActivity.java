package com.pengyouwan.sdk.activity;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.sdk.base.BaseCommonTitleFragmentActivity;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.entity.Voucher;
import com.pengyouwan.sdk.manager.PayManager;
import com.pengyouwan.sdk.manager.PayManager.AliPayCallback;
import com.pengyouwan.sdk.manager.SDKControler;
import com.pengyouwan.sdk.manager.SDKEventDispatcher;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.open.ISDKEventCode;
import com.pengyouwan.sdk.open.ISDKEventExtraKey;
import com.pengyouwan.sdk.open.PayConstant;
import com.pengyouwan.sdk.protocol.CancelPayTask;
import com.pengyouwan.sdk.protocol.CreateOrderTask;
import com.pengyouwan.sdk.protocol.VoucherListTask;
import com.pengyouwan.sdk.ui.dialog.CustomProgressDialog;
import com.pengyouwan.sdk.ui.dialog.InputPayPasswordDialog;
import com.pengyouwan.sdk.ui.dialog.InputPayPasswordDialog.InputPayPwdCallBack;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.NetWorkUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.ToastUtil;
import com.pengyouwan.sdk.utils.VoucherHelper;

/**
 * 描述：支付中心页面
 * 
 * @author Hanson
 * @since 创建时间：2016-7-2 上午10:15:28
 */
public class ChargeCenterActivity extends BaseCommonTitleFragmentActivity {
	private InputPayPasswordDialog payDialog;

	private final int MSG_UI_LOAD_SUCCESS = 0x1001;

	private final int MSG_UI_HIDE_PROGRESS = 0x1002;

	// token失效
	private final int MSG_UI_TOKEN_FAILE = 0x1003;

	private View alipay, voucher, confirm, paySuccess, uunion, wechat;

	private Button backGame;

	private TextView payText, total, voucherInfo, tvTitle, tvOrderId,
			productText, selPayText;

	private LinearLayout payLayout;

	private static final String CHARGE_TOTAL = "charge_total";

	private static final String CP_PARAMS = "cp_json_params";

	private static final String CP_ORDER_ID = "cp_order_id";

	private static final String CP_ORTHER = "cp_orther";
	
	private static final String CP_ROLE = "cp_role";
	
	private static final String CP_SERVICE = "cp_service";

	private static final String CHARGE_PRODUCT_NAME = "charge_product_name";

	private final int CHARGECENTER_CODE = 0x101;

	// 生成订单信息
	private final int GETALIPAYINFO_CODE = 0x102;

	// 微信回调
	public static final int GETWXPAY_CODE = 0X103;
	
	// 支付宝回调
	public static final int GETALIPAY_CODE = 0X104;
	
	// 银联回调
	public static final int GETUNIO_CODE = 0X104;

	private static final String CP_PRODUCT_ID = "cp_product_id";

	private static final String IS_ANY_AMOUNT = "is_any_amount";

	private final int MSG_UI_START_LOADING = 0x105;

	private final int MSG_UI_CHARGE_SUCCESS = 0x108;

	// 微信支付成功
	private final int MSG_UI_WECHAT_CHARGE_SUCCESS = 0x114;
	
	// 支付宝支付成功
	private final int MSG_UI_ALIPAY_CHARGE_SUCCESS = 0x115;

	private final int MSG_UI_CHARGE_FAIL = 0x109;

	// 提交支付失败的订单信息
	private final int COMMITFAILORDER_CODE = 0x110;

	private final int MSG_UI_COMMITORDER_COMPLETE = 0x111;

	private final int MSG_BACK_LOAD_DATA = 0x112;

	private final int MSG_UI_REFRESH = 0x113;

	// 总额
	private int totalPrice;

	// 代金卷总额
	private float money;

	// 商品id
	private String productId;

	// 商品名称
	private String productName;

	// 生成的订单信息
	private String orderInfo;
	
	// 角色名称
	private String roleName = "";
	
	// 区服
	private String serviceArea = "";

	private CustomProgressDialog mProgressDialog;

	private String cpParams;// cp传过来的json参数

	private int isAnyAmount = 1;// 是否任意金额 1表示固定金额,2任意充

	private String orderId;

	private boolean isCancleCharge = true;// 是否已经处于取消支付的状态

	private View imgAliSelected, imgUnioSelected, imgWechatSelected;

	private final int ALIPAY = 3;

	private final int UNNIONPAY = 7;

	private final int WECHAT = 2;

	private int paytype = ALIPAY;

	private float allVoucherMoney = 0;

	private boolean hadVoucher = true;// 默认认为存在代金券

	private boolean isSelectVoucher = false;// 默认没选代金券

	// private static boolean isWxComplete = false;// 是否微信支付完成
	//
	// private static int wxRespCode;// 微信支付响应code

	public static Intent createIntent(Context context, Map<String, Object> map,
			int isAnyAmount) {
		Intent intent = new Intent(context, ChargeCenterActivity.class);
		intent.putExtra(CHARGE_TOTAL, Float.parseFloat(String.valueOf(map
				.get(PayConstant.PAY_MONEY))));
		if (map.containsKey(PayConstant.PAY_EXTRA)) {// 判断是否含有额外数据
			intent.putExtra(CP_PARAMS, map.get(PayConstant.PAY_EXTRA)
					.toString());
		} else {
			intent.putExtra(CP_PARAMS, "");
		}
		if(map.get(PayConstant.PAY_ROLE_NAME)!=null){
			intent.putExtra(CP_ROLE, map.get(PayConstant.PAY_ROLE_NAME).toString());
		}
		if(map.get(PayConstant.PAY_SERVICE_AREA) != null){
			intent.putExtra(CP_SERVICE, map.get(PayConstant.PAY_SERVICE_AREA).toString());
		}
		
		intent.putExtra(CHARGE_PRODUCT_NAME,
				map.get(PayConstant.PAY_PRODUCE_NAME).toString());
		if (isAnyAmount == 1) {// 定额充值
			intent.putExtra(CP_PRODUCT_ID,
					String.valueOf(map.get(PayConstant.PAY_PRODUCT_ID)));
		}
		intent.putExtra(IS_ANY_AMOUNT, isAnyAmount);
		intent.putExtra(CP_ORDER_ID, map.get(PayConstant.PAY_ORDER_ID)
				.toString());
		
		return intent;
	}

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		if (AppUtil.isScreenLandscape(ChargeCenterActivity.this)) {
			setContentView(ResIdManager.getLayoutId(this,
					Rx.layout.pyw_activity_chargecenter_landscape));
		} else {
			setContentView(ResIdManager.getLayoutId(this,
					Rx.layout.pyw_activity_chargecenter_portrait));
		}
		orderId = getIntent().getStringExtra(CP_ORDER_ID);
		totalPrice = (int) getIntent().getFloatExtra(CHARGE_TOTAL, 0);
		productId = getIntent().getStringExtra(CP_PRODUCT_ID);
		isAnyAmount = getIntent().getIntExtra(IS_ANY_AMOUNT, 1);
		if (isAnyAmount == 2) {// 任意充的话 productId设置空串
			productId = "";
		}
		productName = getIntent().getStringExtra(CHARGE_PRODUCT_NAME);
		cpParams = getIntent().getStringExtra(CP_PARAMS);
		
		if( getIntent().hasExtra(CP_ROLE))
		roleName = getIntent().getStringExtra(CP_ROLE);
		if( getIntent().hasExtra(CP_SERVICE))
		serviceArea = getIntent().getStringExtra(CP_SERVICE);
		
		initTitle();
		initView();
		VoucherHelper.getInsntance().clean();
		sendEmptyBackgroundMessage(MSG_BACK_LOAD_DATA);
	}

	// 初始化控件
	private void initView() {
		productText = (TextView) findViewById(ResIdManager.getId(
				ChargeCenterActivity.this, Rx.id.pyw_tv_product_name_content));
		alipay = findViewById(ResIdManager.getId(ChargeCenterActivity.this,
				Rx.id.pyw_layout_alipay));
		uunion = findViewById(ResIdManager.getId(ChargeCenterActivity.this,
				Rx.id.pyw_layout_uppay));
		wechat = findViewById(ResIdManager.getId(ChargeCenterActivity.this,
				Rx.id.pyw_layout_wechat));
		imgAliSelected = findViewById(ResIdManager.getId(
				ChargeCenterActivity.this, Rx.id.pyw_iv_alipay_selected));
		imgUnioSelected = findViewById(ResIdManager.getId(
				ChargeCenterActivity.this, Rx.id.pyw_iv_uppay_selected));
		imgWechatSelected = findViewById(ResIdManager.getId(
				ChargeCenterActivity.this, Rx.id.pyw_iv_wechat_selected));
		tvOrderId = (TextView) findViewById(ResIdManager.getId(
				ChargeCenterActivity.this, Rx.id.pyw_tv_order_id_content));
		payText = (TextView) findViewById(ResIdManager.getId(
				ChargeCenterActivity.this, Rx.id.pyw_tv_pay_text));
		voucherInfo = (TextView) findViewById(ResIdManager.getId(
				ChargeCenterActivity.this, Rx.id.pyw_tv_voucher_info));
		total = (TextView) findViewById(ResIdManager.getId(
				ChargeCenterActivity.this, Rx.id.pyw_tv_total_content));

		confirm = findViewById(ResIdManager.getId(ChargeCenterActivity.this,
				Rx.id.pyw_tv_confirm));

		voucher = findViewById(ResIdManager.getId(ChargeCenterActivity.this,
				Rx.id.pyw_layout_voucher));
		paySuccess = findViewById(ResIdManager.getId(ChargeCenterActivity.this,
				Rx.id.pyw_layout_pay_success));
		selPayText = (TextView) findViewById(ResIdManager.getId(
				ChargeCenterActivity.this, Rx.id.pyw_tv_text));
		payLayout = (LinearLayout) findViewById(ResIdManager.getId(
				ChargeCenterActivity.this, Rx.id.pyw_layout_pay));

		tvTitle = (TextView) findViewById(ResIdManager.getId(
				ChargeCenterActivity.this, Rx.id.pyw_tv_paytitle));
		backGame = (Button) findViewById(ResIdManager.getId(
				ChargeCenterActivity.this, Rx.id.pyw_btn_backgame));

		backGame.setOnClickListener(mListener);
		confirm.setOnClickListener(mListener);
		voucher.setOnClickListener(mListener);
		alipay.setOnClickListener(mListener);
		uunion.setOnClickListener(mListener);
		wechat.setOnClickListener(mListener);
		checkPayment();
	}

	/**
	 * 四舍五入，保留两位小数
	 * 
	 * @param flo
	 * @return
	 */
	private String formatPrice(float flo) {
		java.math.BigDecimal b = new java.math.BigDecimal(flo);
		float num2 = b.setScale(2, java.math.BigDecimal.ROUND_HALF_UP)
				.floatValue();
		return String.format("%.0f", num2);
	}

	private void refreshView() {
		total.setText("¥" + formatPrice(totalPrice));
		if (allVoucherMoney > totalPrice) {
			allVoucherMoney = totalPrice;
		}
		selPayText.setVisibility(View.VISIBLE);
		payLayout.setVisibility(View.VISIBLE);
		if (isSelectVoucher) {// 选了代金券
			float pay;
			if (money > 0) {
				pay = totalPrice - money;
				voucherInfo.setText(money == 0 ? "无可用" : "已抵扣:¥"
						+ formatPrice(money));
			} else {
				pay = totalPrice - allVoucherMoney;
				voucherInfo.setText(allVoucherMoney == 0 ? "无可用" : "已抵扣:¥"
						+ formatPrice(allVoucherMoney));
			}

			if (pay <= 0) {
				pay = 0;
				selPayText.setVisibility(View.INVISIBLE);
				payLayout.setVisibility(View.INVISIBLE);
			}
			payText.setText(getSpan("需付金额:", "¥" + formatPrice(pay)));
		} else {// 没选代金券
			if (hadVoucher) {// 有代金券
				voucherInfo.setText("选择代金券");
			} else {
				voucherInfo.setText("无可用");
			}
			payText.setText(getSpan("需付金额:", "¥" + formatPrice(totalPrice)));
		}
		tvOrderId.setText(orderId);
		productText.setText(productName == null ? "" : productName);
	}

	private SpannableString getSpan(String desc, String total) {
		SpannableString ss = new SpannableString(desc + total);
		ss.setSpan(
				new ForegroundColorSpan(getResources().getColor(
						ResIdManager.getColorId(this,
								Rx.color.pyw_chargecenter_mumber))), desc
						.length(), ss.length(),
				Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		return ss;
	}

	private OnClickListener mListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			if (v == voucher) {
				Intent intent = VoucherActivity.createIntent(
						ChargeCenterActivity.this, totalPrice);
				startActivityForResult(intent, CHARGECENTER_CODE);
			} else if (v == alipay) {
				paytype = ALIPAY;
				refreshPayType();
			} else if (v == uunion) {
				paytype = UNNIONPAY;
				refreshPayType();
			} else if (v == wechat) {
				paytype = WECHAT;
				refreshPayType();
			} else if (v == confirm) {
				if (!NetWorkUtil.isNetworkAvailable(ChargeCenterActivity.this)) {
					ToastUtil.showMsg(getString(ResIdManager.getStringId(
							ChargeCenterActivity.this,
							Rx.string.pyw_networkunavilable)));
					return;
				}
				SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
				if (user.isHavePayPwd() && shouldShowPayDialog()) {
					showPayPswDialog();
				} else {
					// 开始支付
					sendEmptyBackgroundMessage(GETALIPAYINFO_CODE);
				}
			} else if (v == backGame) {
				finish();
			}
		}
	};

	// 根据是否存在代金券来判断是否要弹出支付密码认证框
	private boolean shouldShowPayDialog() {
		// 只要存在有代金券，或者手动选择了代金券，就需要弹出支付密码框
		// money不为0，说明选择了代金券
		return isSelectVoucher || money != 0;
		// return true;
	}

	private void refreshPayType() {
		if (paytype == ALIPAY) {
			alipay.setSelected(true);
			uunion.setSelected(false);
			wechat.setSelected(false);
			imgAliSelected.setVisibility(View.VISIBLE);
			imgUnioSelected.setVisibility(View.INVISIBLE);
			imgWechatSelected.setVisibility(View.INVISIBLE);
		} else if (paytype == UNNIONPAY) {
			alipay.setSelected(false);
			uunion.setSelected(true);
			wechat.setSelected(false);
			imgAliSelected.setVisibility(View.INVISIBLE);
			imgWechatSelected.setVisibility(View.INVISIBLE);
			imgUnioSelected.setVisibility(View.VISIBLE);
		} else if (paytype == WECHAT) {
			alipay.setSelected(false);
			uunion.setSelected(false);
			wechat.setSelected(true);
			imgWechatSelected.setVisibility(View.VISIBLE);
			imgAliSelected.setVisibility(View.INVISIBLE);
			imgUnioSelected.setVisibility(View.INVISIBLE);
		}
	}

	public void handleBackgroundMessage(android.os.Message msg) {
		switch (msg.what) {
		case GETALIPAYINFO_CODE:
			payByAli();
			break;
		case COMMITFAILORDER_CODE:
			if (orderInfo == null) {
				return;
			}
			if (paytype == ALIPAY) {
				int startIndex = orderInfo.indexOf("out_trade_no=\"") + 14;
				int endIndex = orderInfo.indexOf("\"&", startIndex);
				commitFailOrder(orderInfo.substring(startIndex, endIndex));
			} else {
				// 银联支付取消
				commitFailOrder(orderInfo);
			}
			break;
		case MSG_BACK_LOAD_DATA:
			loadVouchers();
			break;
		default:
			break;
		}
	};

	private void loadVouchers() {
		sendEmptyUiMessage(MSG_UI_START_LOADING);
		VoucherListTask mTask = new VoucherListTask() {
			@Override
			public void callback(HttpResponse httpResponse) {
				VoucherListResponse mResponse = (VoucherListResponse) httpResponse;
				if (mResponse != null && mResponse.isOk()) {
					ArrayList<Voucher> list = mResponse.getVouchers();
					if (list != null && list.size() > 0) {
						hadVoucher = true;
						// allVoucherMoney = 0;
						// for (Voucher v : list) {
						// allVoucherMoney += v.getLeftMoney();
						// }
					} else {
						// 没有代金券
						hadVoucher = false;
					}
					sendEmptyUiMessage(MSG_UI_REFRESH);
				} else if (mResponse.isTokenError()) {
					sendEmptyUiMessage(MSG_UI_TOKEN_FAILE);
				} else {
					// 网络异常，认为存在代金券
					hadVoucher = true;
					sendEmptyUiMessage(MSG_UI_REFRESH);
					ToastUtil.showMsg("获取代金券数据失败");
				}
			}
		};
		try {
			mTask.request(2 + "", 1);
		} catch (AppException e) {
			// 网络异常，认为存在代金券
			hadVoucher = true;
			sendEmptyUiMessage(MSG_UI_REFRESH);
			ToastUtil.showMsg("获取代金券数据失败");
			e.printStackTrace();
		}
	}

	@Override
	public void handleUiMessage(Message msg) {
		super.handleUiMessage(msg);
		switch (msg.what) {
		case MSG_UI_START_LOADING:
			if (mProgressDialog == null) {
				mProgressDialog = new CustomProgressDialog(
						ChargeCenterActivity.this, "请稍后...");
			}
			mProgressDialog.show();
			break;
		case MSG_UI_HIDE_PROGRESS:
			hideprogress();
			break;
		case MSG_UI_CHARGE_SUCCESS:
			hideprogress();
			isCancleCharge = false;
			mTitle.setText(getString(ResIdManager.getStringId(this,
					Rx.string.pyw_buy_success_title)));
			paySuccess.setVisibility(View.VISIBLE);
			tvTitle.setText(getString(ResIdManager.getStringId(this,
					Rx.string.pyw_buy_success)));
			voucher.setClickable(false);
			alipay.setClickable(false);
			uunion.setClickable(false);
			confirm.setClickable(false);
			break;
		case MSG_UI_WECHAT_CHARGE_SUCCESS:
			hideprogress();
			isCancleCharge = false;
			mTitle.setText("支付完成");
			paySuccess.setVisibility(View.VISIBLE);
			tvTitle.setText("支付完成");
			voucher.setClickable(false);
			alipay.setClickable(false);
			uunion.setClickable(false);
			confirm.setClickable(false);
			break;
		case MSG_UI_ALIPAY_CHARGE_SUCCESS:
			hideprogress();
			isCancleCharge = false;
			mTitle.setText("支付完成");
			paySuccess.setVisibility(View.VISIBLE);
			tvTitle.setText("支付完成");
			voucher.setClickable(false);
			alipay.setClickable(false);
			uunion.setClickable(false);
			confirm.setClickable(false);
			break;
		case MSG_UI_CHARGE_FAIL:
			hideprogress();
			isCancleCharge = false;
			mTitle.setText(getString(ResIdManager.getStringId(this,
					Rx.string.pyw_buy_fail_title)));
			paySuccess.setVisibility(View.VISIBLE);
			tvTitle.setText(getString(ResIdManager.getStringId(this,
					Rx.string.pyw_buy_fail)));
			voucher.setClickable(false);
			alipay.setClickable(false);
			uunion.setClickable(false);
			confirm.setClickable(false);
			break;
		case MSG_UI_LOAD_SUCCESS:
			hideprogress();
			break;
		case MSG_UI_COMMITORDER_COMPLETE: // 提交失败订单信息 执行完的回调
			hideprogress();
			sendEmptyUiMessage(MSG_UI_CHARGE_FAIL);
			Bundle data = new Bundle();
			data.putString(ISDKEventExtraKey.EXTRA_ORDERID, orderId);
			SDKEventDispatcher.sendEvent(ISDKEventCode.CODE_CHARGE_FAIL, data);
			break;
		case MSG_UI_REFRESH:
			hideprogress();
			refreshView();
			break;
		case MSG_UI_TOKEN_FAILE:
			AppUtil.tokenErrorLogout(ChargeCenterActivity.this);
			break;
		}
	}

	private void hideprogress() {
		if (mProgressDialog != null) {
			mProgressDialog.dismiss();
		}
	}

	/**
	 * 提交支付失败orderNo
	 * 
	 * @param orderNo
	 */
	private void commitFailOrder(String orderNo) {
		sendEmptyUiMessage(MSG_UI_START_LOADING);
		try {
			CancelPayTask task = new CancelPayTask() {
				@Override
				public void callback(HttpResponse httpResponse) {
					// 返回结果不处理
				}
			};
			task.request(orderNo);
		} catch (AppException e) {
			e.printStackTrace();
		} finally {
			sendEmptyUiMessage(MSG_UI_COMMITORDER_COMPLETE);
		}
	}

	AliPayCallback mAliPayCallback = new AliPayCallback() {

		@Override
		public void onSuccess() {
			sendEmptyUiMessage(MSG_UI_CHARGE_SUCCESS);
			Bundle data = new Bundle();
			data.putString(ISDKEventExtraKey.EXTRA_ORDERID, orderId);
			SDKEventDispatcher.sendEvent(ISDKEventCode.CODE_CHARGE_SUCCESS,
					data);
		}

		@Override
		public void onFail() {
			// ToastUtil.showMsg("支付失败");
			sendEmptyBackgroundMessage(COMMITFAILORDER_CODE);
		}

		@Override
		public void onConfirm() {
			ToastUtil.showMsg("支付结果确认中");
		}
	};

	/**
	 * 生成支付宝订单信息
	 */
	private void payByAli() {
		sendEmptyUiMessage(MSG_UI_START_LOADING);
		CreateOrderTask task = new CreateOrderTask() {

			@Override
			public void callback(HttpResponse httpResponse) {
				CreateOrderResponse response = (CreateOrderResponse) httpResponse;
				if (response != null && response.isOk()) {
					String msg = response.getMsg();
					if (TextUtils.isEmpty(msg)) {
						sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);
						orderInfo = response.getInfo();
						JSONObject jobj = response.getWxJobj();
						if (isSelectVoucher) {// 如果选择了代金券 更新价格
							try {
								jobj.remove("total_fee");
								jobj.put("total_fee", totalPrice + "");
							} catch (Exception e) {
								e.printStackTrace();
							}
						}
						if (paytype == ALIPAY) {// 支付宝
							PayManager.payByH5Ali(ChargeCenterActivity.this,
									jobj);
							
						} else if (paytype == UNNIONPAY) {// 银联
//							PayManager.payByUnio(ChargeCenterActivity.this,
//									response.getTn());
							PayManager.payByH5Uni(ChargeCenterActivity.this,
									jobj);
							
						} else if (paytype == WECHAT) {// 微信
							
							// H5微信支付
							PayManager.payByWeiXin(ChargeCenterActivity.this,
									jobj);
							// 原生支付
							// PayManager.payByWeiXin(ChargeCenterActivity.this,
							// response.getWxBean());
						}
					} else {
						Bundle data = new Bundle();
						data.putString(ISDKEventExtraKey.EXTRA_ORDERID, orderId);
						sendEmptyUiMessage(MSG_UI_CHARGE_SUCCESS);
						SDKEventDispatcher.sendEvent(
								ISDKEventCode.CODE_CHARGE_SUCCESS, data);
					}
				} else if (response != null && response.isTokenError()) {
					sendEmptyUiMessage(MSG_UI_TOKEN_FAILE);
				} else {
					sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);// 隐藏loading框
					ToastUtil.showMsg(response.getMsg());
				}
			}
		};
		try {
			String vouchers = getVoucher();
			String total = totalPrice + "";
			String name = (productName == null ? "" : productName);
			task.request(vouchers, total, paytype + "", cpParams, productId,
					name, 0, isAnyAmount, roleName, serviceArea);
		} catch (AppException e) {
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			sendEmptyUiMessage(MSG_UI_HIDE_PROGRESS);
			e.printStackTrace();
		}

	}

	@Override
	protected void onDestroy() {
		if (isCancleCharge) {
			// 如果是取消支付，发送回调
			Bundle data = new Bundle();
			data.putString(ISDKEventExtraKey.EXTRA_ORDERID, orderId);
			SDKEventDispatcher
					.sendEvent(ISDKEventCode.CODE_CHARGE_CANCEL, data);
		}
		VoucherHelper.getInsntance().clean();
		super.onDestroy();
	}

	/**
	 * 获取代金卷列表id、拼接成String、逗号隔开
	 * 
	 * @return
	 */
	private String getVoucher() {
		StringBuffer vouchers = new StringBuffer();
		List<Voucher> lists = VoucherHelper.getInsntance().getmVoucherList();
		if (lists.size() > 0) {
			for (int i = 0; i < lists.size(); i++) {
				String voucher = lists.get(i).getVoucherId();
				vouchers.append(voucher + ",");
			}
			return vouchers.substring(0, vouchers.length() - 1);
		}
		return "";
	}

	// 初始化标题
	private void initTitle() {
		setCommonTitle("充值中心");
	}

	// public static void setWxChargeComplete(int respCode) {
	// isWxComplete = true;
	// wxRespCode = respCode;
	// }

	@Override
	protected void onResume() {
		super.onResume();
		// 如果支付方式为微信且完成
		// if (paytype == WECHAT && isWxComplete) {
		// switch (wxRespCode) {
		// case BaseResp.ErrCode.ERR_OK:// 支付成功
		// sendEmptyUiMessage(MSG_UI_CHARGE_SUCCESS);
		// Bundle bundle = new Bundle();
		// bundle.putString(ISDKEventExtraKey.EXTRA_ORDERID, orderId);
		// SDKEventDispatcher.sendEvent(ISDKEventCode.CODE_CHARGE_SUCCESS,
		// bundle);
		// break;
		// default:// 失败
		// sendEmptyBackgroundMessage(COMMITFAILORDER_CODE);
		// break;
		// }
		// }
	}

	@Override
	protected void onActivityResult(int requestcode, int resultCode, Intent data) {
		if (CHARGECENTER_CODE == requestcode) {
			money = VoucherHelper.getInsntance().getCacheMoney();
			if (resultCode == RESULT_OK) {
				isSelectVoucher = true;
				if (money > totalPrice) {
					money = totalPrice;
				}
			} else {
				isSelectVoucher = false;
			}
			refreshView();
		} else if (GETWXPAY_CODE == requestcode) {// 微信支付
			sendEmptyUiMessage(MSG_UI_WECHAT_CHARGE_SUCCESS);
			Bundle bundle = new Bundle();
			bundle.putString(ISDKEventExtraKey.EXTRA_ORDERID, orderId);
			SDKEventDispatcher.sendEvent(ISDKEventCode.CODE_CHARGE_SUCCESS,
					bundle);
		}else if(GETALIPAY_CODE == requestcode){//支付宝h5支付
			sendEmptyUiMessage(MSG_UI_ALIPAY_CHARGE_SUCCESS);
			Bundle bundle = new Bundle();
			bundle.putString(ISDKEventExtraKey.EXTRA_ORDERID, orderId);
			SDKEventDispatcher.sendEvent(ISDKEventCode.CODE_CHARGE_SUCCESS,
					bundle);
			
		}else if(GETUNIO_CODE == requestcode){//银联h5支付
			sendEmptyUiMessage(MSG_UI_ALIPAY_CHARGE_SUCCESS);
			Bundle bundle = new Bundle();
			bundle.putString(ISDKEventExtraKey.EXTRA_ORDERID, orderId);
			SDKEventDispatcher.sendEvent(ISDKEventCode.CODE_CHARGE_SUCCESS,
					bundle);
		}
		else {
			/*
			 * 支付控件返回字符串:success、fail、cancel 分别代表支付成功，支付失败，支付取消
			 */
			if (data != null) {
				String str = data.getExtras().getString("pay_result");
				if (str.equalsIgnoreCase("success")) {
					sendEmptyUiMessage(MSG_UI_CHARGE_SUCCESS);
					Bundle bundle = new Bundle();
					bundle.putString(ISDKEventExtraKey.EXTRA_ORDERID, orderId);
					SDKEventDispatcher.sendEvent(
							ISDKEventCode.CODE_CHARGE_SUCCESS, bundle);
				} else if (str.equalsIgnoreCase("fail")) {
					sendEmptyBackgroundMessage(COMMITFAILORDER_CODE);
				} else if (str.equalsIgnoreCase("cancel")) {
					sendEmptyBackgroundMessage(COMMITFAILORDER_CODE);
				}
			}
		}
	}

	// 显示支付密码对话框或者显示绑定提示
	private void showPayPswDialog() {
		if (payDialog == null) {
			payDialog = new InputPayPasswordDialog(ChargeCenterActivity.this,
					mCallBack);
		}
		payDialog.clearPassword();
		SpannableString voucher;
		float pay = 0;
		if (money > 0) {
			voucher = getSpan("代金券已抵扣", "¥" + formatPrice(money));
			pay = totalPrice - money;
		} else {
			voucher = getSpan("代金券已抵扣", "¥" + formatPrice(allVoucherMoney));
			pay = totalPrice - allVoucherMoney;
		}
		payDialog.show(("¥" + formatPrice(pay)), voucher);
	}

	InputPayPwdCallBack mCallBack = new InputPayPwdCallBack() {

		@Override
		public void onSuccess() {
			// 开始支付
			sendEmptyBackgroundMessage(GETALIPAYINFO_CODE);
		}
	};

	/**
	 * 处理支付方式
	 */
	private void checkPayment() {
		payLayout.removeAllViews();
		// TODO Auto-generated method stub
		String paymentStr = SDKControler.getSDKConfig().getPayment();
		if (!TextUtils.isEmpty(paymentStr)) {
			String[] payments = paymentStr.split(",");
			for (String payment : payments) {// 根据返回数据排序和添加支付方式
				if (payment.equals(ALIPAY + "")) {
					payLayout.addView(alipay);
					alipay.setSelected(true);
				}
				if (payment.equals(UNNIONPAY + "")) {
					payLayout.addView(uunion);
					uunion.setVisibility(View.VISIBLE);
				}
				if (payment.equals(WECHAT + "")) {
					payLayout.addView(wechat);
					wechat.setVisibility(View.VISIBLE);
				}
			}

		}
	}

}
