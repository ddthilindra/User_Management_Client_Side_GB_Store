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
					
					<%
					if (session.getAttribute("Username") == null) {
						response.sendRedirect("Home.jsp");
					} else {
					%>
					<a class="navbut" id="btnLogout" href="#">Logout</a>
					<%
					}
					%>
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
				<div class="profimg">
					<img alt="User_profile" src="./img/admin-prof.png" height="220px" width="220px">
				</div>
					<span class="user"> <a href="#"><%out.print(session.getAttribute("Username"));%></a></span> 
					<center><b>Admin Dashboard</b></center>
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
			<h3>Update User Details</h3>
			<br>
				
				<form id="formUpdate" name="formUpdate" class="frmupd">
					<div class="form-group">
						<label for="exampleInputEmail1">Name</label> <input type="text"
							class="form-control" name="Name" id="Name"
							aria-describedby="emailHelp" placeholder="Enter name" value="">
					</div>


					<div class="form-group">
						<label for="exampleInputEmail1">Email</label> <input type="email"
							class="form-control" name="Email" id="Email"
							aria-describedby="emailHelp" placeholder="Enter email" value="">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Address</label> <input type="text"
							class="form-control" name="Add" id="Add"
							aria-describedby="emailHelp" placeholder="Enter address" value="">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Address</label> <input type="text"
							class="form-control" name="Phone" id="Phone"
							aria-describedby="emailHelp" placeholder="Enter phone" value="">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Address</label> <input type="date"
							class="form-control" name="Dob" id="Dob"
							aria-describedby="emailHelp" placeholder="Enter date of birth" value="">
					</div>

					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" name="password" class="form-control"
							id="password" placeholder="Enter password">
					</div>
					<div class="ubdt-btn-center">
					<input type="hidden" name="Id" id="Id" value=""> <input
						id="btnUpdate" name="btnUpdate" type="button" value="Update"
						class="btnUpdate">
						</div>
						<br>
								<div id="alertSuccess" class="alert alert-success"></div>
								<div id="alertError" class="alert alert-danger"></div>
				</form>

				

			</div>
			




		</div>

</div>


</div>
</div>
</div>
</div>	

<!-- -----------------------------------------------------Footer Start----------------------------------------------------- -->

<!-- Footer -->
<footer class="text-center text-lg-start bg-light text-muted">
  <!-- Section: Social media -->
  <section
    class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom"
  >
    <!-- Left -->
    <div class="me-5 d-none d-lg-block">
      <span>Get connected with us on social networks:</span>
    </div>
    <!-- Left -->

    <!-- Right -->
    <div>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-facebook-f"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-twitter"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-google"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-instagram"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-linkedin"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-github"></i>
      </a>
    </div>
    <!-- Right -->
  </section>
  <!-- Section: Social media -->

  <!-- Section: Links  -->
  <section class="">
    <div class="container text-center text-md-start mt-5">
      <!-- Grid row -->
      <div class="row mt-3">
        <!-- Grid column -->
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
          <!-- Content -->
          <h6 class="text-uppercase fw-bold mb-4">
            <i class="fas fa-gem me-3"></i>Company name
          </h6>
          <p>
            Here you can use rows and columns to organize your footer content. Lorem ipsum
            dolor sit amet, consectetur adipisicing elit.
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
            Products
          </h6>
          <p>
            <a href="#!" class="text-reset">Angular</a>
          </p>
          <p>
            <a href="#!" class="text-reset">React</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Vue</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Laravel</a>
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
            Useful links
          </h6>
          <p>
            <a href="#!" class="text-reset">Pricing</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Settings</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Orders</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Help</a>
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
            Contact
          </h6>
          <p><i class="fas fa-home me-3"></i> New York, NY 10012, US</p>
          <p>
            <i class="fas fa-envelope me-3"></i>
            info@example.com
          </p>
          <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
          <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
        </div>
        <!-- Grid column -->
      </div>
      <!-- Grid row -->
    </div>
  </section>
  <!-- Section: Links  -->

  <!-- Copyright -->
  <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
    © 2021 Copyright:
    <a class="text-reset fw-bold" href="https://mdbootstrap.com/">MDBootstrap.com</a>
  </div>
  <!-- Copyright -->
</footer>
<!-- -----------------------------------------------------Footer End----------------------------------------------------- -->

</body>
</html>