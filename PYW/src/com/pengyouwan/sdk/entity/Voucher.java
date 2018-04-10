package com.pengyouwan.sdk.entity;

import android.os.Parcel;
import android.os.Parcelable;


/**
 * 描述：
 * @author Hanson
 * @since 创建时间：2016-7-1 下午8:58:58
 * 
 */
public class Voucher implements Parcelable {

    private String voucherName;

    private String useTime;

    private String buyMoney;// 购入金额

	private String voucherId;// 代金券id

    private float leftMoney;// 剩余金额

    private boolean isSelected;// 是否已经被选择

    private String gameName;// 所属游戏名称

    private int status;// 使用状态 1-未使用 2-可使用 3-已使用 4-已过期

    private String pic;// 对应游戏图标路径

    private String createTime;// 创建时间
    
    private String coupon_tips;//代金券有效期提示内容
    
    private float current_consumption_amount;//当前消耗金额
    
    private boolean highlight = true;//是否高亮
    
    public boolean isHighlight() {
		return highlight;
	}
    
    public void setHighlight(boolean highlight) {
		this.highlight = highlight;
	}
    
    public float getCurrent_consumption_amount() {
		return current_consumption_amount;
	}
    
    public void setCurrent_consumption_amount(float current_consumption_amount) {
		this.current_consumption_amount = current_consumption_amount;
	}

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getGameName() {
        return gameName;
    }

    public void setGameName(String str) {
        gameName = str;
    }

    public void setSelect(boolean bool) {
        isSelected = bool;
    }

    public boolean isSelected() {
        return isSelected;
    }

    public String getVoucherName() {
        return voucherName;
    }

    public void setVoucherName(String voucherName) {
        this.voucherName = voucherName;
    }

    public String getUseTime() {
        return useTime;
    }

    public void setUseTime(String useTime) {
        this.useTime = useTime;
    }

    public String getVoucherId() {
        return voucherId;
    }

    public void setVoucherId(String voucherId) {
        this.voucherId = voucherId;
    }

    public float getLeftMoney() {
        return leftMoney;
    }

    public void setLeftMoney(float leftMoney) {
        this.leftMoney = leftMoney;
    }
    
    public String getBuyMoney() {
		return buyMoney;
	}

	public void setBuyMoney(String buyMoney) {
		this.buyMoney = buyMoney;
	}

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(voucherName);
        dest.writeString(useTime);
        dest.writeString(buyMoney);
        dest.writeString(voucherId);
        dest.writeFloat(leftMoney);
        dest.writeInt(isSelected ? 1 : 0);
        dest.writeString(gameName);
    }

    public String getCoupon_tips() {
		return coupon_tips;
	}

	public void setCoupon_tips(String coupon_tips) {
		this.coupon_tips = coupon_tips;
	}

	public static final Parcelable.Creator<Voucher> CREATOR = new Creator<Voucher>() {

        @Override
        public Voucher createFromParcel(Parcel source) {
            Voucher v = new Voucher();
            v.setVoucherName(source.readString());
            v.setUseTime(source.readString());
            v.setBuyMoney(source.readString());
            v.setVoucherId(source.readString());
            v.setLeftMoney(source.readInt());
            v.setSelect(source.readInt() == 1);
            v.setGameName(source.readString());
            return v;
        }

        @Override
        public Voucher[] newArray(int size) {
            return new Voucher[size];
        }
    };

}
