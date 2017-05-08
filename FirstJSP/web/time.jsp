<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/3/23
  Time: 下午6:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>开发第一个JSP网站</title>
</head>
<body>
    你好，这是我的第一个JSP程序<br>
    现在时间是：<%=new Date().toLocaleString()%>
</body>
</html>
