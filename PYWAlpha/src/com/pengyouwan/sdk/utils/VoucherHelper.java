package com.pengyouwan.sdk.utils;

import java.util.LinkedList;

import com.pengyouwan.sdk.entity.Voucher;


/**
 * 描述：
 * @author Hanson
 * @version 创建时间：2016-7-1 下午8:58:02
 * 
 */
public class VoucherHelper {
	 private static VoucherHelper helper;

	    private LinkedList<Voucher> mVoucherList;// 选中的代金券列表

	    private float total;// 支付总金额

	    private float mMoney = 0;// 缓存金额

	    private VoucherHelper() {
	        mVoucherList = new LinkedList<Voucher>();
	    }

	    public static VoucherHelper getInsntance() {
	        if (helper == null) {
	            helper = new VoucherHelper();
	        }
	        return helper;
	    }

	    public void setTotal(float total) {
	        this.total = total;
	    }

	    public void setSelectedVoucher(Voucher v) {
	    	mVoucherList.add(v);
	    	mMoney += v.getLeftMoney();
//	        if (mVoucherList != null && calculateCount(v)) {
//	            mMoney += v.getLeftMoney();
//	            v.setSelect(true);
//	            if (mVoucherList.size() < 1) {
//	                // 如果是第一个数据，则直接记录
//	                mVoucherList.add(v);
//	            } else {
//	                // 比较大小
//	                if (v.getLeftMoney() > mVoucherList.get(0).getLeftMoney()) {
//	                    mVoucherList.add(0, v);
//	                } else {
//	                    mVoucherList.add(v);
//	                }
//	            }
	           // float left = mMoney - total;
//	            if (left > 0) {
//	                LinkedList<Voucher> list = culling(left);
//	                if (list.size() > 0) {
//	                    for (Voucher vou : list) {
//	                        removeVoucher(vou);
//	                    }
//	                }
//	            }
//	        }
	    }

	    // 获取缓存金额
	    public float getCacheMoney() {
	        return mMoney;
	    }

	    public boolean removeVoucher(Voucher v) {
	        if (mVoucherList != null) {
	            v.setSelect(false);
	            mMoney -= v.getLeftMoney();
	            return mVoucherList.remove(v);
	        }
	        return false;
	    }

	    public boolean contains(String id) {
	        if (mVoucherList != null) {
	            for (Voucher v : mVoucherList) {
	                if (v.getVoucherId().equals(id)) {
	                    return true;
	                }
	            }
	        }
	        return false;
	    }

	    /**
	     * 确认支付后记得要调用
	     */
	    public void clean() {
	        if (mVoucherList != null) {
	            mMoney = 0;
	            total = 0;
	            mVoucherList.clear();
	        }
	    }

	    public void cleanCache() {
	        if (mVoucherList != null) {
	            mMoney = 0;
	            mVoucherList.clear();
	        }
	    }

	    public void destroy() {
	        if (mVoucherList != null) {
	            mMoney = 0;
	            total = 0;
	            mVoucherList.clear();
	            mVoucherList = null;
	        }
	        helper = null;
	    }

	    public int getSelectedVoucherCount() {
	        if (mVoucherList != null) {
	            return mVoucherList.size();
	        }
	        return 0;
	    }

	    public LinkedList<Voucher> getmVoucherList() {
	        return mVoucherList;
	    }

	    // 计算选择的金额是否已经超出支付金额
//	    private boolean calculateCount(Voucher v) {
//	        if (mMoney != 0 && mMoney >= total) {
//	            ToastUtil.showMsg("所选金额已经大于支付总价");
//	            return false;
//	        }
//	        return true;
//	    }

	    // 筛选
//	    private LinkedList<Voucher> culling(float left) {
//	        LinkedList<Voucher> cache = new LinkedList<Voucher>();
//	        for (Voucher voucher : mVoucherList) {
//	            if (left >= voucher.getLeftMoney() ) {
//	                left -= voucher.getLeftMoney();
//	                cache.add(voucher);
//	                if (left == 0) {
//	                    break;
//	                }
//	            }
//	        }
//	        return cache;
//	    }
	}

