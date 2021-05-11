<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
</head>
<body>
<h1>Admin Account</h1>
<br>
<form method="post" action="javascript:update()">
		<div class="form-group">
			<input type="text" class="form-control" name="id" id="id"
				aria-describedby="emailHelp" placeholder="Enter ID"
				value="<%out.print(session.getAttribute("Id"));%>">
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">Name</label> <input type="text"
				class="form-control" name="name" id="name"
				aria-describedby="emailHelp" placeholder="Enter email"
				value="<%out.print(session.getAttribute("Username"));%>">
		</div>

		
		<div class="form-group">
			<label for="exampleInputEmail1">Email address</label> <input
				type="email" class="form-control" name="email"
				id="Email1" aria-describedby="emailHelp"
				placeholder="Enter email"
				value="<%out.print(session.getAttribute("Email"));%>">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Password</label> <input
				type="password" name="password" class="form-control"
				id="Password2" placeholder="Password">
		</div>

		<button type="submit" class="btn btn-primary">Update</button>
	</form>
</body>
</html>