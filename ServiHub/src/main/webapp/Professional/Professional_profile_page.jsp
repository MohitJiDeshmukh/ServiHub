
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<style>
#navbar1 {
	margin-left: 120px;
	border: 1px solid black;
}

#navbar2 {
	margin-left: 30px;
}

#li1 {
	list-style: none;
}

#navbar12 {
	width: 100%;
	margin-left: 2px;
}

#featured-services {
	margin-left: 20px;
}

.featured-services .icon-box {
	padding: 30px;
	position: relative;
	overflow: hidden;
	background: #fff;
	box-shadow: 0 0 29px 0 rgba(68, 88, 144, 0.12);
	transition: all 0.3s ease-in-out;
	border-radius: 8px;
	z-index: 1;
	text-align: center;
}

.mai-btn5 {
	text-decoration: none;
	color: white;
	background-color: #0099da;
	padding: 5px;
}

.featured-services .icon-box::before {
	content: '';
	position: absolute;
	background: #d9f1f2;
	right: 0;
	left: 0;
	bottom: 0;
	top: 100%;
	transition: all 0.3s;
	z-index: -1;
}

.featured-services .icon-box:hover::before {
	background: rgb(255, 202, 8);
	top: 0;
	border-radius: 0px;
}

.featured-services .icon {
	margin-bottom: 15px;
	margin-left: 20px;
}

.featured-services .icon i {
	font-size: 48px;
	line-height: 1;
	color: #1977cc;
	transition: all 0.3s ease-in-out;
}

.featured-services .title {
	font-weight: 700;
	margin-bottom: 15px;
	font-size: 18px;
}

.featured-services .title a {
	text-decoration: none;
	color: #111;
}

.featured-services .description {
	font-size: 15px;
	line-height: 28px;
	margin-bottom: 0;
}

.featured-services .icon-box:hover .title a, .featured-services .icon-box:hover .description
	{
	color: #fff;
}

.featured-services .icon-box:hover .icon i {
	color: #fff;
}

#col1 h5 {
	margin-top: -40px !important;
}

#img1 {
	width: 80px;
	height: 80px;
	margin-top: 10px;
}

#con1 {
	margin-left: 140px;
}

.logo {
	width: 80px;
	margin: auto;
}

.logo img {
	width: 150%;
	height: 120px;
	object-fit: cover;
	border-radius: 50%;
	box-shadow: 0px 0px 3px #5f5f5f, 0px 0px 0px 5px #ecf0f3, 8px 8px 15px
		#a7aaa7, -8px -8px 15px #fff;
}

#btn1 {
	margin-left: 20px;
	margin-bottom: 10px;;
	height: 60px;
	width: 190px;
	border-radius: 10px;
	font-size: 20px;
	font-weight: bold;
}

#pro {
	height: 490px;
	border-radius: 3%;
	width: 70%;
}

@media screen and(min-width:360px) and (max-widht:570) {
	#img1 {
		width: 40px;
		height: 40px;
		margin-top: 10px;
	}
}
</style>
</head>

