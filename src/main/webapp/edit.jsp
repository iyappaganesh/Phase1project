<%@page import="com.railway.DAO.*"%>
<%@page import="com.railway.pojo.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit Crossing</title>
</head>
<body>
    <h1>Edit Crossing</h1>
    <%
        // Get the crossing ID from the request parameter
        int crossingId = Integer.parseInt(request.getParameter("id"));

        // Fetch the crossing details using the ID
        CrossingDAO dao = new CrossingDAO();
        Crossing crossing = dao.getCrossingById(crossingId);

        if (crossing != null) {
    %>
    <form action="updatecrossing.jsp" method="post">
        <input type="hidden" name="id" value="<%=crossing.getId()%>">
        Name: <input type="text" name="name" value="<%=crossing.getName()%>"><br>
        Address: <input type="text" name="address" value="<%=crossing.getAddress()%>"><br>
        Landmark: <input type="text" name="landmark" value="<%=crossing.getLandmark()%>"><br>
        Schedule: <input type="text" name="schedule" value="<%=crossing.getSchedule()%>"><br>
        Status: <input type="text" name="status" value="<%=crossing.getStatus()%>"><br>
        <input type="submit" value="Update">
    </form>
    <%
        } else {
    %>
    <p>Crossing not found!</p>
    <%
        }
    %>
</body>
</html>
