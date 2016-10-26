<%@ page import="org.omg.PortableServer.REQUEST_PROCESSING_POLICY_ID" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 29.09.2016
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>jsp</title>
    <style>

        body {
            background-image: url(img/backgroundIndex.jpg);
            font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;

        }

        .table_blur {
            background: #f5ffff;
            border-collapse: collapse;
            text-align: left;
        }
        .table_blur th {
            border-top: 1px solid #777777;
            border-bottom: 1px solid #777777;
            box-shadow: inset 0 1px 0 #999999, inset 0 -1px 0 #999999;
            background: linear-gradient(#9595b6, #5a567f);
            color: white;
            padding: 7px 10px;
            position: relative;
        }
        .table_blur th:after {
            content: "";
            display: block;
            position: absolute;
            left: 0;
            top: 25%;
            height: 25%;
            width: 100%;
            background: linear-gradient(rgba(255, 255, 255, 0), rgba(255,255,255,.08));
        }
        .table_blur tr:nth-child(odd) {
            background: #ebf3f9;
        }
        .table_blur th:first-child {
            border-left: 1px solid #777777;
            border-bottom:  1px solid #777777;
            box-shadow: inset 1px 1px 0 #999999, inset 0 -1px 0 #999999;
        }
        .table_blur th:last-child {
            border-right: 1px solid #777777;
            border-bottom:  1px solid #777777;
            box-shadow: inset -1px 1px 0 #999999, inset 0 -1px 0 #999999;
        }
        .table_blur td {
            border: 1px solid #e3eef7;
            padding: 7px 10px;
            position: relative;
            transition: all 0.5s ease;
        }
        .table_blur tbody:hover td {
            color: transparent;
            text-shadow: 0 0 3px #a09f9d;
        }
        .table_blur tbody:hover tr:hover td {
            color: #444444;
            text-shadow: none;
        }
        h4{
            color : #0d7796;
        }
    </style>
</head>

<form action="Servlet" method="post">
    <h2> Your team is : <%=request.getParameter("teamName")%></h2>
   <h4>The sort type</h4>
    <table class="table_blur">
        <tr>
            <th>Club Type Sort</th>
            <th>Position Type Sort</th>
            <th>Price Type Sort</th>
            <th></th>
        </tr>
        <tr>
            <td>
                <select name="clubSort">
                    <option selected disabled><%= request.getParameter("clubSort")%>
                    </option>
                    <option value="none">none</option>
                    <option value="United">United</option>
                    <option value="City">City</option>
                    <option value="Chelsea">Chelsea</option>
                    <option value="Arsenal">Arsenal</option>
                    <option value="Liverpool">Liverpool</option>
                </select>
            </td>
            <td>
                <select name="positionSort">
                    <option selected disabled><%=request.getParameter("positionSort")%>
                    </option>
                    <option value="none">none</option>
                    <option value="goalkeeper">goalkeeper</option>
                    <option value="defender">defender</option>
                    <option value="midfielder">midfielder</option>
                    <option value="forward">forward</option>
                </select>
            </td>
            <td>
                <select name="priceSort">
                    <option selected disabled><%=request.getParameter("priceSort")%>
                    </option>
                    <option value="none">none</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                </select>
            </td>
            <td><input type="submit" value="TryAgain"></td>
        </tr>
    </table>
    <input type="hidden" name="cmd" value="tempCommand"/>
    <input type="hidden" name="teamName" value="<%= request.getParameter("teamName") %>"/>
    <input type="hidden" name="userId" value="<%= request.getParameter("userId") %>"/>
    <input type="hidden" name="playersByName" value="<%= request.getAttribute("playersByName") %>"/>
    <input type="hidden" name="clubSort" value="<%= request.getParameter("clubSort") %>"/>
    <input type="hidden" name="positionSort" value="<%= request.getParameter("positionSort") %>"/>
    <input type="hidden" name="priceSort" value="<%= request.getParameter("priceSort") %>"/>
</form>
    <h4>Players list</h4>
    <table class="table_blur" style="table-layout:fixed; float:left">
        <tr>
            <th>Add</th>
            <th>Id</th>
            <th>Name</th>
            <th>Age</th>
            <th>Nationality</th>
            <th>Club</th>
            <th>Position</th>
            <th>Price</th>

        </tr>
        <c:forEach items="${sortedTeam}" var="player">
            <form action="Servlet" method="post">
        <tr>
            <td><input type="submit" value="Add"/></td>
            <input type="hidden" name="playersId" value="${player.id}"/>
            <input type="hidden" name="cmd" value="addCommand"/>
            <input type="hidden" name="teamName" value="<%= request.getParameter("teamName") %>"/>
            <input type="hidden" name="sortedTeam" value="${sortedTeam}"/>
            <input type="hidden" name="userId" value="<%= request.getParameter("userId") %>"/>
            <input type="hidden" name="playersByName" value="<%= request.getAttribute("playersByName") %>"/>
            <input type="hidden" name="clubSort" value="<%= request.getParameter("clubSort") %>"/>
            <input type="hidden" name="positionSort" value="<%= request.getParameter("positionSort") %>"/>
            <input type="hidden" name="priceSort" value="<%= request.getParameter("priceSort") %>"/>

</form>
<td><c:out value="${player.id}"/></td>
<td><c:out value="${player.name}"/></td>
<td><c:out value="${player.age}"/></td>
<td><c:out value="${player.nationality}"/></td>
<td><c:out value="${player.club}"/></td>
<td><c:out value="${player.position}"/></td>
<td><c:out value="${player.price}"/></td>
</tr>
</c:forEach>

</table>

<table class="table_blur" border="1" cellpadding="0" cellspacing="0">
    <tr>
        <th>Add</th>
        <th>Id</th>
        <th>Name</th>
        <th>Age</th>
        <th>Nationality</th>
        <th>Club</th>
        <th>Position</th>
        <th>Price</th>
    </tr>
    <c:forEach items="${playersByName}" var="players">
        <form action="Servlet" method="post">
        <tr>
            <td><input type="submit" value="-"/></td>
            <input type="hidden" name="playersId" value="${players.id}"/>
            <input type="hidden" name="cmd" value="subCommand"/>
            <input type="hidden" name="teamName" value="<%= request.getParameter("teamName") %>"/>
            <input type="hidden" name="sortedTeam" value="${sortedTeam}"/>
            <input type="hidden" name="playersByName" value="<%= request.getAttribute("playersByName") %>"/>
            <input type="hidden" name="clubSort" value="<%= request.getParameter("clubSort") %>"/>
            <input type="hidden" name="positionSort" value="<%= request.getParameter("positionSort") %>"/>
            <input type="hidden" name="priceSort" value="<%= request.getParameter("priceSort") %>"/>
            <input type="hidden" name="userId" value="<%= request.getParameter("userId") %>"/>
        </form>
            <td><c:out value="${players.id}"/></td>
            <td><c:out value="${players.name}"/></td>
            <td><c:out value="${players.age}"/></td>
            <td><c:out value="${players.nationality}"/></td>
            <td><c:out value="${players.club}"/></td>
            <td><c:out value="${players.position}"/></td>
            <td><c:out value="${players.price}"/></td>
        </tr>

    </c:forEach>

</table>

</body>
</html>
