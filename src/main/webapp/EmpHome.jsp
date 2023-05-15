<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="employee.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"
	crossorigin="anonymous"></script>
	<!-- favicon- paste in head -->
<link rel="icon" type="image/x-icon"
	href="zlogo_-_Edited-removebg-preview 1.png">
	
	
	
</head>
<body>

<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>


	<!--    NAVBAR-->
	<nav class="navbar navbar-expand-lg bg-success sticky-top"
		data-bs-theme="dark">
		<div>
			<img src="logo_-_Edited-removebg-preview 1.png" width="48px"
				height="38px" href="#home">
		</div>
		<div class="container-fluid">
			<a style="margin-left: 10px" class="navbar-brand" href="#home"><b>JOB</b><span
				class="text-warning"><b>OPSY.</b></span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="nav navbar-nav navbar-center">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="main.jsp"><i
							class="fa fa-fw fa-home"></i> HOME</a></li>
				<!--  	<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="services.jsp"><i class='fas fa-cogs'></i>
							SERVICES</a></li>	-->
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="about.jsp"><i
							class='far fa-address-book'></i> ABOUT</a>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="team.jsp"><i class='fas fa-building'></i>
							TEAM</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="contact.jsp"><i
							class="fa fa-fw fa-envelope"></i> CONTACT</a></li>
			</div>

			<div class="a" style="color: white; margin-right: 20px;">
				<li class="nav-item dropdown d-flex"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> <i
						class="fa fa-sign-in"></i> LOGIN
				</a>
					<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="ulog.jsp">USER</a></li>
						<li><a class="dropdown-item" href="elog.jsp">PROFESSIONAL</a></li>
					</ul></li>
				</ul>
			</div>
			<div class="a" style="color: white; margin-right: 68px;">
				<li class="nav-item dropdown d-flex"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> SIGN UP </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="userreg.jsp">USER</a></li>
						<li><a class="dropdown-item" href="empreg (1).jsp">PROFESSIONAL</a></li>
					</ul></li>
				</ul>
			</div>


		</div>
	</nav>
	<!-- end of navbar -->
<hr>
<!--employee home-->

	<section class="home" id="home">
	<div class="w3-container"> 
<div class="row">
			<div class="col-12 col-md-12 col-lg-12">
					<div class="card text-white text-center bg-dark pb-2">
						<div class="card-body">
							<h3 class="card-title" justify="center">New Requests...</h3>
							
							<p class="lead"></p>
							<!--for demo wrap-->
  <div class="tbl-header" justify="center">
    <table class="center" style="width:100%" class="table table-striped">
      <thead>
        <tr>
          <th>Id</th>
          <th> Customer Name</th>
          <th> Location</th>
          <th>Service Required</th>
          <th>Status</th>
        <!--  <th></th>	 --> 
        </tr>
      </thead>
    </table>
  </div></div>
						</div>
					</div>
				</div>
</div>
  
  
  
  <hr>
  <div class="w3-container"> 
<div class="row">
			<div class="col-12 col-md-12 col-lg-12">
					<div class="card text-white text-center bg-dark pb-2">
						<div class="card-body">
							<h3 class="card-title" justify="center">ONgoing Work...</h3>
							
							<p class="lead"></p>
							<!--for demo wrap-->
  <div class="tbl-header" justify="center">
    <table class="center" style="width:100%" class="table table-striped">
      <thead>
        <tr>
          <th>Id</th>
          <th> Customer Name</th>
          <th> Location</th>
          <th>Service Required</th>
          <th>Status</th>
         <!--   <th></th>	-->
        </tr>
      </thead>
    </table>
  </div></div>
						</div>
					</div>
				</div>
</div>
</div>
<hr>


<div class="w3-container"> 
<div class="row">
			<div class="col-12 col-md-12 col-lg-12">
					<div class="card text-white text-center bg-dark pb-2">
						<div class="card-body">
							<h3 class="card-title" justify="center">Completed Work...</h3>
							
							<p class="lead"></p>
							<!--for demo wrap-->
  <div class="tbl-header" justify="center">
    <table class="center" style="width:100%">
      <thead>
        <tr>
          <th>Id</th>
          <th> Customer Name</th>
          <th>Service Required</th>
          <th> Location</th>
          <th>Status</th>
          <th>Customer Rating</th>
        </tr>
      </thead>
    </table>
  </div></div>
						</div>
					</div>
				</div>
</div>

</body>
</html>