<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/3/23
  Time: 下午4:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
    <title>Test</title>
  </head>
  <body>
  <a href="#">弹出提示到对话框</a>
  <script>
    $(document).ready(function(){
        $("a").click(function () {
            alert("我的第一个jquery脚本");
        });
    });
  </script>


  </body>
</html>
