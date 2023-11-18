<%@page import="com.railway.DAO.*"%>
<%@page import="com.railway.pojo.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
    int crossingId = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String landmark = request.getParameter("landmark");
    String schedule = request.getParameter("schedule");
    String status = request.getParameter("status");

    CrossingDAO dao = new CrossingDAO();
    Crossing crossing = dao.getCrossingById(crossingId);

    crossing.setName(name);
    crossing.setAddress(address);
    crossing.setLandmark(landmark);
    crossing.setSchedule(schedule);
    crossing.setStatus(status);

    int updatedCrossingId = dao.updateCrossing(crossing);

    if (updatedCrossingId > 0) {
        response.sendRedirect("admin.jsp");
    } else {
        response.sendRedirect("listcrossings.jsp");
    }
    %>

</body>
</html>