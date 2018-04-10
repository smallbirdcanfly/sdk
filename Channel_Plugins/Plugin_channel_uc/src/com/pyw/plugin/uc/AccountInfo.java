package com.pyw.plugin.uc;

/**
 * Created by ligs on 11/14/16.
 */
public class AccountInfo {

    private static final AccountInfo instance = new AccountInfo();

    public static final AccountInfo instance() {
        return instance;
    }


    private String sid;

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getSid() {
        return this.sid;
    }
}
