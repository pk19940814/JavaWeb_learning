<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/3/27
  Time: ����10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="GB18030" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>JSP��inlude������ǩ</title>
</head>
<body>
<form action="index.jsp" method="post">
    <table align="center">
        <tr>
            <td align="center" colspan="2">
                <h3>����û�</h3>
            </td>
        </tr>
        <tr>
            <td>����:</td>
            <td><input name="name" type="text"></td>
        </tr>
        <tr>
            <td>�Ա�</td>
            <td>
                <input name="sex" type="radio" value="��" checked="checked">
                <input name="sex" type="radio" value="Ů" >
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <input type="submit" value="���">
                <input type="reset" value="����">

            </td>
        </tr>
    </table>
</form>
</body>
</html>
