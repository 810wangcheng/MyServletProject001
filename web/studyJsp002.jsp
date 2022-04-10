<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86187
  Date: 2022/4/9
  Time: 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>studyJSP2</title>
</head>
<body>

    <%
        String a = "A";
    %>
    <ul>
        <c:if test="${ 3 > 5}">
            <li><a href="www.baidu.com">百度</a></li>
        </c:if>
        <c:if test="${3 < 5}">
            <li><a href="www.jd.com">京东</a></li>
        </c:if>
    </ul>
    <br/><br/><br/>
    <c:choose>
        <c:when test="${5 > 3}">
            男
        </c:when>
        <c:when test="${5 < 3}">
            女
        </c:when>
        <c:otherwise>
            未知性别
        </c:otherwise>
    </c:choose>
</body>
</html>
