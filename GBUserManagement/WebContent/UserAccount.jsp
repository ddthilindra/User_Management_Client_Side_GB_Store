<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/UsUpdate.js"></script>
</head>
<body>
<h1>User Account</h1>
<br>
<form id="formUpdateBtn">
<input type="hidden" class="form-control" name="txtEmail" id="txtEmail"  value="<%out.print(session.getAttribute("Email"));%>">
<input id="btnUpdateReq" name="btnUpdateReq" type='button' value='Update' class='btnUpdate btn btn-secondary' >

</form>
<div  id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>

<form id="formUpdate" name="formUpdate">
		<div class="form-group">
			<label for="exampleInputEmail1">Name</label> <input type="text"
				class="form-control" name="Name" id="Name"
				aria-describedby="emailHelp" placeholder="Enter email"
				value="">
		</div>

		
		<div class="form-group">
			<label for="exampleInputEmail1">Email</label> <input
				type="email" class="form-control" name="Email"
				id="Email" aria-describedby="emailHelp"
				placeholder="Enter email"
				value="">
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">Address</label> <input
				type="text" class="form-control" name="Add"
				id="Add" aria-describedby="emailHelp"
				placeholder="Enter email"
				value="">
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">Address</label> <input
				type="text" class="form-control" name="Phone"
				id="Phone" aria-describedby="emailHelp"
				placeholder="Enter email"
				value="">
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">Address</label> <input
				type="text" class="form-control" name="Dob"
				id="Dob" aria-describedby="emailHelp"
				placeholder="Enter email"
				value="">
		</div>
		
		<div class="form-group">
			<label for="exampleInputPassword1">Password</label> <input
				type="password" name="password" class="form-control"
				id="password" placeholder="Password">
		</div>
		<input type="hidden" name="Id" id="Id" value="">
		<input id="btnUpdate" name="btnUpdate" type="button" value="Update" class="btn btn-primary">
	</form>
</body>
</html>