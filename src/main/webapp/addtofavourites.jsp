<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.railway.pojo.Crossing"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add to Favorites</title>
</head>
<body>
    <%
        HttpSession session1 = request.getSession(true);

        // Retrieve or create the favorites list
        List<Crossing> favourites = (List<Crossing>) session1.getAttribute("favourites");
        if (favourites == null) {
        	favourites = new ArrayList<>();
            session.setAttribute("favourites", favourites);
        }

        // Retrieve parameters from the request
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String landmark = request.getParameter("landmark");
        String schedule = request.getParameter("schedule");
        String status = request.getParameter("status");

        // Create a Crossing object with the retrieved parameters
        Crossing crossing = new Crossing();
        crossing.setId(id);
        crossing.setName(name);
        crossing.setAddress(address);
        crossing.setLandmark(landmark);
        crossing.setSchedule(schedule);
        crossing.setStatus(status);

        // Add the Crossing object to the favorites list
        favourites.add(crossing);
    %>

    <p>Item added to favorites successfully!</p>
    <p><a href="userpage.jsp">Back to List</a></p>
</body>
</html>
