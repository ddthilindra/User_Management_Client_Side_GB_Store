<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<link rel="stylesheet" href="Views/comman.css">
<link rel="stylesheet" href="Views/account.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/AdmUpdate.js"></script>
</head>
<body>

<!-----------------------------------------------------------Nve bar Start---------------------------------------------->

<nav class="navbar navbar-expand-lg navbar-light bg-light">
<div class="container">
  <a class="navbar-brand" href="#">GB Online Store</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Product<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact Us<span class="sr-only">(current)</span></a>
      </li>
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
    	<div class="navbut">
      		<a  href="#">Login</a>
      	</div>
      <a class="navbut" href="#">Register</a>
    </form>
  </div>
  </div>
</nav>

<!-----------------------------------------------------------Nve bar End---------------------------------------------->
<div class="back">

<div class="box my-4 mx-5">

<div class="box">
<div class="row">
<div class="col-lg-3">

		

			<div class="cover_side">
				<div class="sidebar">
					<span class="user"> <a href="#"><%out.print(session.getAttribute("Name"));%></a></span> 
						<span class="text">
							<div class="select">
								<a href="#" id="btnUpdateReq" name="btnUpdateReq"> Update

									<form id="formUpdateBtn">
									<input type="hidden" class="form-control" name="txtEmail"
										id="txtEmail"
										value="<%out.print(session.getAttribute("Email"));%>"> 

									</form>




								</a>
							</div>
						</span> 
						
						<span class="text"><a href="#">Payment</a></span> 
						<span class="text"><a href="#">Funding</a></span> 
						<span class="text"><a href="#">Researcher</a></span>
				</div>
				</div>
				
				

</div>
<hr>
<div class="col-lg-9">
			<div class="contentf">
			
			
			<div class="form_side">
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<form id="formUpdate" name="formUpdate">
					<div class="form-group">
						<label for="exampleInputEmail1">Name</label> <input type="text"
							class="form-control" name="Name" id="Name"
							aria-describedby="emailHelp" placeholder="Enter email" value="">
					</div>


					<div class="form-group">
						<label for="exampleInputEmail1">Email</label> <input type="email"
							class="form-control" name="Email" id="Email"
							aria-describedby="emailHelp" placeholder="Enter email" value="">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Address</label> <input type="text"
							class="form-control" name="Add" id="Add"
							aria-describedby="emailHelp" placeholder="Enter email" value="">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Address</label> <input type="text"
							class="form-control" name="Phone" id="Phone"
							aria-describedby="emailHelp" placeholder="Enter email" value="">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Address</label> <input type="text"
							class="form-control" name="Dob" id="Dob"
							aria-describedby="emailHelp" placeholder="Enter email" value="">
					</div>

					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" name="password" class="form-control"
							id="password" placeholder="Password">
					</div>
					<input type="hidden" name="Id" id="Id" value=""> <input
						id="btnUpdate" name="btnUpdate" type="button" value="Update"
						class="btn btn-primary">
				</form>

				

			</div>
			




</div>

</div>


</div>
</div>


	

		
	</div>
	
</div>	


</body>
</html>