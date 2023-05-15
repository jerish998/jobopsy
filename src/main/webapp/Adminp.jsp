<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="Bean.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<!--<title> Responsive Admin Dashboard | CodingLab </title>-->
<link rel="stylesheet" href="Admin.css">
<!-- Boxicons CDN Link -->
<link href="Admin.css" rel='stylesheet'>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



</head>
<body onload="javascript:hideTable()">
	<div class="sidebar">
		<div class="logo-details">
			<i class='bx bxl-c-plus-plus'></i> <span class="logo_name">JOBOPSY</span>
		</div>
		<ul class="nav-links">
			<li><a href="#" class="active"> <i class='bx bx-grid-alt'></i>
					<span class="links_name">Dashboard</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-box'></i> <span
					class="links_name">Product</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-list-ul'></i> <span
					class="links_name">Order list</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-pie-chart-alt-2'></i> <span
					class="links_name">Analytics</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-coin-stack'></i> <span
					class="links_name">Stock</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-book-alt'></i> <span
					class="links_name">Total order</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-user'></i> <span
					class="links_name">Team</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-message'></i> <span
					class="links_name">Messages</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-heart'></i> <span
					class="links_name">Favorites</span>
			</a></li>
			<li><a href="#"> <i class='bx bx-cog'></i> <span
					class="links_name">Setting</span>
			</a></li>
			<li class="log_out"><a href="#"> <i class='bx bx-log-out'></i>
					<span class="links_name" href="Homepage.jsp">Log out</span>
			</a></li>
		</ul>
	</div>
	<section class="home-section"> <nav>
	<div class="sidebar-button">
		<i class='bx bx-menu sidebarBtn'></i> <span class="dashboard">Dashboard</span>
	</div>
	<div class="search-box">
		<input type="text" placeholder="Search..."> <i
			class='bx bx-search'></i>
	</div>
	<div class="profile-details">
		<!--<img src="images/profile.jpg" alt="">-->
		<span class="admin_name">Admin name</span> <i
			class='bx bx-chevron-down'></i>
	</div>
	</nav>

	<div class="home-content">
		<div class="overview-boxes">
			<div class="box">
				<div class="right-side">
					<div class="box-topic">Total Order</div>
					<div class="number">40,876</div>
					<div class="indicator">
						<i class='bx bx-up-arrow-alt'></i> <span class="text">Up
							from yesterday</span>
					</div>
				</div>
				<i class='bx bx-cart-alt cart'></i>
			</div>
			<div class="box">
				<div class="right-side">
					<div class="box-topic">Total Sales</div>
					<div class="number">38,876</div>
					<div class="indicator">
						<i class='bx bx-up-arrow-alt'></i> <span class="text">Up
							from yesterday</span>
					</div>
				</div>
				<i class='bx bxs-cart-add cart two'></i>
			</div>
			<div class="box">
				<div class="right-side">
					<div class="box-topic">Total Profit</div>
					<div class="number">$12,876</div>
					<div class="indicator">
						<i class='bx bx-up-arrow-alt'></i> <span class="text">Up
							from yesterday</span>
					</div>
				</div>
				<i class='bx bx-cart cart three'></i>
			</div>
			<div class="box">
				<div class="right-side">
					<div class="box-topic">Total Return</div>
					<div class="number">11,086</div>
					<div class="indicator">
						<i class='bx bx-down-arrow-alt down'></i> <span class="text">Down
							From Today</span>
					</div>
				</div>
				<i class='bx bxs-cart-download cart four'></i>
			</div>
		</div>


		<div class="sales-boxes" onload="javascript:hideTable()">
			<div class="recent-sales box">
				<div class="title">Service Provider</div>
				<button type="button" class="btn btn-default"
					onClick='javascript:showTable1();'>Employees</button>
				<button type="button" class="btn btn-success"
					onClick='javascript:showTable();'>New Request</button>

				<div class="sales-details">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Eid-</th>
								<th>Employee Name</th>
								<th>Egender</th>
								<th>Elocation</th>
								<th>No: of employees</th>
								<th>Eemail</th>
								<th>Epassword</th>
								<th>Ephone</th>
								<th>Service provided</th>
								<th>Payment</th>
								<th>Customer Rating</th>
								<th>Status</th>
							</tr>
						</thead>
						
						<tbody id="old employee">
						
						
						<tr>
<td>1</td>
<td>2</td>
<td>3</td>
<td>4</td>
<td>4</td>
<td>4</td>
<td>4</td>
<td>4</td>
<td>4</td>
<td>t</td>
<td>customer rating</td>
<td><button type="button" class="btn btn-default"
					onClick='javascript:showTable1();'>Employees</button>
				<button type="button" class="btn btn-success"
					onClick='javascript:showTable();'>Delete</button></td>
</tr>
						</tbody>
						<tbody id="new employee">
						<tr>
<td>1</td>
<td>2</td>
<td>3</td>
<td>4</td>
<td>5</td>
<td>6</td>
<td>7</td>
<td>8</td>
<td>9</td>
<td>10</td>
<td>Customer rating</td>
<td><button type="button" class="btn btn-default"
					onClick='javascript:showTable1();'>Accept</button>
				<button type="button" class="btn btn-success"
					onClick='javascript:showTable();'>Reject</button></td>
</tr>
						</tbody>
					</table>
				</div>
				<!--  <div class="button">
            <a href="#">See All</a>
          </div>
        -->
			</div>
		</div>
		<br>
	<br>
	<!--============== Client table  ===============-->
<div class="sales-boxes" onload="javascript:hideTable()">
			<div class="recent-sales box">
				<div class="title">Clients</div>
				<button type="button" class="btn btn-default"
					onClick='javascript:showTable1();'>Active Clients</button>
				<button type="button" class="btn btn-success"
					onClick='javascript:showTable();'>Finished Clients</button>
				<div class="sales-details">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Eid-</th>
								<th>Employee Name</th>
								<th>Egender</th>
								<th>Elocation</th>
								<th>No: of employees</th>
								<th>Eemail</th>
								<th>Epassword</th>
								<th>Ephone</th>
								<th>Service provided</th>
								<th>Payment</th>
								<th>Customer Rating</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody id="old employee">
						<tr>
<td>2</td>
<td>3</td>
<td>4</td>
<td>4</td>
<td>4</td>
<td>4</td>
<td>4</td>
<td>4</td>
<td>4</td>
</tr>
						</tbody>
						<tbody id="new employee">
						<tr>
<td>1</td>
<td>2</td>
<td>3</td>
<td>4</td>
<td>5</td>
<td>6</td>
<td>7</td>
<td>8</td>
<td>9</td>
<td>10</td>
</tr>
						</tbody>
					</table>
				</div>
				<!--  <div class="button">
            <a href="#">See All</a>
          </div>
        -->
			</div>
		</div>
		
		
	</div>

	</section>

<!-- ==========jscript========== -->
	<script>
		function showTable1() {
			document.getElementById('old employee').style.visibility = "visible";
			document.getElementById('new employee').style.visibility = "hidden";
		}
		function showTable() {
			document.getElementById('new employee').style.visibility = "visible";
			document.getElementById('old employee').style.visibility = "hidden";
		}
		function hideTable() {
			document.getElementById('old employee').style.visibility = "hidden";
		}

		let sidebar = document.querySelector(".sidebar");
		let sidebarBtn = document.querySelector(".sidebarBtn");
		sidebarBtn.onclick = function() {
			sidebar.classList.toggle("active");
			if (sidebar.classList.contains("active")) {
				sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
			} else
				sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
		}
	</script>

</body>
</html>

