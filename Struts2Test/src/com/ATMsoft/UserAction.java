package com.ATMsoft;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by apple on 2017/3/30.
 */
public class UserAction extends ActionSupport {
    private String info;

    public String add() throws Exception{
        setInfo("添加用户信息");
        return "add";
    }

    public String update() throws Exception{
        setInfo("修改用户信息");
        return "update";
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }
}
