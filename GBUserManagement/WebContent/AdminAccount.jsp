<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/Login.js"></script>
</head>
<body>
<h1>Admin Account</h1>
<br>

<form id="formUpdateBtn">
<input type="text" class="form-control" name="txtEmail" id="txtEmail"  value="<%out.print(session.getAttribute("Email"));%>">
<input id="btnLogin" name="btnLogin" type="button" value="Login" class="btn btn-primary">
</form>
	
</body>
</html>