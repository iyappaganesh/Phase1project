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
RailwayDAO dao=new RailwayDAO();
Railway railway=new Railway();
railway.setName(request.getParameter("name"));
railway.setEmail(request.getParameter("mail"));
railway.setPassword(request.getParameter("pwd"));
int row=dao.addstudent(railway);
if(row>0){
	response.sendRedirect("Login.jsp");
	
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>