
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>UserHomePage</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>
<style>
* {
	margin: 0px;
	padding: 0px;
	text-decoration: none;
	list-style-type: none;
	box-sizing: border-box;
}

body {
	font-family: 'Josefin Sans', sans-serif;
}

nav {
	background: rgba(255, 255, 255, 0.197);
	display: flex;
	align-items: center;
	justify-content: space-between;
	height: 50px;
	width: 100%;
	
}

label.logo {
	color: rgb(21, 47, 47);
	font-size: 35px;
	font-weight: bold;
	line-height: 55px;
	padding: 0 100px;
}

span {
	color: rgb(255, 0, 0);
}

nav ul {
	float: right;
    margin-right: 20px;
    display: flex; /* Add flex display */
    align-items: center; /* Center vertically */
}

nav ul li {
	display: inline-block;
	line-height: 55px;
	padding: 10px 20px;
	
}

nav ul li a {
	 color: black;
    font-weight: bold;
    text-decoration: none; /* Remove default underline */
    display: flex;
    align-items: center; /* Center vertically */
}

nav ul li a:hover {
	color: red;
	transition: .3s;
}

button {
	border: none;
	background: #ffc107;
	padding: 12px 30px;
	border-radius: 20px;
	color: #000;
	font-weight: bold;
	font-size: 15px;
	margin: 25px;
	transition: .4s;
}

button:hover {
	transform: scale(1.3);
	cursor: pointer;
}

section img {
	height: 100vh;
	width: 100%;
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	height: calc(100vh - 80px);
}

#navbar1 {
	margin-left: 120px;
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

#col2 {
	height: 220px;
	width: 160px;
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

#col1 h5 {
	margin-top: -40px !important;
}

#img1 {
	width: 80px;
	height: 80px;
	margin-top: 10px;
}

#con1 {
	margin-left: 20px;
}
#con1 .row .col {
    flex: 0 0 25%; /* Ensure each column takes 25% of the container width */
    max-width: 25%; /* Set maximum width for each column */
    padding: 0 15px; /* Add some padding to each column */
}

#con1 .row img {
    width: 100%; /* Make sure images fill their parent containers */
    height: auto; /* Preserve aspect ratio */
}


#btn3 {
	height: 60px;
	width: 67%;
	border-radius: 10px;
	margin-top: 13px;
	display: flex;
	position: relative;
	float: right;
}

#p3 {
	position: absolute;
	margin-left: 38px;
	margin-top: 18px;
	font-weight: 700;
}

#row1 {

	border: 3px solid yellow;
	width: 80%;
}

.carousel-item .img-fluid {
	width: 100%;
	height: 700px;
}

@media screen and (min-width:360px) {
	#con3 {
		width: 100%;
		align-items: center;
	}
	.featured-services .icon-box {
		/* display: block; */
		margin-left: 60px;
	}
}
</style>

<body>



	<nav>
		<label class="logo">Servi<span> HUB</span></label>
		<ul>			<li><a href="Homepage.jsp">HOME</a></li>			<li><a href="#SERVICES">SERVICES</a></li>			<li><a href="#ABOUT_US">ABOUT US</a></li>			<li><a href="#Contact_US">CONTACT US</a></li>
		</ul><li class="nav-item">
            
          </li><button type="button" class="submit-button" onclick="window.location.href='/ServiHub/User/LoginUser.jsp'">Log In</button>
