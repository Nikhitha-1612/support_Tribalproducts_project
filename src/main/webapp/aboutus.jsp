<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.klu.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
	request.setAttribute("auth", auth);
}%>
<%@include file="includes/head.jsp"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Inconsolata" />
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	font-size: 20px;
	text-decoration: none;
}

li a:hover {
	background-color: #111;
}
</style>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous" />
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<style>
.col {
	padding-top: 8%;
	padding-bottom: 5%;
	padding-right: 2%;
	padding-left: 2%;
}

.footer {
	background-color: black;
	padding-top: 90px;
	padding-bottom: 90px;
	padding-left: 45%;
	padding-right: 40%;
	position: relative;
	align-items: center;
}

.footer a {
	color: white;
	font-size: 100%;
}

.footer p {
	color: white;
}

.foot {
	padding-top: 7%;
}
</style>
</head>
<body>
    <%@include file="includes/Nav.jsp"%>
   <%@include file="includes/footer.jsp"%>
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
				<img src="image/tribal3.jpeg" class="d-block w-100" alt="..." />
				<div class="carousel-caption d-none d-md-block">
					<h5>SUSTAINABLE, FAIR TRADE HOMEGOODS FROM THE HEART</h5>

				</div>
			</div>
			<div class="carousel-item">
				<img src="image/tribal6.jpg" class="d-block w-100" alt="..." />
				<div class="carousel-caption d-none d-md-block">
					<h5>Hand Made pots from village</h5>
				</div>
			</div>
			<div class="carousel-item">
				<img src="image/tribal5.jpg" class="d-block w-100" alt="..." />
				<div class="carousel-caption d-none d-md-block">
					<h5>Support hand made crafts from their bottom of heart</h5>
				</div>
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
	</div>

	<!-- Add a background color and large text to the whole page -->
	<div class="w3-sand w3-grayscale w3-large">

		<!-- About Container -->
		<div class="w3-container" id="about">
			<div class="w3-content" style="max-width: 700px">
				<h5 class="w3-center w3-padding-64">
					<span class="w3-tag w3-wide">Our Story</span>
				</h5>
				<p>Tribalgo is a website where we want to support tribal people
					. We have step up to create a interface between them and customers
					. To support their hand made crafts and many more . To support
					their livelihood and prompt their handcrafts and goods .</p>
				<p>While the business has grown and evolved over the years, our
					mission remains the same of empowering rural artisan from India, by
					providing them a platform to showcase their craftsmanship to a
					discerning global audience. From marble handicrafts to hand woven
					area rugs to brass and metal décor accents to bone inlay furniture,
					all products are sourced from grassroot artisans while paying them
					fair trade wages and lending support to their communities for girl
					child education and general health care for all .</p>
				<p>We would love to hear from you about our products and
					suggestion on how we can improve ourselves. Please reach out to us
					here.</p>
				<p>
					<br /> <br />
				</p>
			</div>
		</div>
	</div>
	<div class="row row-cols-1 row-cols-md-3 g-4">
		<div class="col">
			<div class="card">
				<img src="image/horzi12.jpg" class="card-img-top" alt="..." />
				<div class="card-body">
					<h5 class="card-title">Fair Trade</h5>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card">
				<img src="image/horiz2.jpg" class="card-img-top" alt="..." />
				<div class="card-body">
					<h5 class="card-title">Products are made by Natural Materials</h5>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card">
				<img src="image/handi1.jpg" class="card-img-top" alt="..." />
				<div class="card-body">
					<h5 class="card-title">Eco-friendly Products</h5>
				</div>
			</div>
		</div>
	</div>

	<div class="w3-row w3-padding-64" id="about">
		<div class="w3-col m6 w3-padding-large w3-hide-small">
			<img src="image/support.jpg" class="w3-round w3-image w3-opacity-min"
				alt="Table Setting" width="600" height="750" />
		</div>

		<div class="w3-col m6 w3-padding-large">
			<h1 class="w3-center">HandCrafts</h1>
			<br>
			<h5 class="w3-center">Support by buying these hand made and
				eco-friendly products</h5>
			<h5 class="w3-center">HANDCRAFTED WITH LOVE IN INDIA</h5>
			<p class="w3-large">TribalGo® offers a unique selection of
				modern, sustainable and elegant eco-friendly products made by expert
				artisans from different regions of the India.</p>
			<p class="w3-large">All orders are shipped super-fast from our
				warehouse in india . We buy products directly from the
				tribals.Proficient artisans create assets from basic articles solely
				by their hands .</p>
			<h4>Show some support and let us help them to earn their
				livelihood</h4>
			</br>
		</div>
	</div>

	<link rel="stylesheet" href="/w3css/3/w3.css" />
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" />
	<div class="foot">
		<div class="footer">
			<footer
				class="w3-container w3-padding-64 w3-center w3-black w3-xlarge">
				<a href="#"><i class="fa fa-facebook-official"></i></a> <a href="#"><i
					class="fa fa-pinterest-p"></i></a> <a href="#"><i
					class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-flickr"></i></a>
				<a href="#"><i class="fa fa-linkedin"></i></a>
				<p class="w3-medium">
					Powered by <a href="https://tribals.com/" target="_blank">tribals.com</a>
				</p>
			</footer>
		</div>
</body>
</html>