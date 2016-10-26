<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        body {
            background-image: url(img/backgroundAccount.jpg);
            font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;

        }
    table {
        font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
        font-size: 14px;
        border-radius: 10px;
        border-spacing: 0;
        text-align: center;
    }
    th {
        background: #BCEBDD;
        color : #5a567f ;
        padding: 20px 40px;
        text-align: center;
    }
    th, td {
        border-style: solid;
        border-width: 0 1px 1px 0;
        border-color: white;
    }
    th:first-child, td:first-child {
        text-align: left;
    }
    th:first-child {
        border-top-left-radius: 10px;
    }
    th:last-child {
        border-top-right-radius: 10px;
        border-right: none;
    }
    td {
        padding: 20px 40px;
        background: #F8E391;
    }
    tr:last-child td:first-child {
        border-radius: 0 0 0 10px;
    }
    tr:last-child td:last-child {
        border-radius: 0 0 10px 0;
    }
    tr td:last-child {
        border-right: none;
    }
        h4{
            color : #5a567f;
        }
    </style>

</head>
<body>
</h1>
<table >
    <h4>Welcome on your account page</h4>
    <h4>You can select the next operations : </h4>
    <tr>
        <th>View all players</th>
        <th>Create new team</th>
        <th>Look through all your teams</th>
        <th>All players list</th>
    </tr>
    <tr>
        <form action="fullTeam.jsp">
        <td><input type="submit" value="enter"/></td>
            <input type="hidden" name="userId" value="${userId}"/>
        </form>
        <form action = TeamCreate.jsp method="post">
        <td><input type="submit" value="enter"/></td>
            <input type="hidden" name="userId" value="${userId}"/>
        </form>
        <form action = fullTeam.jsp method="post">
        <td><input type="submit" value="enter"/></td>
            <input type="hidden" name="userId" value="${userId}"/>
        </form>
        <td><input type="submit" value="enter"/></td>
    </tr>
</table>
<input type="hidden" name="userId" value="${userId}"/>
</body>
</html>
