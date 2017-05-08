<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/3/28
  Time: 下午1:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String name=(String) session.getAttribute("name");
        String  solution=request.getParameter("address");
        String url=application.getInitParameter("url");
        String name1=application.getInitParameter("name");
        String password=application.getInitParameter("password");
        out.println("URL:"+url+"<br>");
        out.print("name:"+name1+"<br>");
        out.println("password:"+password+"<br>");

    %>
<form id="form1" name="form1" method="post" action="">
    <table width="28%" border="0">
        <tr>
            <td colspan="2">
                <div align="center"><strong>显示答案是</strong></div>
            </td>
        </tr>

        <tr>
            <td width="49%">
                <div align="left">您的名字是：</div>
            </td>
            <td width="51%"><label>
                <div align="left">
                    <%=name%>
                </div>
            </label></td>
        </tr>
        <tr>
            <td><label>
                <div align="left">您最喜欢去的地方是：</div>
            </label></td>
            <td><div align="left">
                <%=solution%>
            </div> </td>
        </tr>
    </table>
</form>
</body>
</html>
