<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/3/27
  Time: 上午11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<ul style="list-style: none;line-height: 30px">
    <li>输入用户姓名：
        <%=new String(request.getParameter("name").getBytes("ISO8859_1"),"GBK") %>
    </li>
    <li>输入性别：
        <%=new String(request.getParameter("sex").getBytes("ISO8859_1"),"GBK") %>
    </li>
    <li>选择密码提示问题：
        <%=new String(request.getParameter("question").getBytes("ISO8859_1"),"GBK") %>
    </li>
    <li>输入问题答案：
        <%=new String(request.getParameter("key").getBytes("ISO8859_1"),"GBK") %>
    </li>
    <li>请选择个人爱好：
    <%
        String[] like=request.getParameterValues("like");
        for (int i=0;i<like.length;i++){
    %>
        <%=new String(like[i].getBytes("ISO8859_1"),"GBK")+"&nbsp;&nbsp;"%>
        <%
            }
        %>

    </li>
</ul>
<a href="GETinformation.jsp">hhh</a>
</body>
</html>