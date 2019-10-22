<%--
  Created by IntelliJ IDEA.
  User: smithryan
  Date: 2019-10-21
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Your Order</title>
</head>
<body>
<h1>Crust</h1>
<p>${param.crust}</p>

<h1>Cheese</h1>
<p>${param.cheese}</p>

<h1>Sauce</h1>
<p>${param.sauce}</p>
<h3>How much sauce: </h3>
<p>${param.much}</p>

<h1>Meats</h1>
<p>Selected Meats:
    <ul>
        <c:forEach items="${paramValues['meats']}" var="meat">
        <li><c:out value="${meat}" /></li>
        </c:forEach>
    </ul>
</p>

<h1>Non-Meats</h1>
<p>Selected Non-Meats:
    <ul>
        <c:forEach items="${paramValues['nonMeats']}" var="nonMeat">
            <li><c:out value="${nonMeat}" /></li>
        </c:forEach>
    </ul>
</p>


</body>
</html>
