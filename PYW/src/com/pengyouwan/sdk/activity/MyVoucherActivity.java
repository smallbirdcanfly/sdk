package com.pengyouwan.sdk.activity;

import java.util.ArrayList;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Message;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.sdk.adapter.MyVoucherListAdapter;
import com.pengyouwan.sdk.base.BaseCommonTitleFragmentActivity;
import com.pengyouwan.sdk.entity.Voucher;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.protocol.VoucherListTask;
import com.pengyouwan.sdk.ui.widget.TipsLayout;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.NetWorkUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;
import com.pengyouwan.sdk.utils.ToastUtil;

/**
 * 描述：
 * 
 * @author Hanson
 * @since 创建时间：2016-7-1 下午9:16:17
 * 
 */
public class MyVoucherActivity extends BaseCommonTitleFragmentActivity implements OnClickListener,OnScrollListener{

	private Context mContext;

	private TipsLayout mTipsLayout;

	private MyVoucherListAdapter adapter;

	private TextView mEmptyTv, mAccountTv;

	protected final int MSG_BACK_LOAD_DATA = 0x2000;

	private final int MSG_UI_START_LOADING = 0x1000;

	private final int MSG_UI_LOAD_SUCCESS = 0x1001;

	private final int MSG_UI_LOAD_FAILE = 0x1002;

	private final int MSG_UI_FRESH_LIST = 0x1004;

	private ListView list;

	private ArrayList<Voucher> mVoucherList;
	
    private int mCurPage,mCurType,mCountPage;
    
    private int visibleLastIndex = 0;   //最后的可视项索引    
    
    private View loadMoreView,mCanUseView,mUsedView,mOverdueView;
    
    private RelativeLayout mCanUseBtn,mUsedBtn,mOverdueBtn;
    
    private TextView mCanUseTv,mUsedTv,mOverdueTv;
    
