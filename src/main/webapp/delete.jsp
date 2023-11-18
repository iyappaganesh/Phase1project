<%@page import="com.railway.DAO.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Delete Crossing</title>
</head>
<body>
    <h1>Delete Crossing</h1>
    <%
        // Get the crossing ID from the request parameter
        int crossingId = Integer.parseInt(request.getParameter("id"));

        // Delete the crossing using the ID
        CrossingDAO dao = new CrossingDAO();
        int rowsDeleted = dao.deleteCrossing(crossingId);

        if (rowsDeleted > 0) {
    %>
    <p>Crossing deleted successfully.</p>
    <%
        } else {
    %>
    <p>Error deleting crossing.</p>
    <%
        }
    %>
    <p><a href="admin.jsp">Back to List</a></p>
</body>
</html>