</nav>






	<div id="carouselExampleCaptions" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="img-fluid w-100 d-block"
					src="https://breakingmedia.co.uk/wp-content/uploads/2020/09/on-demand-home-services-main.jpg"
					alt="...">
			
			</div>
			<div class="carousel-item">
				<img class="img-fluid w-100 d-block"
					src="https://www.houzexpert.com/app_files/blog_images/232631.jpg"
					alt="...">
				
			</div>
			<div class="carousel-item">
				<img class="img-fluid w-100 d-block"
					src="https://images.unsplash.com/photo-1511822148790-e7b58ba14c72?q=80&w=2027&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
					alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<section id="featured-services" class="featured-services">
		<div id="con3" class="container ">

			<div class="row sm-5">
				<div class="col-sm-12 text-center mb-5 mt-4">
					<h3 class="text-black fs-1 " id="SERVICES">OUR SERVICES</h3>
				</div>
				<div
					class="col-md-6 col-lg-3 d-flex align-items-stretch  mb-5 mb-lg-0"
					id="css">
					<div class="icon-box" id="col2">
						<div class="icon">
							<img src="/ServiHub/assets/images/Electric2.jpg"
								style="width: 100%; height: 80px;" alt="">
						</div>
						<h4 class="title">
							<a> ELECTRICIAN</a>
						</h4>

						<a
							href="${pageContext.request.contextPath}/Service/Electrician_Booking_Page.jsp"
							class="btn btn-warning ms-2">BOOK</a>


					</div>
				</div>


				<div
					class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
					<div class="icon-box" id="col2">
						<div class="icon">
							<img src="/ServiHub/assets/images/plumber1.jpg"
								style="width: 100%; height: 80px;" alt="">
						</div>
						<h4 class="title">
							<a> PLUMBER</a>
						</h4>
						<a
							href="${pageContext.request.contextPath}/Service/Plumber_Booking_Page.jsp"
							class="btn btn-warning ms-2">BOOK</a>
					</div>
				</div>

				<div
					class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
					<div class="icon-box" id="col2">
						<div class="icon">
							<img
								src="https://joboyindia.s3.amazonaws.com/jobservice/ac-service-in-bangalore.png"
								style="width: 100%; height: 80px;" alt="">
						</div>
						<h4 class="title">
							<a> AC REPAIR</a>
						</h4>

						<a
							href="${pageContext.request.contextPath}/Service/Ac_Repair_Booking_Page.jsp"
							class="btn btn-warning ms-2">BOOK</a>
					</div>
				</div>

				<div
					class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
					<div class="icon-box" id="col2">
						<div class="icon">
							<img
								src="https://joboyindia.s3.amazonaws.com/jobservice/carpenter-in-bangalore.png"
								style="width: 100%; height: 80px;" alt="">
						</div>
						<h4 class="title">
							<a>CARPENTER</a>
						</h4>

						<a
							href="${pageContext.request.contextPath}/Service/Carpenter_Booking_Page.jsp"
							class="btn btn-warning ms-2">BOOK</a>
					</div>
				</div>


				<div class="row">
					<div class="col-sm-12 text-center mb-5 mt-4"></div>
					<div
						class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
						<div class="icon-box" id="col2">
							<div class="icon">
								<img
									src="https://joboyindia.s3.amazonaws.com/jobservice/painter-in-bangalore.png"
									style="width: 100%; height: 80px;" alt="">
							</div>
							<h4 class="title">
								<a>PAINTER</a>
							</h4>
							<a
								href="${pageContext.request.contextPath}/Service/Painter_Booking_Page.jsp"
								class="btn btn-warning ms-2">BOOK</a>

						</div>
					</div>

					<div
						class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 ms-2 mb-lg-0">
						<div class="icon-box" id="col2">
							<div class="icon mb-0">
								<img
									src="https://joboyindia.s3.amazonaws.com/jobservice/pest-control-in-trivandrum.png"
									style="width: 85%; height: 80px; margin-top: -6px;" alt="">
							</div>
							<h4 class="title">
								<a>PEST CONTROL</a>
							</h4>
							<a
								href="${pageContext.request.contextPath}/Service/Pest_Control_Booking_Page.jsp"
								class="btn btn-warning ms-2">BOOK</a>

						</div>
					</div>

					<div
						class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 ms-1 mb-lg-0">
						<div class="icon-box" id="col2">
							<div class="icon mb-0">
								<img
									src="https://joboyindia.s3.amazonaws.com/jobservice/Water-Purifier.png"
									style="width: 100%; height: 80px; margin-top: -6px;" alt="">
							</div>
							<h4 class="title">
								<a>WATER PURIFIER</a>
							</h4>

							<a
								href="${pageContext.request.contextPath}/Service/Water_Purifier_Booking_Page.jsp"
								class="btn btn-warning ms-2">BOOK</a>
						</div>
					</div>


				</div>

			</div>
	</section>
	<div class="container mt-5" id="con1">
    <div class="row">
        <h2>TOP SERVICES</h2>
    </div>
    <div class="row">
        <div class="col">
            <img src="https://joboyindia.s3.amazonaws.com/jobservice/Electrician-Service-Near-Me-300300.png" alt="">
        </div>
        <div class="col">
            <img src="https://joboyindia.s3.amazonaws.com/jobservice/plumber2.jpg" alt="">
        </div>
        <div class="col">
            <img src="https://joboyindia.s3.amazonaws.com/jobservice/plumbing.png" alt="">
        </div>
        <div class="col">
            <img src="https://joboyindia.s3.amazonaws.com/jobservice/Home-cleaning-service-near-me.jpg" alt="">
        </div>
    </div>