    private int mCanuseNum,mUsedNum,mOverdueNum;
    
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		mContext = this;
		if (AppUtil.isScreenLandscape(this)) {
			setContentView(ResIdManager.getLayoutId(this,
					Rx.layout.pyw_activity_myvouchers_landscape));
		} else {
			setContentView(ResIdManager.getLayoutId(this,
					Rx.layout.pyw_activity_myvouchers_portrait));
		}
		initView();
	}

	@Override
	protected void onResume() {
		super.onResume();
		if (NetWorkUtil.isNetworkAvailable(this)) {
			sendEmptyBackgroundMessage(MSG_BACK_LOAD_DATA);
		}
	}

	/**
	 * 初始化
	 */
	private void initView() {
		mCurPage = 1;
		mCurType = 2;//默认可使用类型
		mCountPage = 0;
		loadMoreView = getLayoutInflater().inflate(ResIdManager.getLayoutId(this, Rx.layout.pyw_view_listview_footer), null);
		setCommonTitle(ResIdManager.getStringId(mContext,
				Rx.string.pyw_my_voucher_title));
		mTipsLayout = (TipsLayout) findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_layout_tips));
		mEmptyTv = (TextView) findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_tv_empty));
		mAccountTv = (TextView) findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_tv_account_name));
		
		mCanUseView = (View) findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_myvoucher_canuse_title_line));
		mUsedView = (View) findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_myvoucher_used_title_line));
		mOverdueView = (View) findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_myvoucher_overdue_title_line));
		
		mCanUseTv = (TextView) findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_myvoucher_canuse_title));
		mUsedTv = (TextView) findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_myvoucher_used_title));
		mOverdueTv = (TextView) findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_myvoucher_overdue_title));
		
		mOverdueBtn = (RelativeLayout) findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_myvoucher_overdue_title_btn));
		mUsedBtn = (RelativeLayout) findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_myvoucher_used_title_btn));
		mCanUseBtn = (RelativeLayout) findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_myvoucher_canuse_title_btn));
		
		mOverdueBtn.setOnClickListener(this);
		mUsedBtn.setOnClickListener(this);
		mCanUseBtn.setOnClickListener(this);
		SpannableString ss = new SpannableString("当前登录："
				+ UserManager.getInstance().getCurrentUserForSDK()
						.getUserName());
		ss.setSpan(new ForegroundColorSpan(Color.parseColor("#ee970f")), 5,
				ss.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		mAccountTv.setText(ss);
		mTipsLayout.setOnRefreshButtonClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				if (!NetWorkUtil.isNetworkAvailable(MyVoucherActivity.this)) {
					ToastUtil.showMsg(getString(ResIdManager.getStringId(
							MyVoucherActivity.this,
							Rx.string.pyw_networkunavilable)));
					return;
				}
				sendEmptyBackgroundMessage(MSG_BACK_LOAD_DATA);
			}
		});
		// 初始化代金券列表
		initListVIew();
		loadData();
		ChangeUiTouchCanuseBtn();
	}

	private void initListVIew() {
		list = (ListView) findViewById(ResIdManager.getId(mContext,
				Rx.id.pyw_list));
		list.addFooterView(loadMoreView);    //设置列表底部视图  
		adapter = new MyVoucherListAdapter(mContext, list);
		list.setAdapter(adapter);
		list.setOnScrollListener(this);
		loadMoreView.setVisibility(View.GONE);
	}

	// 加载数据
	private void loadData() {
		if(mCurPage<2){
			sendEmptyUiMessage(MSG_UI_START_LOADING);
		}
		addNewFooterView();
		VoucherListTask mTask = new VoucherListTask() {
			@Override
			public void callback(HttpResponse httpResponse) {
				VoucherListResponse mResponse = (VoucherListResponse) httpResponse;
				if (mResponse != null && mResponse.isOk()) {
					mVoucherList = mResponse.getVouchers();
					if(mVoucherList.size()<10){//数据已经全部获取完
						deleteFooterView();
					}
					mCountPage = mResponse.getTotalPage();
					mCanuseNum = mResponse.getNum_not_use();
					mUsedNum = mResponse.getNum_have_used();
					mOverdueNum = mResponse.getNum_expire();
					sendEmptyUiMessage(MSG_UI_LOAD_SUCCESS);
				} else {
					sendEmptyUiMessage(MSG_UI_LOAD_FAILE);
				}
			}
		};
		try {
			// 2--返回可使用，3--返回已使用
			mTask.request(mCurType+"",mCurPage);// UserManager.getInstance().getCurrentUser().getUserName()
		} catch (AppException e) {
			ToastUtil.showMsg("错误类型:" + e.getType() + ",code:" + e.getCode());
			sendEmptyUiMessage(MSG_UI_LOAD_FAILE);
			e.printStackTrace();
		}
	}

	
	@Override
	public void handleUiMessage(Message msg) {
		super.handleUiMessage(msg);
		switch (msg.what) {
		case MSG_UI_START_LOADING:
			mTipsLayout.show(TipsLayout.TYPE_LOADING);
			break;
		case MSG_UI_LOAD_SUCCESS:
			if (mVoucherList != null) {
				if(mCurPage>1){
					adapter.setMoreDatas(mVoucherList);
				}else{
					adapter.setDatas(mVoucherList);
				}
				adapter.notifyDataSetChanged();
				list.setVisibility(View.VISIBLE);
				mEmptyTv.setVisibility(View.GONE);
			} else {
				list.setVisibility(View.GONE);
				mEmptyTv.setVisibility(View.VISIBLE);
			}
			changeTitleNum();
			mTipsLayout.hide();
			break;
		case MSG_UI_LOAD_FAILE:
			mTipsLayout.show(TipsLayout.TYPE_FAILE);
			deleteFooterView();
			break;
		case MSG_UI_FRESH_LIST:
			adapter.notifyDataSetChanged();
			break;
		}
	}

	/**
	 * 更新代金券数量
	 */
	private void changeTitleNum() {
		mCanUseTv.setText("可使用（"+mCanuseNum+"）");
		mUsedTv.setText("已使用（"+mUsedNum+"）");
		mOverdueTv.setText("已过期（"+mOverdueNum+"）");
	}

	@Override
	public void onClick(View v) {
		if(v == mOverdueBtn){
			ChangeUiTouchOverdueBtn();
			mCurPage = 1;
			mCurType = 4;
			adapter.setStaus(false);
			loadData();
		}else if(v == mUsedBtn){
			ChangeUiTouchUsedBtn();
			mCurType = 3;
			mCurPage = 1;
			adapter.setStaus(false);
			loadData();
		}else if(v == mCanUseBtn){
			mCurType = 2;
			mCurPage = 1;
			ChangeUiTouchCanuseBtn();
			adapter.setStaus(true);
			loadData();
		}
	}
	
	private void ChangeUiTouchCanuseBtn() {
		mUsedView.setVisibility(View.GONE);
		mCanUseView.setVisibility(View.VISIBLE);
		mOverdueView.setVisibility(View.GONE);
		mUsedTv.setTextColor(this.getResources().getColor(ResIdManager.getColorId(mContext, Rx.color.pyw_myvocher_type_title_txt_color)));
		mCanUseTv.setTextColor(this.getResources().getColor(ResIdManager.getColorId(mContext, Rx.color.pyw_common_orange_lighter)));
		mOverdueTv.setTextColor(this.getResources().getColor(ResIdManager.getColorId(mContext, Rx.color.pyw_myvocher_type_title_txt_color)));
	}

	private void ChangeUiTouchUsedBtn() {
		mCanUseView.setVisibility(View.GONE);
		mUsedView.setVisibility(View.VISIBLE);
		mOverdueView.setVisibility(View.GONE);
		mUsedTv.setTextColor(this.getResources().getColor(ResIdManager.getColorId(mContext, Rx.color.pyw_common_orange_lighter)));
		mCanUseTv.setTextColor(this.getResources().getColor(ResIdManager.getColorId(mContext, Rx.color.pyw_myvocher_type_title_txt_color)));
		mOverdueTv.setTextColor(this.getResources().getColor(ResIdManager.getColorId(mContext, Rx.color.pyw_myvocher_type_title_txt_color)));
	}

	private void ChangeUiTouchOverdueBtn() {
		mCanUseView.setVisibility(View.GONE);
		mUsedView.setVisibility(View.GONE);
		mOverdueView.setVisibility(View.VISIBLE);
		mUsedTv.setTextColor(this.getResources().getColor(ResIdManager.getColorId(mContext, Rx.color.pyw_myvocher_type_title_txt_color)));
		mCanUseTv.setTextColor(this.getResources().getColor(ResIdManager.getColorId(mContext, Rx.color.pyw_myvocher_type_title_txt_color)));
		mOverdueTv.setTextColor(this.getResources().getColor(ResIdManager.getColorId(mContext, Rx.color.pyw_common_orange_lighter)));
	}

	
	/**
	 * 保证切换类别后有加载更多的loading
	 */
	private void addNewFooterView() {
		if(list.getFooterViewsCount()<1){
			list.addFooterView(loadMoreView); 
		}
	}
	
	private void deleteFooterView() {
		if(list.getFooterViewsCount()>0){
			list.removeFooterView(loadMoreView); 
		}
	}

	@Override
	public void onScroll(AbsListView view, int firstVisibleItem,  
            int visibleItemCount, int totalItemCount) {
	     visibleLastIndex = firstVisibleItem + visibleItemCount -1; 
	}

	@Override
	public void onScrollStateChanged(AbsListView arg0, int scrollState) {
		int itemsLastIndex = adapter.getCount()-1;  //数据集最后一项的索引    
	    int lastIndex = itemsLastIndex + 1;  
        if (scrollState == OnScrollListener.SCROLL_STATE_IDLE && visibleLastIndex == lastIndex) {  
        	if(mCountPage > mCurPage){
        		loadMoreView.setVisibility(View.VISIBLE);
        		mCurPage++;
                loadData();
        	}else{
        		ToastUtil.showMsg("数据全部加载完");
        		deleteFooterView();
        	}
            
        }  
		
	}

}
