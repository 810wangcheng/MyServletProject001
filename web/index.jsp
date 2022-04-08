<%--
  Created by IntelliJ IDEA.
  User: 86187
  Date: 2022/4/8
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>myFirstJSP</title>
    <style type="text/css">
      *{
        margin: 0;
        padding: 0;
      }
      #login{
        width: 500px;
        height: 500px;
        margin: 300px 800px;
        padding: 30px 20px;
        background-color: beige;
      }
      .button{
        margin: 0 20px;
      }
    </style>
  </head>
  <body>
    <div id="login">
      <form action="/myServletProject001/MyServlet" method="get">
        用户名：<input type="text" name="username"><br/><br/><br/>
        密&nbsp;&nbsp;&nbsp;码：<input type="password" name="password"><br/><br/><br/>
        <input class="button" type="submit" value="提交"><input type="reset" value="重置">
      </form>
    </div>
  </body>
</html>
