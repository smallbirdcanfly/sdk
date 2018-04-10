
package com.pengyouwan.sdk.adapter;

import java.util.ArrayList;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.pengyouwan.sdk.entity.Voucher;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

/**
 * 描述：我的代金券适配器
 * 
 * @author Hanson
 * @version 创建时间：2016-7-1 下午9:18:30
 */
public class MyVoucherListAdapter extends BaseAdapter {

    private LayoutInflater mInflater;

    private Context mContext;

    private ArrayList<Voucher> mData = new ArrayList<Voucher>();

    protected ViewGroup mParent;

    private boolean mStatus = true;

    public MyVoucherListAdapter(Context context, ViewGroup viewGroup) {
        mInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        mContext = context;
        mParent = viewGroup;
    }

    public void setDatas(ArrayList<Voucher> list) {
        if (list != null) {
            mData.clear();
            mData.addAll(list);
        }
    }

    public void setStaus(boolean status) {
        mStatus = status;
    }

    public void setMoreDatas(ArrayList<Voucher> list) {
        if (list != null) {
            mData.addAll(list);
        }
    }

    @Override
    public int getCount() {
        if (mData != null) {
            return mData.size();
        }
        return 0;
    }

    @Override
    public Object getItem(int position) {
        if (position >= 0 && position < mData.size()) {
            return mData.get(position);
        }
        return null;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        Holder holder;
        if (convertView == null) {
            convertView = mInflater.inflate(
                    ResIdManager.getLayoutId(mContext, Rx.layout.pyw_item_myvoucher_list), null);
            holder = new Holder();
            // 显示剩余与使用
            holder.voucherMoney = (TextView) convertView.findViewById(ResIdManager.getId(mContext,
                    Rx.id.pyw_tv_myvoucher_money));
            // 有效时间
            holder.time = (TextView) convertView.findViewById(ResIdManager.getId(mContext,
                    Rx.id.pyw_tv_myvoucher_time));
            holder.id = (TextView) convertView.findViewById(ResIdManager.getId(mContext,
                    Rx.id.pyw_tv_myvoucher_id));
            holder.idnum = (TextView) convertView.findViewById(ResIdManager.getId(mContext,
                    Rx.id.pyw_tv_myvoucher_idnum));
            holder.content = (LinearLayout) convertView.findViewById(ResIdManager.getId(mContext,
                    Rx.id.pyw_layout_myvoucher_content));
            holder.sign = (TextView) convertView.findViewById(ResIdManager.getId(mContext,
                    Rx.id.pyw_tv_myvoucher_sign));
            // 选择框
            convertView.setTag(holder);
        } else {
            holder = (Holder) convertView.getTag();
        }

        Voucher v = mData.get(position);
        if (v != null) {
            holder.time.setText(v.getCoupon_tips());
            holder.id.setText(v.getVoucherId());
            holder.voucherMoney.setText(v.getBuyMoney());
            holder.idnum.setText(formatPrice2(v.getLeftMoney()));
            if (mStatus) {
                holder.sign.setTextColor(mContext.getResources().getColor(
                        ResIdManager.getColorId(mContext, Rx.color.pyw_common_orange_lighter)));
                holder.idnum.setTextColor(mContext.getResources().getColor(
                        ResIdManager.getColorId(mContext, Rx.color.pyw_common_orange_lighter)));
                holder.content.setClickable(true);
                holder.content.setEnabled(true);
            } else {
                holder.sign.setTextColor(mContext.getResources().getColor(
                        ResIdManager.getColorId(mContext, Rx.color.pyw_myvocher_normal_txt_color)));
                holder.idnum.setTextColor(mContext.getResources().getColor(
                        ResIdManager.getColorId(mContext, Rx.color.pyw_myvocher_normal_txt_color)));
                holder.content.setClickable(false);
                holder.content.setEnabled(false);
            }
        }

        return convertView;
    }

    class Holder {
        TextView time, id, voucherMoney, idnum, sign;

        LinearLayout content;
    }

    private String formatPrice2(float flo) {
        return String.format("%.0f", flo);
    }

}
