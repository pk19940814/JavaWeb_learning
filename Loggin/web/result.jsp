<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/3/30
  Time: 下午11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    HttpSession s=request.getSession();

%>
<p>您选择的运算符是：<s:property value="check"></s:property> <br></p>
<p>您计算的结果是：<%=s.getAttribute("num3")%> <br></p>
</body>
</html>
