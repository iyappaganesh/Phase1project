<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<center> 
    <h1> Railway Crossing </h1> 
    <h1>User Login</h1>
    <form action="loginvalidate.jsp" method="post">
        User Name <input type="text" name="user"><br>
        Password <input type="password" name="pwd"><br>
        <input type="submit" value="login">
        <a href="register.jsp">create new account</a>
    </form>
</center>
</body>
</html>