</div>

		<div id="row1" class="row p-4 m-4">
			<div class="col">
				<h2 style="font-weight: 700; color: rgb(44, 48, 56);">ARE YOU A
					SERVICE EXPERT?</h2>
				<p>JOIN WORLDS LARGEST SERVICE NETWORK</p>

			</div>
			<div class="col">
				<div id="btn3" class="btn-dark text-warning">
					<a style="color: #FFC107;" href="/ServiHub/User/Register.jsp">
						<p id="p3">REGISTER AS A PARTNER</p>
					</a>
				</div>
			</div>

		</div>


	</div>
	<div class="main mt-5 border border-dark">
		<div class="container ">
			<div class="row row-cols-lg-2 row-cols-md-2 row-cols-sm-1 row-cols-1">
				<div class="col mt-5 p-5">
					<div class="col" id="col1">

						<img
							src="https://d27vg8jo26ejl7.cloudfront.net/images/partner_registration/Increase-Your-Earnings.png"
							alt="">


						<h5 class="fw-bold ms-5">INCREASE YOUR EARNINGS</h5>
						<p class="ms-5">You do more than your usual jobs, and earn
							more. No more bargaining with your customers!</p>


					</div>
					<div class="col" id="col1">
						<img
							src="https://d27vg8jo26ejl7.cloudfront.net/images/partner_registration/Improve-Productivity.png"
							alt="">
						<h5 class="fw-bold ms-5">IMPROVE PRODUCTIVITY</h5>
						<p class="ms-5">You get jobs near to your location, travel
							less, thereby saving time and money. You get more jobs too!</p>
					</div>
					<div class="col" id="col1">
						<img
							src="https://d27vg8jo26ejl7.cloudfront.net/images/partner_registration/Large-Customer-Base.png"
							alt="">
						<h5 class="fw-bold ms-5">LARGE CUSTOMER BASE</h5>
						<p class="ms-5">With us, you are visible to a much larger
							customer base, without any marketing costs. We do your marketing
							for you!</p>
					</div>
				</div>
				<div class="col">
					<img class="img-fluid"
						src="https://d27vg8jo26ejl7.cloudfront.net/images/partner_registration/ru-service-provider.png"
						alt="">
				</div>
			</div>
		</div>
	</div>
	<div class="container mt-5">
		<h2>WHY HOME SERVICE PROVIDER?</h2>
		<br>

		<div
			class="row row-cols-lg-5 row-cols-md-2 row-cols-sm-2 row-cols-1 ms-5">

			<div class="col">
				<img id="img1" class="img-fluid ms-4 "
					src="https://d27vg8jo26ejl7.cloudfront.net/images/why_joboy/On-Demand-Scheduled.webp"
					alt="">
				<p class="p-1 mt-2">ON DEMAND / SCHEDULED</p>
			</div>
			<div class="col">
				<img id="img1" class="img-fluid ms-4 "
					src="https://d27vg8jo26ejl7.cloudfront.net/images/why_joboy/Verified-Partners.webp"
					alt="">
				<p class="p-1 mt-2">VERIFIED PARTNERS</p>
			</div>
			<div class="col">
				<img id="img1" class="img-fluid ms-4 "
					src="https://d27vg8jo26ejl7.cloudfront.net/images/why_joboy/Service-Warranty.webp"
					alt="">
				<p class="p-1 mt-2">SERVICE WARRANTY</p>
			</div>
			<div class="col">
				<img id="img1" class="img-fluid ms-4 "
					src="https://d27vg8jo26ejl7.cloudfront.net/images/why_joboy/Transparent-Pricing.webp"
					alt="">
				<p class="p-1 mt-2">TRANSPARENT PRICING</p>
			</div>
			<div class="col">
				<img id="img1" class="img-fluid ms-4 "
					src="https://d27vg8jo26ejl7.cloudfront.net/images/why_joboy/Online-Payments.webp"
					alt="">
				<p class="p-1 mt-2">ONLINE PAYMENTS</p>
			</div>


		</div>

	</div>
	<!-- Footer -->
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
							<a href="#!" class="text-reset">Electrician</a>
						</p>
						<p>
							<a href="#!" class="text-reset">Plumber</a>
						</p>
						<p>
							<a href="#!" class="text-reset">Pest Control</a>
						</p>
						<p>
							<a href="UserProfile.jsp" class="text-reset">Painter</a>
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
				</a> <a href="" class="me-4 text-reset">r <i class="fab fa-github"></i>
				</a>
			</div>
			<!-- Right -->
		</section>
		<!-- Section: Social media -->
		<!-- Section: Links  -->

		<!-- Copyright -->
		<div class="text-center p-4"
			style="background-color: rgba(0, 0, 0, 0.05);">&copy; 2024
			Copyright:</div>
		<!-- Copyright -->
	</footer>
	<!-- Footer -->

	<!-- Footer -->
	



	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>

</body>
</html>
