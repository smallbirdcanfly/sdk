
package com.pengyouwan.sdk.adapter;

import java.util.ArrayList;
import java.util.LinkedList;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.pengyouwan.sdk.entity.Voucher;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

/**
 * 描述：代金券适配器
 * 
 * @author Hanson
 * @version 创建时间：2016-7-1 下午9:03:52
 */
public class VoucherListAdapter extends BaseAdapter {

    private LayoutInflater mInflater;

    private Context mContext;

    private ArrayList<Voucher> mData = new ArrayList<Voucher>();

    protected ViewGroup mParent;

    private float total;// 订单金额

    private float mSelectSum;// 选择代金券总额

    private LinkedList<Voucher> voucherLinkedList;

    public VoucherListAdapter(Context context, ViewGroup viewGroup, float total) {
        mInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        mContext = context;
        mParent = viewGroup;
        this.total = total;
    }

    public void setDatas(ArrayList<Voucher> list) {
        if (list != null && list.size() > 0) {
            mData.clear();
            mData.addAll(list);
        }
    }

    public void setVoucherLinkedList(LinkedList<Voucher> voucherLinkedList) {
        this.voucherLinkedList = voucherLinkedList;
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
                    ResIdManager.getLayoutId(mContext, Rx.layout.pyw_item_voucher_list), null);
            holder = new Holder();
            // 主体布局
            holder.contentLayout = (LinearLayout) convertView.findViewById(ResIdManager.getId(
                    mContext, Rx.id.pyw_layout_voucher_content));
            // 显示剩余与使用
            holder.voucherMoney = (TextView) convertView.findViewById(ResIdManager.getId(mContext,
                    Rx.id.pyw_tv_voucher_money));
            // 有效时间
            holder.time = (TextView) convertView.findViewById(ResIdManager.getId(mContext,
                    Rx.id.pyw_tv_voucher_time));
            // 代金券总额
            holder.voucherSum = (TextView) convertView.findViewById(ResIdManager.getId(mContext,
                    Rx.id.pyw_tv_voucher_idnum));
            // ￥符号
            holder.sign = (TextView) convertView.findViewById(ResIdManager.getId(mContext,
                    Rx.id.pyw_tv_voucher_sign));
            // 选择框
            holder.checkbox = (CheckBox) convertView.findViewById(ResIdManager.getId(mContext,
                    Rx.id.pyw_cb_check));
            convertView.setTag(holder);
        } else {
            holder = (Holder) convertView.getTag();
        }
        Voucher v = mData.get(position);
        if (v != null) {
            holder.time.setText(v.getCoupon_tips());
            holder.voucherSum.setText(formatPrice2(v.getLeftMoney()));
            holder.checkbox.setChecked(v.isSelected());
            if (!v.isHighlight()) {
                holder.contentLayout.setEnabled(false);
                holder.sign.setTextColor(Color.rgb(204, 204, 204));
                holder.voucherMoney.setTextColor(Color.rgb(204, 204, 204));
                holder.voucherMoney.setText("使用："+
                        "￥" + formatPrice2(v.getCurrent_consumption_amount())+ "    剩余：" + "￥"
                                + formatPrice2(v.getLeftMoney() - v.getCurrent_consumption_amount()));
                holder.voucherSum.setTextColor(Color.rgb(204, 204, 204));
            } else {
            	holder.voucherMoney.setText(getSpan("使用：",
                        "￥" + formatPrice2(v.getCurrent_consumption_amount()), "    剩余：" + "￥"
                                + formatPrice2(v.getLeftMoney() - v.getCurrent_consumption_amount())));
                if (mSelectSum == total) {//选择金额等于订单总额
                    if (!voucherLinkedList.isEmpty() && !voucherLinkedList.contains(v)) {
                        holder.contentLayout.setEnabled(false);
                        holder.sign.setTextColor(Color.rgb(204, 204, 204));
                        holder.voucherSum.setTextColor(Color.rgb(204, 204, 204));
                        holder.voucherMoney.setText("使用："+
                                "￥" + formatPrice2(v.getCurrent_consumption_amount())+ "    剩余：" + "￥"
                                        + formatPrice2(v.getLeftMoney() - v.getCurrent_consumption_amount()));
                    } else {
                        holder.contentLayout.setEnabled(true);
                        holder.sign.setTextColor(Color.rgb(255, 170, 0));
                        holder.voucherSum.setTextColor(Color.rgb(255, 170, 0));
                    }
                } else {
                    holder.contentLayout.setEnabled(true);
                    holder.sign.setTextColor(Color.rgb(255, 170, 0));
                    holder.voucherSum.setTextColor(Color.rgb(255, 170, 0));
                }

            }
        }
        return convertView;
    }

    class Holder {
        TextView time, voucherSum, sign, voucherMoney;

        LinearLayout contentLayout;

        CheckBox checkbox;
    }

    /**
     * 颜色更改
     * 
     * @param str1
     * @param str2
     * @return
     */
    private SpannableString getSpan(String str1, String str2, String str3) {
        SpannableString ss = new SpannableString(str1 + str2 + str3);
        ss.setSpan(new ForegroundColorSpan(Color.parseColor("#ffaa00")), str1.length(),
                str1.length() + str2.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        return ss;
    }

    private String formatPrice2(float flo) {
        return String.format("%.0f", flo);
    }

    public float getmSelectSum() {
        return mSelectSum;
    }

    public void setmSelectSum(float mSelectSum) {
        this.mSelectSum = mSelectSum;
    }

}
