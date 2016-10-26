<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 05.10.2016
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Page</title>
</head>
<body>
<form action="Servlet" method="post">
<h1>Welcome on registration page</h1>
<tr>
    <td> Login : </td>
    <td><input type="text" name="regLogin"/></td>
</tr>
<tr>
    <td> Password : </td>
    <td><input type="text" name="regPassword"/></td>
</tr>
    <input type = "submit" value = "Create Account"/>
    <input type="hidden" name="cmd" value="regCommand"/>
    </form>
</body>
</html>
