<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addcrossing.jsp">
Name <input type="text" name="name"><br>
address<input type="text" name="add"><br>
landmark<input type="text" name="land"><br>
schedule<input type="text" name="sch"><br>
charge<input type="text" name="poc"><br>
<label for="status">status:</label>

<select id="status">
  <option value="open">open</option>
  <option value="close">close</option>
</select>
<input type="submit" value="register"> 
</body>
</html>