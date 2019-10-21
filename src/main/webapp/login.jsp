<%--
  Created by IntelliJ IDEA.
  User: smithryan
  Date: 2019-10-21
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Login</h1>
<form action="/profile.jsp" method="POST">
    Username: <input type="text" name="username"><br>
    Password: <input type="text" name="password"><br>
    <input type="submit" value="Submit">

    <c:if test="${isAdmin == true}">
        request.redir
    </c:if>
</form>
</body>
</html>
