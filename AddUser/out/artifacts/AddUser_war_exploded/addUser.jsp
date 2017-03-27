<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/3/27
  Time: 上午10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="GB18030" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>JSP的inlude动作标签</title>
</head>
<body>
<form action="index.jsp" method="post">
    <table align="center">
        <tr>
            <td align="center" colspan="2">
                <h3>添加用户</h3>
            </td>
        </tr>
        <tr>
            <td>姓名:</td>
            <td><input name="name" type="text"></td>
        </tr>
        <tr>
            <td>性别：</td>
            <td>
                <input name="sex" type="radio" value="男" checked="checked">
                <input name="sex" type="radio" value="女" >
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <input type="submit" value="添加">
                <input type="reset" value="重置">

            </td>
        </tr>
    </table>
</form>
</body>
</html>
