<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/3/28
  Time: 下午12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    String welcome="第一次访问";
    String[] info=new String[]{"","",""};
    Cookie[] cook= request.getCookies();
    if (cook!=null){
        for (int i=0;i<cook.length;i++){
            if (cook[i].getName().equals("mrCookInfo")){
                info=cook[i].getValue().split("#");
                welcome=",欢迎回来";
            }
        }
    }
  %>
  <%=info[0]+welcome%>
    <form action="show.jsp" method="post">
      <ul style="line-height: 23px">
        <li>姓&nbsp;&nbsp;&nbsp;&nbsp;名:<input name="name" type="text" value="<%=info[0]%>"></li>
        <li>出生日期：<input name="birthday" type="text" value="<%=info[1]%>"></li>
        <li>邮箱地址:<input name="mail" type="text" value="<%=info[2]%>"></li>
        <li><input type="submit" value="提交"></li>
      </ul>
    </form>

  <form id="form1" name="form1" method="post" action="session.jsp">
      <div align="center">
          <table width="23%" border="0">
              <tr>
                  <td width="36%" >
                      <div align="center">您的名字是</div>
                  </td>
                  <td width="64%">
                      <label>
                          <div align="center">
                              <input type="text" name="name" />
                          </div>
                      </label>
                  </td>
              </tr>

              <tr>
                  <td colspan="2">
                      <label>
                          <div align="center">
                              <input type="submit" name="Submit" value="提交"/>
                          </div>
                      </label>
                  </td>
              </tr>
          </table>
      </div>
  </form>

  </body>
</html>
