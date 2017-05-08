<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/3/27
  Time: 上午11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<ul style="line-height: 24px">
    <li>客户端使用的协议：<%=request.getProtocol()%></li>
    <li>客户端发送请求的方法：<%=request.getMethod()%></li>
    <li>客户端请求路径：<%=request.getContextPath()%></li>
    <li>客户机IP地址：<%=request.getRemoteAddr()%></li>
    <li>客户端机名称：<%=request.getRemoteHost()%></li>
    <li>客户端机请求端口号：<%=request.getRemotePort()%></li>
    <li>接受客户信息的页面：<%=request.getServletPath()%></li>
    <li>获取报头UserAgent的值：<%=request.getHeader("user-agent")%></li>
    <li>获取报头accept值：<%=request.getHeader("accept")%></li>
    <li>获取报头中Host值：<%=request.getHeader("host")%></li>
    <li>获取报头中accept-encoding值：<%=request.getHeader("accept-encoding")%></li>
    <li>获取URI：<%=request.getRequestURI()%></li>
    <li>获取URL：<%=request.getRequestURL()%></li>

</ul>
</body>
</html>
