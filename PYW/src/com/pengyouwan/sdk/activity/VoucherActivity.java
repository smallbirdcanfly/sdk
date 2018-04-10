
package com.pengyouwan.sdk.activity;

import java.util.ArrayList;
import java.util.LinkedList;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.sdk.adapter.VoucherListAdapter;
import com.pengyouwan.sdk.base.BaseCommonTitleFragmentActivity;
import com.pengyouwan.sdk.entity.Voucher;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.protocol.VoucherListTask;
import com.pengyouwan.sdk.ui.widget.TipsLayout;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.ToastUtil;
import com.pengyouwan.sdk.utils.VoucherHelper;

/**
 * 描述：使用代金券列表
 * 
 * @author Hanson
 * @since 创建时间：2016-7-1 下午8:56:13
 */
public class VoucherActivity extends BaseCommonTitleFragmentActivity implements OnScrollListener {

    private Context mContext;

    private TipsLayout mTipsLayout;

    private VoucherListAdapter adapter;

    private VoucherHelper mHelper;

    private TextView confirm;

    private float mTotal, mSelectMoney;

    private TextView mEmptyTv, tvOrderMoney, tvSelectMoney;

    protected final int MSG_BACK_LOAD_DATA = 0x2000;

    private final int MSG_UI_START_LOADING = 0x1000;

    private final int MSG_UI_LOAD_SUCCESS = 0x1001;

    private final int MSG_UI_LOAD_FAILE = 0x1002;

    private final int MSG_BACK_PAY = 0x1005;

    private boolean isConfirm = false;

    private static final String TOTAL_MONEY = "total_money";

    private ListView list;

    private LinearLayout llBottom;// 无代金券不显示底部按钮

    private int mCurPage = 1;// 当前页

    private int mCountPage;// 总页数

