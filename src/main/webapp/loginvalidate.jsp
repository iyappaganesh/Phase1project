<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.railway.dbutil.DbUtil"%>
<%@page import="com.railway.pojo.Railway"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login Validation</title>
</head>
<body>

<%
    // Get user input from the form
    String username = request.getParameter("user");
    String password = request.getParameter("pwd");

    // Initialize Hibernate session
    Session session1 = DbUtil.dbConn();
    Transaction transaction = session1.beginTransaction();

    // Check if the user is an admin
    if ("admin".equals(username) && "admin@123".equals(password)) {
        // Redirect to admin.jsp for admin login
        response.sendRedirect("admin.jsp");
    } else {
        // Query to check if the user exists with the given credentials
        Query<Railway> query = session1.createQuery("FROM Railway WHERE email = :username AND password = :password", Railway.class);
        query.setParameter("username", username);
        query.setParameter("password", password);

        List<Railway> users = query.getResultList();

        // Commit the transaction and close the session
        transaction.commit();
        session1.close();

        // Check if the user exists
        if (!users.isEmpty()) {
            // User exists, perform the login logic
        	response.sendRedirect("userpage.jsp");
        } else {
            // User does not exist or incorrect credentials
            out.println("<h2>Login failed. Please check your username and password.</h2>");
        }
    }
%>

</body>
</html>
