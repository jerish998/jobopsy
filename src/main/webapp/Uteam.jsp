<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<link rel="stylesheet" href="styles.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
<!-- favicon- paste in head -->
<link rel="icon" type="image/x-icon"
	href="zlogo_-_Edited-removebg-preview 1.png">


<style type="text/css">
.avatar {
	width: 50px;
	height: 50px;
	border-radius: 50%;
}
</style>

</head>
<body>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
		integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
		crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/a076d05399.js"
		crossorigin="anonymous"></script>

	<!--    NAVBAR-->
	<nav class="navbar navbar-expand-lg bg-success sticky-top"
		data-bs-theme="dark">


		<div>
			<img src="zlogo_-_Edited-removebg-preview 1.png" width="48px"
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
						aria-current="page" href="Uhome.jsp"><i
							class="fa fa-fw fa-home"></i> HOME</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Uservice.jsp"><i class='fas fa-cogs'></i>
							SERVICES</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Uabout.jsp"><i
							class='far fa-address-book'></i> ABOUT</a>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Uteam.jsp"><i
							class='fas fa-building'></i> TEAM</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Ucontact.jsp"><i
							class="fa fa-fw fa-envelope"></i> CONTACT</a></li>
			</div>

			<button type="button" class="btn btn-sm btn-outline-warning"
				onclick="window.location.href='Homepage.jsp';">LOG OUT</button>
			&nbsp;

			<div class="a" style="color: white; margin-right: 20px;">
				<li class="nav-item dropdown d-flex"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> <img
						src="zprofile-icon.webp" alt="Avatar" class="avatar">
				</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="empreg (1).jsp">Signup
								as PROFESSIONAL</a></li>
					</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<!--  end of navbar -->

	<!--    TEAM-->
	<section class="services section-padding" id="services">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-header text-center pb-5">
						<h2>OUR TEAM</h2>
						<p>
							<h5>
							Meet our team of <i>creators</i>,<i>designers</i>,<br>and
							world class <i>problem solvers...</i>
						</h5>
						To be the company our customers want us to be, it takes an
						eclectic group of passionate operators.<br> Get to know the
						people leading the way at <i>JOBOPSY.</i>

						</p>
					</div>
				</div>
			</div>


			<div class="row">
				<div class="col-12 col-md-6 col-lg-3">
					<div class="card text-white text-center bg-dark pb-2">
						<div class="card-body">
							<h3 class="card-title">PRIYAMVADHA</h3>
							<img alt="" class="" src="linkedin-profile-image-priyamvada.jpg"
								height="272" width="272">
							<p class="lead"></p>
							<div class="socail-links mt-3">
								<a href="https://twitter.com/" class="twiiter"><i
									class="fa-brands fa-twitter"></i></a> &nbsp <a
									href="https://www.facebook.com/" class="twiiter"><i
									class="fa-brands fa-facebook-f"></i></a> &nbsp <a
									href="https://www.google plus.com/" class="twiiter"><i
									class="fa-brands fa-google-plus"></i></a> &nbsp <a
									href="https://www.instagram.com/" class="twiiter"><i
									class="fa-brands fa-instagram"></i></a> &nbsp <a
									href="https://www.linkedin.com/" class="twiiter"><i
									class="fa-brands fa-linkedin-in"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-3">
					<div class="card text-white text-center bg-dark pb-2">
						<div class="card-body">
							<h3 class="card-title">ABHIJITH</h3>
							<img alt="" class="" src="linkedin-profile-image-abhijith.jpg"
								height="272" width="272">
							<p class="lead"></p>
							<div class="socail-links mt-3">
								<a href="https://twitter.com/" class="twiiter"> <i
									class="fa-brands fa-twitter"></i></a> &nbsp <a
									href="https://www.facebook.com/" class="twiiter"><i
									class="fa-brands fa-facebook-f"></i></a> &nbsp <a
									href="https://www.google plus.com/" class="twiiter"><i
									class="fa-brands fa-google-plus"></i></a> &nbsp <a
									href="https://www.instagram.com/" class="twiiter"><i
									class="fa-brands fa-instagram"></i></a> &nbsp <a
									href="https://www.linkedin.com/" class="twiiter"><i
									class="fa-brands fa-linkedin-in"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-3">
					<div class="card text-white text-center bg-dark pb-2">
						<div class="card-body">
							<h3 class="card-title">ABHILASH</h3>
							<img alt="" class="" src="linkedin-profile-image-abilash.jpg"
								height="272" width="272">
							<p class="lead"></p>
							<div class="socail-links mt-3">
								<a href="https://twitter.com/" class="twiiter"><i
									class="fa-brands fa-twitter"></i></a> &nbsp <a
									href="https://www.facebook.com/" class="twiiter"><i
									class="fa-brands fa-facebook-f"></i></a> &nbsp <a
									href="https://www.google plus.com/" class="twiiter"><i
									class="fa-brands fa-google-plus"></i></a> &nbsp <a
									href="https://www.instagram.com/" class="twiiter"><i
									class="fa-brands fa-instagram"></i></a> &nbsp <a
									href="https://www.linkedin.com/" class="twiiter"><i
									class="fa-brands fa-linkedin-in"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-3">
					<div class="card text-white text-center bg-dark pb-2">
						<div class="card-body">
							<h3 class="card-title">ASWIN</h3>
							<img alt="" class="" src="linkedin-profile-image-aswin.jpg"
								width="272" height="272">
							<p class="lead"></p>
							<div class="socail-links mt-3">
								<a href="https://twitter.com/" class="twiiter"><i
									class="fa-brands fa-twitter"></i></a> &nbsp <a
									href="https://www.facebook.com/" class="twiiter"><i
									class="fa-brands fa-facebook-f"></i></a> &nbsp <a
									href="https://www.google plus.com/" class="twiiter"><i
									class="fa-brands fa-google-plus"></i></a> &nbsp <a
									href="https://www.instagram.com/" class="twiiter"><i
									class="fa-brands fa-instagram"></i></a> &nbsp <a
									href="https://www.linkedin.com/" class="twiiter"><i
									class="fa-brands fa-linkedin-in"></i></a>
							</div>
						</div>
					</div>
				</div>
				<hr>

				<div class="col-12 col-md-6 col-lg-3">
					<div class="card text-white text-center bg-dark pb-2">
						<div class="card-body">
							<h3 class="card-title">JERISH</h3>
							<img alt="" class="" src="linkedin-profile-image-jerish.jpg"
								height="272" width="272">
							<p class="lead"></p>
							<div class="socail-links mt-3">
								<a href="https://twitter.com/" class="twiiter"><i
									class="fa-brands fa-twitter"></i></a> &nbsp <a
									href="https://www.facebook.com/" class="twiiter"><i
									class="fa-brands fa-facebook-f"></i></a> &nbsp <a
									href="https://www.google plus.com/" class="twiiter"><i
									class="fa-brands fa-google-plus"></i></a> &nbsp <a
									href="https://www.instagram.com/" class="twiiter"><i
									class="fa-brands fa-instagram"></i></a> &nbsp <a
									href="https://www.linkedin.com/" class="twiiter"><i
									class="fa-brands fa-linkedin-in"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-3">
					<div class="card text-white text-center bg-dark pb-2">
						<div class="card-body">
							<h3 class="card-title">KAVIN</h3>
							<img alt="" class="" src="linkedin-profile-image-kavin.jpg"
								height="272" width="272">
							<p class="lead"></p>
							<div class="socail-links mt-3">
								<a href="https://twitter.com/" class="twiiter"><i
									class="fa-brands fa-twitter"></i></a> &nbsp <a
									href="https://www.facebook.com/" class="twiiter"><i
									class="fa-brands fa-facebook-f"></i></a> &nbsp <a
									href="https://www.google plus.com/" class="twiiter"><i
									class="fa-brands fa-google-plus"></i></a> &nbsp <a
									href="https://www.instagram.com/" class="twiiter"><i
									class="fa-brands fa-instagram"></i></a> &nbsp <a
									href="https://www.linkedin.com/" class="twiiter"><i
									class="fa-brands fa-linkedin-in"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-12 col-md-6 col-lg-3">
					<div class="card text-white text-center bg-dark pb-2">
						<div class="card-body">
							<h3 class="card-title">LAKSHMI</h3>
							<img alt="" class="" src="linkedin-profile-image-lakshmi.jpg"
								width="272" height="272">
							<p class="lead"></p>
							<div class="socail-links mt-3">
								<a href="https://twitter.com/" class="twiiter"><i
									class="fa-brands fa-twitter"></i></a> &nbsp <a
									href="https://www.facebook.com/" class="twiiter"><i
									class="fa-brands fa-facebook-f"></i></a> &nbsp <a
									href="https://www.google plus.com/" class="twiiter"><i
									class="fa-brands fa-google-plus"></i></a> &nbsp <a
									href="https://www.instagram.com/" class="twiiter"><i
									class="fa-brands fa-instagram"></i></a> &nbsp <a
									href="https://www.linkedin.com/" class="twiiter"><i
									class="fa-brands fa-linkedin-in"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-3">
					<div class="card text-white text-center bg-dark pb-2">
						<div class="card-body">
							<h3 class="card-title">NAVYA</h3>
							<img alt="" class="" src="linkedin-profile-image-navya.jpg"
								height="272" width="272">
							<p class="lead"></p>
							<div class="socail-links mt-3">
								<a href="https://twitter.com/" class="twiiter"><i
									class="fa-brands fa-twitter"></i></a> &nbsp <a
									href="https://www.facebook.com/" class="twiiter"><i
									class="fa-brands fa-facebook-f"></i></a> &nbsp <a
									href="https://www.google plus.com/" class="twiiter"><i
									class="fa-brands fa-google-plus"></i></a> &nbsp <a
									href="https://www.instagram.com/" class="twiiter"><i
									class="fa-brands fa-instagram"></i></a> &nbsp <a
									href="https://www.linkedin.com/" class="twiiter"><i
									class="fa-brands fa-linkedin-in"></i></a>
							</div>
						</div>
					</div>
				</div>
				<hr>
				<div class="col-12 col-md-6 col-lg-3">
					<div class="card text-white text-center bg-dark pb-2">
						<div class="card-body">
							<h3 class="card-title">SANDHYA</h3>
							<img alt="" class="" src="linkedin-profile-image-sandya.jpg"
								height="272" width="272">
							<p class="lead"></p>
							<div class="socail-links mt-3">
								<a href="https://twitter.com/" class="twiiter"><i
									class="fa-brands fa-twitter"></i></a> &nbsp <a
									href="https://www.facebook.com/" class="twiiter"><i
									class="fa-brands fa-facebook-f"></i></a> &nbsp <a
									href="https://www.google plus.com/" class="twiiter"><i
									class="fa-brands fa-google-plus"></i></a> &nbsp <a
									href="https://www.instagram.com/" class="twiiter"><i
									class="fa-brands fa-instagram"></i></a> &nbsp <a
									href="https://www.linkedin.com/" class="twiiter"><i
									class="fa-brands fa-linkedin-in"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-12 col-md-6 col-lg-3">
					<div class="card text-white text-center bg-dark pb-2">
						<div class="card-body">
							<h3 class="card-title">SIDHIQUE</h3>
							<img alt="" class="" src="linkedin-profile-image-sidhique.jpg"
								height="272" width="272">
							<p class="lead"></p>
							<div class="socail-links mt-3">
								<a href="https://twitter.com/" class="twiiter"><i
									class="fa-brands fa-twitter"></i></a> &nbsp <a
									href="https://www.facebook.com/" class="twiiter"><i
									class="fa-brands fa-facebook-f"></i></a> &nbsp <a
									href="https://www.google plus.com/" class="twiiter"><i
									class="fa-brands fa-google-plus"></i></a> &nbsp <a
									href="https://www.instagram.com/" class="twiiter"><i
									class="fa-brands fa-instagram"></i></a> &nbsp <a
									href="https://www.linkedin.com/" class="twiiter"><i
									class="fa-brands fa-linkedin-in"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-3">
					<div class="card text-white text-center bg-dark pb-2">
						<div class="card-body">
							<h3 class="card-title">UNNI</h3>
							<img alt="" class="" src="linkedin-profile-image-unni.jpg"
								height="272" width="272">
							<p class="lead"></p>
							<div class="socail-links mt-3">
								<a href="https://twitter.com/" class="twiiter"><i
									class="fa-brands fa-twitter"></i></a> &nbsp <a
									href="https://www.facebook.com/" class="twiiter"><i
									class="fa-brands fa-facebook-f"></i></a> &nbsp <a
									href="https://www.google plus.com/" class="twiiter"><i
									class="fa-brands fa-google-plus"></i></a> &nbsp <a
									href="https://www.instagram.com/" class="twiiter"><i
									class="fa-brands fa-instagram"></i></a> &nbsp <a
									href="https://www.linkedin.com/" class="twiiter"><i
									class="fa-brands fa-linkedin-in"></i></a>
							</div>
						</div>
					</div>
				</div>


				<div class="col-12 col-md-6 col-lg-3">
					<div class="card text-white text-center bg-dark pb-2">
						<div class="card-body">
							<h3 class="card-title">VISHNU</h3>
							<img alt="" class="" src="linkedin-profile-image-vishnu1.jpg"
								height="272" width="272">
							<p class="lead"></p>
							<div class="socail-links mt-3">
								<a href="https://twitter.com/" class="twiiter"><i
									class="fa-brands fa-twitter"></i></a> &nbsp <a
									href="https://www.facebook.com/" class="twiiter"><i
									class="fa-brands fa-facebook-f"></i></a> &nbsp <a
									href="https://www.google plus.com/" class="twiiter"><i
									class="fa-brands fa-google-plus"></i></a> &nbsp <a
									href="https://www.instagram.com/" class="twiiter"><i
									class="fa-brands fa-instagram"></i></a> &nbsp <a
									href="https://www.linkedin.com/" class="twiiter"><i
									class="fa-brands fa-linkedin-in"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end of team -->
    
    <!--    FOOTER--><fo oter id="footer" style="margin-top: 50px;">
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-6 footer-content">
						<h3>JOBOPSY</h3>
						<p>Jobopsy connects you to experts around you for Home
							Maintenance and Repairs, Utility, Lifestyle, Health, Beauty,
							Travel, and other local services, and also brings Local Shopping,
							Deals, and Events to you, right where you are, through an easy to
							use platform.</p>
						<p>
							Trivandrum <br> kochi <br> kozhikode <br>
						</p>
						<strong><i class="fas fa-phone"></i> Phone: <strong>+000000000000000</strong></strong><br>
						<strong><i class="fa-solid fa-envelope"></i> Email: <strong>example@gmail.com</strong></strong>
					</div>
					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Usefull Links</h4>
						<ul>
							<li><a href="Uhome.jsp">Home</a></li>
							<li><a href="Uservice.jsp">Services</a></li>
							<li><a href="Uabout.jsp">About</a></li>
							<li><a href="Ucontact.jsp">Contact</a></li>
							<li><a href="#">Privacy policay</a></li>
							<li><a href="#">Terms and Conditions</a></li>
						</ul>
					</div>
					<div class="col-lg-3 col-md-6 footer-links">
						<h4>SERVICES</h4>
						<p></p>
						<ul>
							<li><a href="#">Painting</a></li>
							<li><a href="#">Carpentry</a></li>
							<li><a href="#">Laundry</a></li>
						</ul>
					</div>
					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Our Social Network</h4>
						<p></p>
						<div class="socail-links mt-3">
							<a href="https://twitter.com/" class="twiiter"><i
								class="fa-brands fa-twitter"></i></a> <a
								href="https://www.facebook.com/" class="twiiter"><i
								class="fa-brands fa-facebook-f"></i></a> <a
								href="https://www.google plus.com/" class="twiiter"><i
								class="fa-brands fa-google-plus"></i></a> <a
								href="https://www.instagram.com/" class="twiiter"><i
								class="fa-brands fa-instagram"></i></a> <a
								href="https://www.linkedin.com/" class="twiiter"><i
								class="fa-brands fa-linkedin-in"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr>
		<div class="container py-4">
			<div class="copyright">
				&copy; Copyright <strong>jobopsy.com</strong>.All Rights Reserved
			</div>
			<div class="credits">
				Designed By <a href="#">myself</a>
			</div>
		</div>
	</footer>
<!--  end of footer -->

</body>
</html>