    private ArrayList<Voucher> mAllVoucherList;// 代金券列表总额

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mContext = this;
        initVoucherHelper();
        if (AppUtil.isScreenLandscape(this)) {
            setContentView(ResIdManager.getLayoutId(this, Rx.layout.pyw_activity_voucher_landscape));
        } else {
            setContentView(ResIdManager.getLayoutId(this, Rx.layout.pyw_activity_voucher_portrait));
        }
        initView();
    }

    @Override
    protected void onResume() {
        super.onResume();
        // mHelper.cleanCache();
        // //清除列表
        // if (mAllVoucherList != null) {
        // mAllVoucherList.clear();
        // }
    }

    /**
     * 初始化代金券辅助工具的总金额以及缓存金额
     */
    private void initVoucherHelper() {
        mHelper = VoucherHelper.getInsntance();
        mTotal = getIntent().getFloatExtra(TOTAL_MONEY, 0);
        mHelper.setTotal(mTotal);
        mHelper.cleanCache();
        mSelectMoney = 0;
    }

    /**
     * 四舍五入，保留两位小数
     * 
     * @param flo
     * @return
     */
    private String formatPrice(float flo) {
        java.math.BigDecimal b = new java.math.BigDecimal(flo);
        float num2 = b.setScale(2, java.math.BigDecimal.ROUND_HALF_UP).floatValue();
        return String.format("%.0f", num2);
    }

    /**
     * 初始化
     */
    private void initView() {
        setCommonTitle("选择代金券");
        llBottom = (LinearLayout) findViewById(ResIdManager.getId(mContext,
                Rx.id.pyw_layout_confirm));
        confirm = (TextView) findViewById(ResIdManager.getId(mContext, Rx.id.pyw_tv_confirm));
        mTipsLayout = (TipsLayout) findViewById(ResIdManager.getId(mContext, Rx.id.pyw_layout_tips));
        tvOrderMoney = (TextView) findViewById(ResIdManager.getId(mContext,
                Rx.id.pyw_tv_order_money));

        tvSelectMoney = (TextView) findViewById(ResIdManager.getId(mContext,
                Rx.id.pyw_tv_select_money));
        mEmptyTv = (TextView) findViewById(ResIdManager.getId(mContext, Rx.id.pyw_tv_empty));
        confirm.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                if (voucherLinkedList.size() > 0) {
                    for (Voucher voucher : voucherLinkedList) {
                        mHelper.setSelectedVoucher(voucher);
                    }
                    sendEmptyBackgroundMessage(MSG_BACK_PAY);
                } else {
                    finish();
                }
            }

        });

        mTipsLayout.setOnRefreshButtonClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                sendEmptyBackgroundMessage(MSG_BACK_LOAD_DATA);
            }
        });

        tvOrderMoney.setText("¥" + formatPrice(mTotal));
        tvSelectMoney.setText("¥" + formatPrice(mSelectMoney));
        // 初始化代金券列表
        initListVIew();
        sendEmptyBackgroundMessage(MSG_BACK_LOAD_DATA);
    }

    private void initListVIew() {
        list = (ListView) findViewById(ResIdManager.getId(mContext, Rx.id.pyw_list));
        adapter = new VoucherListAdapter(mContext, list, mTotal);
        list.setAdapter(adapter);
        list.setOnItemClickListener(mItemClickListener);
        list.setOnScrollListener(this);
    }

    // 加载数据
    private void loadData() {
        sendEmptyUiMessage(MSG_UI_START_LOADING);
        VoucherListTask mTask = new VoucherListTask() {

            @Override
            public void callback(HttpResponse httpResponse) {
                VoucherListResponse mResponse = (VoucherListResponse) httpResponse;
                if (mResponse != null && mResponse.isOk()) {
                    Message message = Message.obtain();
                    message.what = MSG_UI_LOAD_SUCCESS;
                    ArrayList<Voucher> list = mResponse.getVouchers();
                    if (list != null && list.size() > 0) {
                        message.obj = list;
                    }
                    mCountPage = mResponse.getTotalPage();
                    sendUiMessage(message);
                } else {
                    sendEmptyUiMessage(MSG_UI_LOAD_FAILE);
                }
            }
        };
        try {
            mTask.request("2", mCurPage);// 1 未使用;2 可使用(包含 1),3 已用完,4 已过期
        } catch (AppException e) {
            ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
            sendEmptyUiMessage(MSG_UI_LOAD_FAILE);
            e.printStackTrace();
        }
    }

    @Override
    public void handleBackgroundMessage(Message msg) {
        super.handleBackgroundMessage(msg);
        switch (msg.what) {
            case MSG_BACK_LOAD_DATA:
                loadData();
                break;
            case MSG_BACK_PAY:
                isConfirm = true;
                setResult(RESULT_OK);
                finish();
                break;
        }
    }

    @Override
    protected void onLeftBtnClick() {
        onBackPressed();
    };

    private void cleanHelperCache() {
        if (!isConfirm) {
            mHelper.cleanCache();
        }
    }

    @Override
    public void onBackPressed() {
        cleanHelperCache();
        super.onBackPressed();
    };

    @Override
    public void handleUiMessage(Message msg) {
        super.handleUiMessage(msg);
        switch (msg.what) {
            case MSG_UI_START_LOADING:
                if (mAllVoucherList == null || mAllVoucherList.size() == 0) {
                    mTipsLayout.show(TipsLayout.TYPE_LOADING);
                }
                break;
            case MSG_UI_LOAD_SUCCESS:
                if (mAllVoucherList == null) {
                    mAllVoucherList = new ArrayList<Voucher>();
                }
                ArrayList<Voucher> vlist = (ArrayList<Voucher>) msg.obj;
                if (vlist != null) {
                    mAllVoucherList.addAll(vlist);
                    adapter.setDatas(mAllVoucherList);
                    adapter.notifyDataSetChanged();
                    llBottom.setVisibility(View.VISIBLE);
                    list.setVisibility(View.VISIBLE);
                    mEmptyTv.setVisibility(View.GONE);
                } else {
                    llBottom.setVisibility(View.GONE);
                    list.setVisibility(View.GONE);
                    mEmptyTv.setVisibility(View.VISIBLE);
                }
                mTipsLayout.hide();
                break;
            case MSG_UI_LOAD_FAILE:
                mTipsLayout.show(TipsLayout.TYPE_FAILE);
                break;
        }
    }

    /**
     * 1、新建保存选择的Item列表 2、判断选择的金额数量 mTotal（总金额），mSelectMoney（已选择item的金额之和）
     */
    LinkedList<Voucher> voucherLinkedList = new LinkedList<Voucher>();

    private OnItemClickListener mItemClickListener = new OnItemClickListener() {
        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
            Voucher v = (Voucher) parent.getItemAtPosition(position);
            boolean isSelect = v.isSelected();

            if ((mTotal == mSelectMoney) && !isSelect) {
                return;
            }

            if (isSelect && voucherLinkedList.contains(v)) {
                if (mSelectMoney > 0) {// 判断金额是否大于0，大于0则减去所选择的item金额
                    float consumption_amount = v.getCurrent_consumption_amount();
                    float residual_amount = v.getLeftMoney() - v.getCurrent_consumption_amount();// 计算该item剩余金额
                    v.setLeftMoney(residual_amount + consumption_amount);
                    v.setCurrent_consumption_amount(0.0f);
                    mSelectMoney -= consumption_amount;
                } else {
                    return;
                }

                voucherLinkedList.remove(v);
                mAllVoucherList.get(position).setSelect(false);
                v.setSelect(false);
            } else if (!isSelect && !voucherLinkedList.contains(v)) {
                float consumption_amount = mTotal - mSelectMoney;
                float leftMoney = v.getLeftMoney();// 当前Item剩余可使用金额
                // 判断所选item金额与所需余额的大小
                // 如果大于所需金额，则将当前item的使用金额设置为consumption_amount
                // 如果小于等于所需金额，则将item使用金额设置为当前item能剩余的所有金额leftMoney
                if (leftMoney >= consumption_amount) {
                    consumption_amount = consumption_amount;// leftMoney -
                                                            // consumption_amount;
                } else {
                    consumption_amount = leftMoney;
                }
                v.setCurrent_consumption_amount(consumption_amount);
                // 判断金额是否达到总金额标准
                if (mTotal > mSelectMoney) {
                    mSelectMoney += consumption_amount;
                } else {
                    return;
                }
                voucherLinkedList.add(v);
                mAllVoucherList.get(position).setSelect(true);
                v.setSelect(true);
            } else {
                if (mSelectMoney > 0) {
                    mSelectMoney -= v.getLeftMoney();
                } else {
                    return;
                }

                voucherLinkedList.remove(v);// 待定
                mAllVoucherList.get(position).setSelect(false);
            }
            if (mSelectMoney < mTotal) {
                tvSelectMoney.setText("¥" + formatPrice(mSelectMoney));
            } else {
                tvSelectMoney.setText("¥" + formatPrice(mTotal));
            }
            adapter.setVoucherLinkedList(voucherLinkedList);
            adapter.setmSelectSum(mSelectMoney);
            setItemBg(mTotal == mSelectMoney);
            adapter.notifyDataSetChanged();
        }
    };

    public void setItemBg(boolean isEqual) {
        if (isEqual) {
            for (Voucher v : mAllVoucherList) {
                if (voucherLinkedList.contains(v)) {
                    continue;
                }
                v.setHighlight(false);
            }
        } else {
            for (Voucher v : mAllVoucherList) {
                v.setHighlight(true);
            }
        }

    }

    public static Intent createIntent(Context context, float total) {
        Intent intent = new Intent(context, VoucherActivity.class);
        intent.putExtra(TOTAL_MONEY, total);
        return intent;
    }

    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount,
            int totalItemCount) {
    }

    public void onScrollStateChanged(AbsListView view, int scrollState) {
        // 当不滚动时
        if (scrollState == OnScrollListener.SCROLL_STATE_IDLE) {
            // 判断是否滚动到底部
            if (view.getLastVisiblePosition() == view.getCount() - 1) {
                // 加载更多
                if (mCountPage > mCurPage) {
                    mCurPage++;
                    loadData();
                } else {
                    // ToastUtil.showMsg("数据全部加载完");
                }
            }
        }
    }
}
