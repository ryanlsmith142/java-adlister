<%--
  Created by IntelliJ IDEA.
  User: smithryan
  Date: 2019-10-21
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Pick Your Favorite Color</title>
</head>
<body>
<form action="/favoritecolor.jsp" method="POST">
    Please enter your favorite color: <input type="text" name="favcolor"><br>
    <input type="submit" value="Submit">



</form>
</body>
</html>
