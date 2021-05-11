<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/Register.js"></script>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Register</h1>
				<form id="formRegister">
				
					Username: <input id="txtUsername" name="txtUsername" type="text"
						class="form-control form-control-sm"> 
						
					Email: <input id="txtEmail" name="txtEmail" type="Email"
						class="form-control form-control-sm"> 
						
					Address: <input id="txtAddress" name="txtAddress" type="text"
						class="form-control form-control-sm"> 
						
					Phone: <input id="txtPhone" name="txtPhone" type="text"
						class="form-control form-control-sm"> 
						
					DOB: <input id="txtDOB" name="txtDOB" type="text"
						class="form-control form-control-sm"> 
						
						Password: <input
						id="txtPassword" name="txtPassword" type="password"
						class="form-control form-control-sm"> <br> 
						
						<input
						id="btnReg" name="btnReg" type="button" value="Register"
						class="btn btn-primary"> <br> 
						 <input 
						id="hidItemIDSave" name="hidItemIDSave" value=""><br>
					<div id="alertError" class="alert alert-danger"></div>
				</form>
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
			</div>
		</div>
	</div>

</body>
</html>