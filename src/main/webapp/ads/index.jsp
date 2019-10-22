<%--
  Created by IntelliJ IDEA.
  User: smithryan
  Date: 2019-10-22
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ads</title>
</head>
<body>
<h1>Welcome to Ad Lister</h1>

    <c:forEach items="${ads}" var="ad">
        <h3>${ad.title}</h3>
        <p>${ad.description}</p>
    </c:forEach>

</body>
</html>
