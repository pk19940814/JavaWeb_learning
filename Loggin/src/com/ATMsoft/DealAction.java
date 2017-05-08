package com.ATMsoft;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by apple on 2017/3/30.
 */
public class DealAction extends ActionSupport {
    private String Num1;
    private String Num2;
    private String check;
    private double num3;
    public void setCheck(String check) {
        this.check = check;
    }

    public String getCheck() {
        return check;
    }

    public void setNum1(String num1) {
        Num1 = num1;
    }

    public void setNum2(String num2) {
        Num2 = num2;
    }

    public String getNum1() {
        return Num1;
    }

    public String getNum2() {
        return Num2;
    }

    public String execute(){
        String x=getNum1();
        String y=getNum2();
        double num4=Double.parseDouble(x);
        double num5=Double.parseDouble(y);
        System.out.println(num4);
        if (check.equals("-")){
            num3=num4-num5;
        }

        if (check.equals("+")){
            num3=num4+num5;
        }

        if (check.equals("*")){
            num3=num4*num5;
        }
        if (check.equals("/")){
            num3=num4/num5;
        }

        ActionContext.getContext().getSession().put("num3",num3);
        return SUCCESS;
    }
}