<body>
	<nav id="navbar12" class="navbar navbar-expand-lg navbar-light"
		style="background-color: white; border: 1px solid gainsboro">
		<div class="container-fluid ">
			<a class="navbar-brand " href="#"> <img
				src="/ServiHub/assets/images/Servi_Hub_logo.png" alt="" width="170"
				height="50">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon bg-light"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ">



					<li class="nav-item"><a class="nav-link active" id="navbar2"
						aria-current="page" href="Professional_profile_page.jsp">Home</a></li>

					<li class="nav-item"><a class="nav-link active" id="navbar2"
						aria-current="page" href="AllBookings.jsp">Booking</a></li>
					<li class="nav-item"><a class="nav-link active" id="navbar2"
						aria-current="page" href="CompletedWork.jsp">Completed Work</a></li>
					<li class="nav-item"><a class="nav-link active" id="navbar2"
						aria-current="page" href="History.jsp">History</a></li>

				</ul>
				<form class="d-flex">
					<div>
						<a href="/ServiHub" class="btn btn-warning me-5"
							style="border-radius: 10px; width: 140px; font-weight: bold;">
							Logout </a>
					</div>
				</form>


			</div>
		</div>

	</nav>


	<div class="container mt-4"
		style="background: whitesmoke; height: 540px">

		<div class="container  shadow-lg" id="pro" style="margin-top: 20px;">
			<div class="logo" style="margin-top: 20px;">
				<img
					src="https://png.pngtree.com/png-vector/20231019/ourmid/pngtree-user-profile-avatar-png-image_10211467.png"
					alt="">
			</div>
			<br>
			<div class="form-row">
				<div class="form-group col-md-10 ms-5">
					<input type="text" class="form-control form-control-sm"
						value="<%=session.getAttribute("userId")%>" readonly>
				</div>
				<br>
				<div class="form-group col-md-10 ms-5">
					<input type="text" class="form-control form-control-sm"
						value="<%=session.getAttribute("userName")%>" readonly>
				</div>
				<br>
				<div class="form-group col-md-10 ms-5">
					<input type="text" class="form-control form-control-sm"
						value="<%=session.getAttribute("userEmail")%>" readonly>
				</div>
				<br>
				<div class="form-group col-md-10 ms-5">
					<input type="text" class="form-control form-control-sm"
						value="<%=session.getAttribute("userAddress")%>" readonly>
				</div>
				<br>
				<div class="form-group col-md-10 ms-5">
					<input type="text" class="form-control form-control-sm"
						value="<%=session.getAttribute("userContact")%>" readonly>
				</div>
				<br>
				<button class="btn btn-warning ms-5 mb-3">
					<a href="/ServiHub/AllUser/AllUserAuditDetails.jsp"
						style="text-decoration: none; color: white;">Edit</a>
				</button>
			</div>
		</div>
	</div>


	<!--    <div class="text-center">
      <a href="EditJobs.jsp" class="btn btn-sm bg-success text-white">Edit</a>
      <button id="btn1" class="btn btn-warning mt-4 me-5 shadow-lg" >Update Profile</button>
      <button id="btn1" class="btn btn-warning mt-4 me-5 shadow-lg" >Block</button>
      <button id="btn1" class="btn btn-warning mt-4 me-5 shadow-lg">Delete</button>
  </div>-->
	</div>


	</div>
	<footer class="text-center text-lg-start bg-light text-muted">
		<!-- Section: Social media -->


		<!-- Section: Links  -->
		<section class="" id="ABOUT_US">
			<div class="container text-center text-md-start mt-5">
				<!-- Grid row -->
				<div class="row mt-3">
					<!-- Grid column -->
					<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
						<!-- Content -->
						<h6 class="text-uppercase fw-bold mb-4">
							<i class="fas fa-gem me-3"></i>Home Service Provider
						</h6>
						<p>connects you to experts around you for Home Maintenance and
							Repairs, Utility, Lifestyle, Health, Beauty, Travel, and other
							local services, and also brings Local Shopping, Deals, and Events
							to you, right where you are, through an easy to use platform.
							Schedule services as per your convenience, pay online or by cash,
							get warranty on services, and avail cashbacks and discounts
							through our rewards program. Uncomplicate Life!</p>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
						<!-- Links -->
						<h6 class="text-uppercase fw-bold mb-4">SERVICES</h6>
						<p>
							<a href="/ServiHub/Service/Electrician_Booking_Page.jsp"
								class="text-reset">Electrician</a>
						</p>
						<p>
							<a href="/ServiHub/Service/Plumber_Booking_Page.jsp"
								class="text-reset">Plumber</a>
						</p>
						<p>
							<a href="/ServiHub/Service/Pest_Control_Booking_Page.jsp"
								class="text-reset">Pest Control</a>
						</p>
						<p>
							<a href="/ServiHub/Service/Painter_Booking_Page.jsp"
								class="text-reset">Painter</a>
						</p>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
						<!-- Links -->
						<h6 class="text-uppercase fw-bold mb-4">Useful links</h6>
						<p>
							<a href="#!" class="text-reset">Terms & Condition </a>
						</p>
						<p>
							<a href="#!" class="text-reset">Privacy Policy</a>
						</p>
						<p>
							<a href="#!" class="text-reset">Cancellation Policy</a>
						</p>
						<p>
							<a href="#!" class="text-reset">FAQ</a>
						</p>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div id="Contact_US"
						class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
						<!-- Links -->
						<h6 class="text-uppercase fw-bold mb-4">Contact</h6>
						<p>
							<i class="fas fa-home me-3"></i> Indore,India
						</p>
						<p>
							<i class="fas fa-envelope me-3"></i> homeservice@example.com
						</p>
						<p>
							<i class="fas fa-phone me-3"></i> +91 234 567 88
						</p>
						<p>
							<i class="fas fa-print me-3"></i> +91 234 567 89
						</p>
					</div>
					<!-- Grid column -->
				</div>
				<!-- Grid row -->
			</div>
		</section>
		<section
			class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
			<!-- Left -->
			<div class="me-5 d-none d-lg-block">
				<span>Get connected with us on social networks:</span>
			</div>
			<!-- Left -->

			<!-- Right -->
			<div>
				<a href="" class="me-4 text-reset"> <i class="fab fa-facebook-f"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-twitter"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-google"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-instagram"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-linkedin"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-github"></i>
				</a>
			</div>
			<!-- Right -->
		</section>
		<!-- Section: Social media -->
		<!-- Section: Links  -->

		<!-- Copyright -->
		<div class="text-center p-4"
			style="background-color: rgba(0, 0, 0, 0.05);">� 2021
			Copyright:</div>
		<!-- Copyright -->
	</footer>
	<!-- Footer -->

</body>
</html>


