<%@ page import="com.cy.pojo.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86187
  Date: 2022/4/9
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>StudyJSP</title>
</head>
<body>
    <c:forEach begin="20" end="50" step="2" var="i">
        偶数：<c:out value="${i}"/><br/>
    </c:forEach>

    <%
        List<User> users = new ArrayList<>();
        for (int i = 0; i < 5;i++){
            User user = new User("wang" + i, 25 + i, i % 2 == 0 ? "male" : "female");
            users.add(user);
        }
        request.setAttribute("users",users);
    %>

    <table>
        <tr>
            <th>编号</th>
            <th>用户名</th>
            <th>年龄</th>
            <th>性别</th>
        </tr>
        <c:forEach items="${users}" var="user" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>${user.gender}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
