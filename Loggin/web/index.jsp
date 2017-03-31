<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/3/30
  Time: 下午10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
 <%@taglib prefix="s" uri="/struts-tags" %>
  <s:form action="jisuan">
    <s:label value="简单计算器"></s:label>
    <s:textfield name="num1" label="第一个数"></s:textfield>
    <s:select list="{'+','-','*','/'}" name="check" label="运算符"></s:select>
    <s:textfield name="num2" label="第二个数"></s:textfield>
    <s:submit value="计算"></s:submit>
  </s:form>
  </body>
</html>
