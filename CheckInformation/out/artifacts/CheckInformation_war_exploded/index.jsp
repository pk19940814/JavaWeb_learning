<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/3/23
  Time: 下午4:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<html>
  <head>
    <title>检测表单元素是否为空</title>
    <script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
    <script language="JavaScript">
       function checkNull(form) {
         for (i=0;i<form.length;i++){
             if(form.elements[i].value=="") {
                 alert("很抱歉，" + form.elements[i].title + "不能为空");
                 form.elements[i].focus();
                 return false;
             }
         }
         var pwd1=document.getElementById("pwd1_id").value;
         var pwd2=document.getElementById("pwd2_id").value;

         if (pwd1!=pwd2){
             alert("两次密码不一致，请确认");
             return false;
         }

         var phone =document.getElementById("phone_id").value;
         var regExpression =/^(86)?((13\d{9})(15[0,1,2,3,5,6,7,8,9]\d{8})|(18[0,5,6,7,8,9]\d{8}))$/;
         var objExp = new RegExp(regExpression);
         if (objExp.text(phone)==false){
             alert("您输入的手机号不正确");
             return false;
         }

         var email=document.getElementById("email_id").value;
         var regExpression = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
         var objExp=new RegExp(regExpression);
         if (objExp.test(email)==false){
             alert("您输入的邮箱不正确");
             return false;
         }


     }
    </script>
  </head>


  <body>
  <form name="form1" method="post" action="" onsubmit="return checkNull(form1)">
    <table width="296" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#333333">
      <tr>
        <td colspan="2" bgcolor="#eeeeee">·用户注册</td>
      </tr>
      <tr>
        <td width="200"align="center" bgcolor="#FFFFFF">用户名：</td>
        <td width="384" bgcolor="#FFFFFF"><input name="user" type="text" id="user_id" title="用户名">
        *</td>
      </tr>
      <tr>
        <td align="center" bgcolor="#FFFFFF">密&nbsp;&nbsp;码：</td>
        <td bgcolor="#FFFFFF"><input name="pwd" type="password" id="pwd1_id" title="密码">
        *</td>
      </tr>
      <tr>
        <td align="center" bgcolor="#FFFFFF">确认密码：</td>
        <td bgcolor="#FFFFFF"><input name="pwd2" type="password" id="pwd2_id" title="确认密码">
        *</td>
      </tr>
      <tr>
        <td align="center" bgcolor="#FFFFFF">电话：</td>
        <td bgcolor="#FFFFFF"><input name="phone" type="text" id="phone_id" title="电话">
          *</td>
      </tr>
      <tr>
        <td align="center" bgcolor="#FFFFFF">邮箱：</td>
        <td bgcolor="#FFFFFF"><input name="email" type="email" id="email_id" title="邮箱">
          *</td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF">&nbsp;</td>
        <td bgcolor="#FFFFFF"><input name="Submit" type="submit" class="btn_grey" value="提交">
        &nbsp;
          <input name="Submit2" type="reset" class="btn_grey" value="重置">
        </td>
      </tr>

    </table>
  </form>
  </body>
</html>
