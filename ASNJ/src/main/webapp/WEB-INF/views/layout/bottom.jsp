<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>μμΈλμ‘</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="resources/image/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Open+Sans:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="resources/lib/animate/animate.min.css" rel="stylesheet">
<link href="resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/css/style.css" rel="stylesheet">
</head>

<body>

	<!-- Footer Start -->
	<div class="container-fluid bg-primary text-white footer mt-3 wow fadeIn"
		data-wow-delay="0.1s" style="background-color: #6b9f0f !important;">
		<div class="container py-5 px-lg-5">
			<div class="row gy-5 gx-4">
				<!-- <div class="col-12">
					<h5 class="fw-bold text-white mb-4">Subscribe Our Newsletter</h5>
					<div class="position-relative" style="max-width: 400px;">
						<input class="form-control bg-white border-0 w-100 py-3 ps-4 pe-5"
							type="text" placeholder="Enter your email">
						<button type="button"
							class="btn btn-primary py-2 px-3 position-absolute top-0 end-0 mt-2 me-2">Submit</button>
					</div>
				</div> -->
				<div class="col-lg-3 col-md-2">
					<a href="index.jsp"> 
						<img alt="" src="resources/image/nong.png"
						style="float: left; width: 70px; height: 90px;">&nbsp;&nbsp;&nbsp;
						<h1 class="text-white mb-4"	style="font-style: italic; display: inline-block;">
							μμΈ<br>λμ‘
						</h1> <!-- <h1 class="text-white mb-4" style="font-style: italic;">λμ‘</h1>	 -->
					</a>
				</div>
				<div class="col-lg-4 col-md-3">
					<div class="row gy-5 g-4">
						<div class="col-md-8">
							<h5 class="fw-bold text-white mb-4">About Us</h5>
							<a class="btn btn-link" href="${cpath}/Introduce.do">μ¬μ΄νΈμκ°</a> 
							<a class="btn btn-link" href="${cpath}/Notice.do?num=1">κ³΅μ§μ¬ν­</a> 
							<a class="btn btn-link" href="#phone">μ°λ½μ²</a> 
							<a class="btn btn-link" href="${cpath}/Notice.do?num=1">κ΄κ³ λ¬Έμ</a>
						</div>
					</div>
				</div>
				<div class="col-lg-5 col-md-5">
					<h5 class="fw-bold text-white mb-4">Team Introduction</h5>
					<p class="mb-2">
						<i class="fa fa-map-marker-alt me-3"></i>μμ¬μ§ : μ λΌλ¨λ μμ²μ μνλ 87 5μΈ΅,
						μ€λ§νΈμΈμ¬κ°λ°μ μμ²μ 
					</p>
					<p class="mb-2" id="phone">
						<i class="fa fa-phone-alt me-3"></i>TEL&nbsp;: 061-754-3501
					</p>
					<p class="mb-2">
						<i class="fa fa-users me-3"></i>νμ :
						&nbsp;(νμ₯)μ‘μμ§,&nbsp;(νμ)κΉλμ°,&nbsp;κΉλν,&nbsp;λ°μΉν
					</p>
					<div class="d-flex pt-2">
						<a class="btn btn-outline-light btn-social" href=""> 
							<i class="fab fa-twitter"></i>
						</a> <a class="btn btn-outline-light btn-social" href=""> 
							<i class="fab fa-facebook-f"></i>
						</a> <a class="btn btn-outline-light btn-social" href=""> 
							<i class="fab fa-youtube"></i>
						</a> <a class="btn btn-outline-light btn-social" href=""> 
							<i class="fab fa-linkedin-in"></i>
						</a>
					</div>
				</div>
				<!-- <div class="col-md-6 col-lg-4 mt-lg-n5">
					<div class="bg-light rounded" style="padding: 30px;">
						<input type="text" class="form-control border-0 py-2 mb-2"
							placeholder="Name"> <input type="email"
							class="form-control border-0 py-2 mb-2" placeholder="Email">
						<textarea class="form-control border-0 mb-2" rows="2"
							placeholder="Message"></textarea>
						<button class="btn btn-primary w-100 py-2">Send Message</button>
					</div>
				</div> -->
			</div>
		</div>
		<div class="container px-lg-5">
			<div class="copyright">
				<div class="row">
					<div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
						&copy; <a class="border-bottom" href="index.jsp">Alsseulnongjob</a>,
						a useful knowledge of farming...
					</div>
					<div class="container col-md-6 text-center text-md-center">
						<div class="footer-menu row">
							<a class="col-sm-2" href="#">νμ¬μκ°</a> 
							<a class="col-sm-3" href="#">μλΉμ€ κ°μ΄λ</a> 
							<a class="col-sm-3" href="#" style="font-weight: bolder;">κ°μΈμ λ³΄λ³΄νΈμ μ±</a>
							<a class="col-sm-2" href="#">μ΄μ©μ½κ΄</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->

	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-secondary btn-lg-square back-to-top"><i
		class="bi bi-arrow-up"></i></a>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- <script src="resources/lib/wow/wow.min.js"></script> -->
	<script src="resources/lib/easing/easing.min.js"></script>
	<script src="resources/lib/waypoints/waypoints.min.js"></script>
	<script src="resources/lib/counterup/counterup.min.js"></script>
	<script src="resources/lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="resources/js/main.js"></script>
</body>
</html>