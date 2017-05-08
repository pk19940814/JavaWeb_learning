<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/3/28
  Time: 下午2:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
  String str=request.getParameter("username");
  String pwd=request.getParameter("pwd");
  if (str!=null){
      if (str.equals("tom")&&pwd.equals("123")){
          out.println("您好，"+str+"!");
      }else {
          out.println("您输入的账号密码有误，请重新输入!");
      }
  }
%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Insert title here</title>
  </head>
  <body>
  <form action="index.jsp" method="post">
    账号：<input type="text" name="username"/><br/>
    密码：<input type="password" name="pwd"/><br/>
    <input type="submit" value="登录"/>
  </form>
  </body>
</html>
