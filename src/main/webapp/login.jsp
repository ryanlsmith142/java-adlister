<%--
  Created by IntelliJ IDEA.
  User: smithryan
  Date: 2019-10-21
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Login</h1>
<form action="/login.jsp" method="POST">
    Username: <input type="text" name="username"><br>
    Password: <input type="text" name="password"><br>
    <input type="submit" value="Submit">

</form>


    <c:if test="${param.username.equalsIgnoreCase('admin') && param.password.equalsIgnoreCase('password')}">
        <% response.sendRedirect("/profile.jsp"); %>
    </c:if>

</body>
</html>
