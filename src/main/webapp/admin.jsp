<%@page import="com.railway.DAO.*"%>
<%@page import="com.railway.pojo.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>List of Crossings</title>
</head>
<body>
<form action="logout.jsp">
        <input type="submit" value="logout"> 
    </form>
    <form action="crossingadd.jsp">
        <input type="submit" value="Add Crossing"> 
    </form>
    <h1><i>List of Crossings</i></h1>
    <table border="1">
        <tr>
            <th>Crossing ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>Landmark</th>
            <th>Schedule</th>
            <th>Status</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <%
            CrossingDAO dao = new CrossingDAO();
            List<Crossing> list = dao.selectCrossings();
            for (Crossing crossing : list) {
        %>
        <tr>
            <td><%=crossing.getId()%></td>
            <td><%=crossing.getName()%></td>
            <td><%=crossing.getAddress()%></td>
            <td><%=crossing.getLandmark()%></td>
            <td><%=crossing.getSchedule()%></td>
            <td><%=crossing.getStatus()%></td>
            <td><a href="edit.jsp?id=<%=crossing.getId() %>">Edit</a></td>
            <td><a href="delete.jsp?id=<%=crossing.getId() %>">Delete</a></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
