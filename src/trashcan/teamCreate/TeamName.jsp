<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Displaying team name</title>
</head>
<body>
<h1> Your team is : <%= request.getParameter("teamName") %>
</h1>
<form action="Servlet" method="post">

    <table>
        <tr>
            <th>Club Type Sort</th>
            <th>Position Type Sort</th>
            <th>Price Type Sort</th>
            <th>Show all players</th>
        </tr>
        <tr>
            <td>
                <select name="clubSort">
                    <option disabled>Choice the team</option>
                    <option selected value="none">none</option>
                    <option value="United">United</option>
                    <option value="City">City</option>
                    <option value="Chelsea">Chelsea</option>
                    <option value="Arsenal">Arsenal</option>
                    <option value="Liverpool">Liverpool</option>
                </select>
            </td>
            <td>
                <select name="positionSort">
                    <option disabled>Choice the position</option>
                    <option selected value="none">none</option>
                    <option value="goalkeeper">goalkeeper</option>
                    <option value="defender">defender</option>
                    <option value="midfielder">midfielder</option>
                    <option value="forward">forward</option>
                </select>
            </td>
            <td>
                <select name="priceSort">
                    <option disabled>Player's price below that :</option>
                    <option selected value="none">none</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                </select>
            </td>
            <td>Show all players</td>
        </tr>
    </table>
    <input type="hidden" name="cmd" value="tempCommand"/>
    <input type="hidden" name="teamName" value="<%= request.getParameter("teamName") %>"/>
    <input type="hidden" name="clubSort" value= "<%= request.getParameter("clubSort") %>"/>
    <input type="hidden" name="positionSort" value= "<%= request.getParameter("positionSort") %>"/>
    <input type="hidden" name="priceSort" value= "<%= request.getParameter("priceSort") %>"/>
    <p><input type="submit" value="Enter"></p>
</form>
</body>
</html>
