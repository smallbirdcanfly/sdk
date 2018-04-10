/**
 * 
 */
package com.pengyouwan.sdk.entity;

/**
 * 描述:账号信息数据类
 *
 * @author Hanson
 * @since  2016-7-4 下午3:53:59
 */
public class Account {
	

    private boolean isSelect;

    private String username;

    private int isNew;
    
    private String addtime;
    
    private int isFreeze;

    public void setIsNew(int i) {
        isNew = i;
    }

    public int getIsNew() {
        return isNew;
    }

    public boolean isSelect() {
        return isSelect;
    }

    public void setSelect(boolean isSelect) {
        this.isSelect = isSelect;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

	public String getAddtime() {
		return addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	public int getIsFreeze() {
		return isFreeze;
	}

	public void setIsFreeze(int isFreeze) {
		this.isFreeze = isFreeze;
	}

}
