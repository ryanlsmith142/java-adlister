<%--
  Created by IntelliJ IDEA.
  User: smithryan
  Date: 2019-10-21
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/display.jsp" method="post">
    First name: <input type="text" name="firstname"><br>
    Last name: <input type="text" name="lastname"><br>
    <input type="submit" value="Submit">
</form>

<%@ include file="partials/footer.html" %>

</body>
</html>
