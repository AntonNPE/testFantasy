
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<jsp:useBean id="service" class="web.model.logic.FullTeamService" />
<jsp:useBean id="team" class="web.model.entity.Team" />

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<c:set var="allteam" value="${service.allPlayers}" />
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
