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
<a href="favourites.jsp">favourites list</a>
<h1> USER HOMEPAGE </h1> 
<p><a href="logout.jsp">logout</a></p>
 <%
            CrossingDAO dao = new CrossingDAO();
            List<Crossing> list = dao.selectCrossings();
            for (Crossing crossing : list) {
        %>
        <tr>
            <td><%=crossing.getId()%></td><br>
            <td><%=crossing.getName()%></td><br>
            <td><%=crossing.getAddress()%></td><br>
            <td><%=crossing.getLandmark()%></td><br>
            <td><%=crossing.getSchedule()%></td><br>
            <td><%=crossing.getStatus()%></td><br>
             <td>
            <a href="addtofavourites.jsp?id=<%=crossing.getId()%>&name=<%=crossing.getName()%>&address=<%=crossing.getAddress()%>&landmark=<%=crossing.getLandmark()%>&schedule=<%=crossing.getSchedule()%>&status=<%=crossing.getStatus()%>">Add to Favorites</a>
        </td>
        </tr>
        <%
            }
        %>
</body>
</html>