
package com.pengyouwan.sdk.base;

import java.util.ArrayList;


import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;

/**
 * 描述:通用列表适配器
 * 
 * @author zhj
 * @since 2015-6-1 上午10:43:13
 * @param <T>
 */
public abstract class BaseListAdapter<T> extends BaseAnimationAdapter{

    protected ArrayList<T> mDatas = new ArrayList<T>();

    protected Context mContext;

    protected LayoutInflater mInflater;


    protected ViewGroup mParent;

    public BaseListAdapter(Context context, ViewGroup viewGroup) {
        super(context);
        mContext = context;
        mParent = viewGroup;
        mInflater = (LayoutInflater) mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
    }

    public ArrayList<T> getDatas() {
        return mDatas;
    }

    public void addDatas(ArrayList<T> datas) {
        if (datas != null && datas.size() > 0) {
            this.mDatas.addAll(datas);
        }
    }

    public void addData(T data) {
        if (data != null) {
            this.mDatas.add(data);
        }
    }

    /**
     * 在指定位置增加数据
     * 
     * @param index 坐标
     * @param data
     */
    public void addData(int index, T data) {
        if (data != null) {
            this.mDatas.add(index, data);
        }
    }

    /**
     * 返回data在集合中的坐标
     * 
     * @param data
     * @return
     */
    public int getDataIndex(T data) {
        if (data != null) {
            return this.mDatas.indexOf(data);
        }
        return -1;
    }

    public boolean deleteData(T data) {
        if (mDatas != null && data != null) {
            return mDatas.remove(data);
        }
        return false;
    }

    public void clearDatas() {
        if (mDatas != null)
            mDatas.clear();
    }

    @Override
    public int getCount() {
        return mDatas.size();
    }

    @Override
    public T getItem(int position) {
        if (position >= 0 && position < mDatas.size()) {
            return mDatas.get(position);
        }
        return null;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

}
