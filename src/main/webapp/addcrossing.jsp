<%@page import="com.railway.DAO.*"%>
<%@page import="com.railway.pojo.*"%>
<%@page import="java.util.*"%>
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
CrossingDAO dao=new CrossingDAO();
Crossing crossing=new Crossing();
crossing.setName(request.getParameter("name"));
crossing.setAddress(request.getParameter("add"));
crossing.setLandmark(request.getParameter("land"));
crossing.setSchedule(request.getParameter("sch"));
crossing.setCharge(request.getParameter("poc"));
crossing.setStatus(request.getParameter("status"));
int row=dao.addCrossing(crossing);
if(row>0){
	response.sendRedirect("admin.jsp");
	
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>