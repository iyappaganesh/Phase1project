<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.railway.pojo.Crossing"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Favorites</title>
</head>
<body>
<p><a href="logout.jsp">logout</a></p>
    <%
        HttpSession session1 = request.getSession(true);

        // Retrieve the favorites list from the session
        List<Crossing> favourites = (List<Crossing>) session.getAttribute("favourites");
    %>

    <h2>Favorites</h2>
    <table border="1">
        <tr>
            <th>Product Id</th>
            <th>Product Name</th>
            <th>Product Address</th>
            <th>Product Landmark</th>
            <th>Product Schedule</th>
            <th>Product Status</th>
        </tr>
        <%
            for (Crossing crossing : favourites) {
        %>
        <tr>
            <td><%=crossing.getId()%></td>
            <td><%=crossing.getName()%></td>
            <td><%=crossing.getAddress()%></td>
            <td><%=crossing.getLandmark()%></td>
            <td><%=crossing.getSchedule()%></td>
            <td><%=crossing.getStatus()%></td>
        </tr>
        <%
            }
        %>
    </table>

    <p><a href="userpage.jsp">Back to List</a></p>
</body>
</html>
