<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="service" class="web.model.logic.FullTeamService" />
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<h1>My team is : <%= request.getParameter("teamName")%></h1>
<c:set var="allteam" value="${service.allPlayers}" />
<table>
    <tr>
        <th>Club Sort</th>
        <th>Position </th>
        <th>Price </th>
        <th>Show </th>
    </tr>
    <tr>
        <td>
            <select name="Sort">
                <option selected disabled><%=request.getAttribute("clubSort")%></option>
                <option value="united">United</option>
                <option value="city">City</option>
                <option value="chelsea">Chelsea</option>
                <option value="arsenal">Arsenal</option>
                <option value="liverpool">Liverpool</option>
            </select>
        </td>
        <td>
            <select name="positionSort">
                <option selected disabled><%=request.getAttribute("positionSort")%></option>
                <option value="goalkeeper">goalkeeper</option>
                <option value="defender">defender</option>
                <option value="midfielder">midfielder</option>
                <option value="forward">forward</option>
            </select>
        </td>
        <td>
            <select name="priceSort">
                <option selected disabled><%=request.getAttribute("priceSort")%></option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
            </select>
        </td>
        <td>Show all players</td>
    </tr>
</table>

<table>
    <c:forEach items="${allteam}" var="player">
        <tr>
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

</body>
</html>
