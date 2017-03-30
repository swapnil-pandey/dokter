<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%

    String time = request.getParameter("time");
    String date = request.getParameter("date");
    // DEBUG - NULL VALUE PRINTED. ERROR.
    System.out.println("Testrec.jsp"+time+"  "+date);

%>
		<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<html>

			<head>
							<meta charset="utf-8">
	<!-- Always force latest IE rendering engine or request Chrome Frame -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<!-- Page Title -->
	<title>Dokter</title>
	<!-- Meta Description -->
	<meta name="description" content="Blue One Page Creative HTML5 Template">
	<meta name="keywords" content="one page, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
	<meta name="author" content="Muhammad Morshed">
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Google Font -->

	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>

	<!-- CSS
		================================================== -->
	<!-- Fontawesome Icon font -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Twitter Bootstrap css -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- jquery.fancybox  -->
	<link rel="stylesheet" href="css/jquery.fancybox.css">
	<!-- animate -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Main Stylesheet -->
	<link rel="stylesheet" href="css/main1.css">
	<!-- media-queries -->
	<link rel="stylesheet" href="css/media-queries.css">

	<!-- Modernizer Script for old Browsers -->
	<script src="js/modernizr-2.6.2.min.js"></script>


						</head>

						<body id="body">

	<!-- preloader -->
	<div id="preloader">
		<img src="img/preloader.gif" alt="Preloader">
	</div>
	<!-- end preloader -->

	<!-- 
        Fixed Navigation
        ==================================== -->
	<header id="navigation" class="navbar-fixed-top navbar">
		<div class="container">
			<div class="navbar-header">
				<!-- responsive nav button -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<i class="fa fa-bars fa-2x"></i>
				</button>
				<!-- /responsive nav button -->

				<!-- logo -->
				<a class="navbar-brand" href="#body">
					<h1 id="logo">
							Dokter
						</h1>
				</a>
				<!-- /logo -->
			</div>

			<!-- main nav -->
			<nav class="collapse navbar-collapse navbar-right" role="navigation">
				<ul id="nav" class="nav navbar-nav">
					<li class="current"><a href="index.html">Home</a></li>

					<li><a href="#footer">Contact Us</a></li>
					<li><a href="signup.html">Sign up</a></li>

				</ul>
			</nav>
			<!-- /main nav -->

		</div>
	</header>
	
	
<section style="margin-top:150px;">


			<div class="container">

				<form method="post" action="./GetServer">
					<div class="form-group row">
						<div class="col-sm-3"></div>
						<label for="inputEmail3" class="col-sm-2">
							<h3>Email Id</h3></label>
						<div class="col-sm-3">
							<input type="email" placeholder="Email ID" name="email" class="form-control" id="date" require />
							<input type="hidden" placeholder="Email ID" name="date" class="form-control" value="<%=date %>" id="date" require></input>
							<input type="hidden" placeholder="Email ID" name="time" class="form-control" value="<%=time %>" id="time" require></input>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-5"></div>
						<div class="col-sm-3">
							<input type="submit" Value="Reserve" />
						</div>
					</div>
				</form>
				</div>
				</section>

				<footer id="footer" class="footer">
					<div class="container">
						<div class="row">

							<div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp animated" data-wow-duration="500ms">
								<div class="footer-single">
									<h6 style="margin-bottom:10px">Dokter</h6>
									<p>We help you book appointment, search for a hospital and doctor, sitting at you home and avoid end moment hassle</p>
								</div>
							</div>


							<div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="900ms" align="right">
								<div class="footer-single">
									<h6>Support</h6>
									<ul>
										<li><a href="#">Contact Us</a></li>
										<li><a href="#">Our Blog</a></li>
									</ul>
								</div>
							</div>

						</div>
						<div class="row">
							<div class="col-md-12">
								<p class="copyright text-center">
									Copyright � 2015 <a href="http://themefisher.com/">Dokter</a>. All rights reserved. Designed & developed by <a href="http://themefisher.com/">Dokter</a>
								</p>
							</div>
						</div>
					</div>
				</footer>

				<a href="javascript:void(0);" id="back-top"><i class="fa fa-angle-up fa-3x"></i></a>

				<!-- Essential jQuery Plugins
		================================================== -->
				<!-- Main jQuery -->
				<script src="js/jquery-1.11.1.min.js"></script>
				<!-- Single Page Nav -->
				<!-- Twitter Bootstrap -->
				<script src="js/bootstrap.min.js"></script>
				<!-- jquery.fancybox.pack -->
				<script src="js/jquery.fancybox.pack.js"></script>
				<!-- jquery.mixitup.min -->
				<script src="js/jquery.mixitup.min.js"></script>
				<!-- jquery.parallax -->
				<script src="js/jquery.parallax-1.1.3.js"></script>
				<!-- jquery.countTo -->
				<script src="js/jquery-countTo.js"></script>
				<!-- jquery.appear -->
				<script src="js/jquery.appear.js"></script>
				<!-- Contact form validation -->
				<!-- Google Map -->
				<!-- jquery easing -->
				<script src="js/jquery.easing.min.js"></script>
				<!-- jquery easing -->
				<script src="js/wow.min.js"></script>
				<script>
					var wow = new WOW({
						boxClass: 'wow', // animated element css class (default is wow)
						animateClass: 'animated', // animation css class (default is animated)
						offset: 120, // distance to the element when triggering the animation (default is 0)
						mobile: false, // trigger animations on mobile devices (default is true)
						live: true // act on asynchronously loaded content (default is true)
					});
					wow.init();
				</script>
				<!-- Custom Functions -->
				<script src="js/custom.js"></script>


				<script type="text/javascript">
					$(document).ready(function (e) {
						$('.search-panel .dropdown-menu').find('a').click(function (e) {
							e.preventDefault();
							var param = $(this).attr("href").replace("#", "");
							var concept = $(this).text();
							$('.search-panel span#search_concept').text(concept);
							$('.input-group #search_param').val(param);
						});
					});
				</script>


		</body>

		</html>