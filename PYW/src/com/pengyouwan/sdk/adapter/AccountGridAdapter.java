package com.pengyouwan.sdk.adapter;

import java.util.List;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.pengyouwan.sdk.entity.Account;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

/**
 * 描述：账号管理页面适配器
 * @author Hanson
 * @version 创建时间：2016-7-1 下午1:54:37
 * 
 */
public class AccountGridAdapter<E> extends BaseAdapter {

	private List<E> mData;

	private Context mContext;

	private String currentAccount = "";

	private int initialSize = 0;// 初始化的item数量

	private boolean showNew = false;
	
	private boolean freeze = false;

	public AccountGridAdapter(Context context, List<E> users) {
		if (users != null && users.size() > 0) {
			// 判断是user列表还是account
			mData = users;
		}
		SDKUser current = UserManager.getInstance()
				.getCurrentUserForSDK();
		if (current != null) {
			currentAccount = current.getUserName();
		}
		mContext = context;
	}

	public AccountGridAdapter(Context context, List<E> users, int initialSize) {
		this(context, users);
		showNew = true;
		freeze = true;
		this.initialSize = initialSize;
	}

	public void setDatas(List<E> list) {
		if (list != null)
			mData = list;
	}

	@Override
	public int getCount() {
		if (mData != null && mData.size() > 0) {
			return mData.size() + initialSize;
		}
		return initialSize;
	}

	@Override
	public E getItem(int position) {
		if (mData != null && mData.size() > position) {
			return mData.get(position);
		}
		return null;
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		Holder holder;
		if (convertView == null) {
			holder = new Holder();
			LayoutInflater mInflater = (LayoutInflater) mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
			convertView = mInflater.inflate(ResIdManager.getLayoutId(mContext,
					Rx.layout.pyw_griditem_account), null);
			holder.normalView = convertView.findViewById(ResIdManager.getId(
					mContext, Rx.id.pyw_layout_account_normal));
			holder.newView = convertView.findViewById(ResIdManager.getId(
					mContext, Rx.id.pyw_layout_account_new));
			holder.account = (TextView) holder.normalView.findViewById(ResIdManager
					.getId(mContext, Rx.id.pyw_tv_account));
			holder.state = (TextView) holder.normalView.findViewById(ResIdManager
					.getId(mContext, Rx.id.pyw_tv_account_state));
			convertView.setTag(holder);
		} else {
			holder = (Holder) convertView.getTag();
		}

		Account user = (Account) getItem(position);
		if (user != null) {
			holder.normalView.setVisibility(View.VISIBLE);
			holder.newView.setVisibility(View.GONE);
			String username = user.getUsername();
			holder.account.setText(username);
			if (username.equals(currentAccount)) {
				holder.state.setVisibility(View.VISIBLE);
				holder.state.setText("当前登录");
			} else if (user.getIsNew() == 1 && showNew) {
				holder.state.setVisibility(View.VISIBLE);
				holder.state.setText("新");
			}else {
				holder.state.setVisibility(View.GONE);
			}
			if (user.getIsFreeze() == 1 && freeze) {
				holder.state.setVisibility(View.VISIBLE);
				holder.state.setText("已冻结");
			}
		} else {
			holder.normalView.setVisibility(View.GONE);
			holder.newView.setVisibility(View.VISIBLE);
//			holder.account.setText("创建新账号");
			holder.state.setVisibility(View.GONE);
		}

		return convertView;
	}

	class Holder {
		TextView account, state;
		View normalView, newView;
	}

}

