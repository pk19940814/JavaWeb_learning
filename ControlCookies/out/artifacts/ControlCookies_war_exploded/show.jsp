<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/3/28
  Time: 下午12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name=request.getParameter("name");
    String birthday=request.getParameter("birthday");
    String mail=request.getParameter("mail");
    Cookie myCook=new Cookie("mrCookInfo",name+"#"+birthday+"#"+mail);
    myCook.setMaxAge(60*60*24*365);
    response.addCookie(myCook);
%>
表单提交成功
<ul style="line-height: 24px">
    <li>姓名：<%=name%></li>
    <li>出生日期：<%=birthday%></li>
    <li>电子邮箱：<%=mail%></li>
    <li><a href="index.jsp">返回</a> </li>
</ul>
</body>
</html>
