<%--
  Created by IntelliJ IDEA.
  User: smithryan
  Date: 2019-10-21
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>This Is Your Favorite Color</title>
    <style>
        body {
            background: ${param.favcolor}
        }
    </style>
</head>
<body>
<h1>This is your favorite color</h1>
<h1>${param.favcolor}</h1>
</body>
</html>
