<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/29/2024
  Time: 5:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="CheckLoginServlet" method="post">
    Username: <input type="text" name="username">
    Password: <input type="password" name="password">
    <br> <br>
    <input type="submit" value="Login">
    <input type="reset" value="Reset">
</form>
</body>
</html>
