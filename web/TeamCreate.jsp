<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>JSP Page</title>
    <style>
        body {
            background-image: url(img/background.jpg);
            font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;

        }

        table {
            font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
            text-align: left;
            border-collapse: separate;
            border-spacing: 5px;
            background: #ECE9E0;
            color: #656665;
            border: 16px solid #ECE9E0;
            border-radius: 20px;
        }

        th {
            font-size: 18px;
            padding: 10px;

        }

        td {
            background: #F5D7BF;
            padding: 10px;
        }

        h3 {
            color: #999999
        }

    </style>
</head>
<body>
<h3>Welcome on TeamCreatePage</h3>
<h3>Please, enter name of your team</h3>
<h3>And select the sort type</h3>

<form action="Servlet" method="post">
    <table>
        <tr>
            <td> Team name is :</td>
            <td><input type="text" name="teamName"/></td>
        </tr>

    </table>

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
    <input type="hidden" name="userId" value="<%= request.getParameter("userId") %>"/>
    <input type="hidden" name="teamName" value="<%= request.getParameter("teamName") %>"/>
    <input type="hidden" name="clubSort" value="<%= request.getParameter("clubSort") %>"/>
    <input type="hidden" name="positionSort" value="<%= request.getParameter("positionSort") %>"/>
    <input type="hidden" name="priceSort" value="<%= request.getParameter("priceSort") %>"/>
    <p><input type="submit" value="Enter"></p>
</form>
</body>
</html>
