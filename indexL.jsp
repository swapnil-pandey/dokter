<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- meta charec set -->
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
	<link rel="stylesheet" href="css/main.css">
	<!-- media-queries -->
	<link rel="stylesheet" href="css/media-queries.css">

	<!-- Modernizer Script for old Browsers -->
	<script src="js/modernizr-2.6.2.min.js"></script>

</head>
<script>
    function Ser(val)
    {
        var doctor = ["Mahatma Gandhi Hospital", "Apex Hospital", "Babylon Children Hospital", "Imperial Hospital ", "Vedanta Superspeciality Hospital"];
          var link   = ["mahatma-hospital.html", "Apex_hospital.html", "babylon-hospital.html", "imperial-hospital.html", "vedanta_hospital.html"]
        console.log(val);
        var doctorDisplay = new Array(6);
        var doctorLink = new Array(6);
        var j=0;

       //var HTML = "<table  class=\"table table-hover\">";
       HTML = "<div class=\"list-group\" >"
        for (var i = 0; i < 5; i++)
        {
            var status = doctor[i].includes(val);
            if (status)
                {
                    doctorDisplay[j]= doctor[i];
                    doctorLink[j]=link[i];

                    console.log("this is array" + doctorDisplay[i]);
                   /* HTML +="<a href='"+doctorLink[j]+"'";
                    HTML +="<tr>"+doctorDisplay[j]+"</tr>";
                    HTML += "</a></br>";*/
                    HTML +="<a href='"+doctorLink[j]+"' class=\"list-group-item\">"+doctorDisplay[j]+"</a>";
                    j++;
                }
        }
        HTML += "</div>";
        if(val.length== 0)
        {
            document.getElementById("outputDiv").innerHTML = "";

        }
        else
        {
            document.getElementById("outputDiv").innerHTML = HTML;
        }
    }



</script>
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
							<a href="indexL.jsp">Dokter</a>
						</h1>
				</a>
				<!-- /logo -->
			</div>

			<!-- main nav -->
			<nav class="collapse navbar-collapse navbar-right" role="navigation">
				<ul id="nav" class="nav navbar-nav">
					<li class="current"><a href="indexL.jsp">Home</a></li>
					<li><a href="#team">Who we are</a></li>
					<li><a href="#footer">Contact Us</a></li>
					<li><a href="profile.jsp">Profile</a></li>
					<li><a href="index.html">Logout</a></li>
				</ul>
			</nav>
			<!-- /main nav -->

		</div>
	</header>
	<!--
        End Fixed Navigation
        ==================================== -->



	<!--
        Home Slider
        ==================================== -->

	<section id="slider">
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

			<!-- Indicators bullet -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			</ol>
			<!-- End Indicators bullet -->

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">

				<!-- single slide -->
				<div class="item active" style="background-image: url(img/corridor.jpg);">

					<div class="carousel-caption">
						<h2 data-wow-duration="700ms" data-wow-delay="500ms" class="wow bounceInDown animated">Meet<span> DoKter</span>!</h2>

						<!--Search-->


						<div class="container">
							<div class="row">
								<div class="col-md-8" style="margin-bottom:50px;margin-top:20px">
									<div class="input-group">
										<div class="input-group-btn search-panel">
											<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
												<span id="search_concept">Hospital Name</span>
											</button>
											<!-- <ul class="dropdown-menu" style="text-shadow:0 0 0" role="menu">
												<li><a href="#doctor">Doctor</a></li>
												<li><a href="#hospital">Hospital</a></li>
												<li><a href="#disease">Disease</a></li>
												<li class="divider"></li>
												<li><a href="#all">Anything</a></li>
											</ul> -->
										</div>
										<input type="text" class="form-control" name="x" id="search" onkeyup="Ser(this.value)" autocomplete="off" placeholder="Search Hospitals...">
                 						<i class="search icon"></i>
									</div>
									<div id="outputDiv"></div>
								</div>
							</div>
						</div>


						<h3 data-wow-duration="1000ms" class="wow slideInLeft animated"><span class="color">Health Advisor</span> always with you</h3>
						<p data-wow-duration="1000ms" class="wow slideInRight animated">We care for you and your loved ones</p>

						<ul class="social-links text-center">
							<li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
							<li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
							<li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
							<li><a href=""><i class="fa fa-dribbble fa-lg"></i></a></li>
						</ul>
					</div>
				</div>
				<!-- end single slide -->

				<!-- single slide -->
				<!--<div class="item" style="background-image: url(img/banner.jpg);">
					<div class="carousel-caption">
						<h2 data-wow-duration="500ms" data-wow-delay="500ms" class="wow bounceInDown animated">Meet<span> Team</span>!</h2>
						<h3 data-wow-duration="500ms" class="wow slideInLeft animated"><span class="color">/creative</span> one page template.</h3>
						<p data-wow-duration="500ms" class="wow slideInRight animated">We are a team of professionals</p>

						<ul class="social-links text-center">
							<li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
							<li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
							<li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
							<li><a href=""><i class="fa fa-dribbble fa-lg"></i></a></li>
						</ul>
					</div>
				</div>-->
				<!-- end single slide -->

			</div>
			<!-- End Wrapper for slides -->

		</div>
	</section>

	<!--
        End Home SliderEnd
        ==================================== -->

	<!--
        Features
        ==================================== -->

	<section id="features" class="features">
		<div class="container">
			<div class="row">

				<div class="sec-title text-center mb50 wow bounceInDown animated" data-wow-duration="500ms">
					<h2>Features</h2>
					<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
				</div>

				<!-- service item -->
				<div class="col-md-4 wow fadeInLeft" data-wow-duration="500ms">
					<div class="service-item">
						<div class="service-icon">
							<i class="fa fa-github fa-2x"></i>
						</div>

						<div class="service-desc">
							<h3>Search</h3>
							<p>A place to look for doctors and hospitals based on location, disease or anything you feel like.</p>
						</div>
					</div>
				</div>
				<!-- end service item -->

				<!-- service item -->
				<div class="col-md-4 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="500ms">
					<div class="service-item">
						<div class="service-icon">
							<i class="fa fa-pencil fa-2x"></i>
						</div>

						<div class="service-desc">
							<h3>Book Appointments</h3>
							<p>Look into avalaible times of your docters and book your appointment right from your home. Get receipt and Pay at visiting.</p>
						</div>
					</div>
				</div>
				<!-- end service item -->

				<!-- service item -->
				<div class="col-md-4 wow fadeInRight" data-wow-duration="500ms" data-wow-delay="900ms">
					<div class="service-item">
						<div class="service-icon">
							<i class="fa fa-bullhorn fa-2x"></i>
						</div>

						<div class="service-desc">
							<h3>Rate and Review</h3>
							<p>Rate your experience and reviews of others to make smart choices</p>
						</div>
					</div>
				</div>
				<!-- end service item -->

			</div>
		</div>
	</section>

	<!--
        End Features
        ==================================== -->





	<!--
        Meet Our Team
        ==================================== -->

	<section id="team" class="team" align="center">
		<div class="container" align="center">
			<div class="row">

				<div class="sec-title text-center wow fadeInUp animated" data-wow-duration="700ms">
					<h2>Who we Are</h2>
					<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
					<p> A team of students working to provide you easy health services</p>
				</div>

				<div class="sec-sub-title text-center wow fadeInRight animated" data-wow-duration="500ms">
				</div>



				<!-- single member -->
				<figure class="team-member col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="300ms">
					<div class="member-thumb" align="center">
						<img src="img/team/team.jpeg" alt="Team Member" class="img-responsive" align="center">
						<figcaption class="overlay">
							<h5>Work In Progress </h5>

							<ul class="social-links text-center">
								<li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
								<li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
							</ul>
						</figcaption>
					</div>
					<h4>Group of Developers</h4>

				</figure>
				<!-- end single member -->


			</div>
		</div>
	</section>

	<!--
        End Meet Our Team
        ==================================== -->


	<!--
        Some fun facts
        ==================================== -->

	<section id="facts" class="facts">
		<div class="parallax-overlay">
			<div class="container">
				<div class="row number-counters">

					<div class="sec-title text-center mb50 wow rubberBand animated" data-wow-duration="1000ms">
						<h2>Some Fun Facts</h2>
						<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
					</div>

					<!-- first count item -->
					<div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms">
						<div class="counters-item">
							<i class="fa fa-clock-o fa-3x"></i>
							<strong data-to="200">0</strong>
							<!-- Set Your Number here. i,e. data-to="56" -->
							<p>Hours of Work</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="300ms">
						<div class="counters-item">
							<i class="fa fa-users fa-3x"></i>
							<strong data-to="10">0</strong>
							<!-- Set Your Number here. i,e. data-to="56" -->
							<p>Satisfied Clients</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="600ms">
						<div class="counters-item">
							<i class="fa fa-rocket fa-3x"></i>
							<strong data-to="20">0</strong>
							<!-- Set Your Number here. i,e. data-to="56" -->
							<p> Milestones to achieve </p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="900ms">
						<div class="counters-item">
							<i class="fa fa-trophy fa-3x"></i>
							<strong data-to="1">0</strong>
							<!-- Set Your Number here. i,e. data-to="56" -->
							<p>Awards Won</p>
						</div>
					</div>
					<!-- end first count item -->

				</div>
			</div>
		</div>
	</section>

	<!--
        End Some fun facts
        ==================================== -->


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
							<li><a href="#">Contact Us @y14uc302@lnmiit.ac.in</a></li>
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
	<script src="js/jquery.singlePageNav.min.js"></script>
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
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.form/3.32/jquery.form.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.11.1/jquery.validate.min.js"></script>
	<!-- Google Map -->
	<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
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
		$(function () {
			/* ========================================================================= */
			/*	Contact Form
			/* ========================================================================= */

			$('#contact-form').validate({
				rules: {
					name: {
						required: true,
						minlength: 2
					},
					email: {
						required: true,
						email: true
					},
					message: {
						required: true
					}
				},
				messages: {
					name: {
						required: "come on, you have a name don't you?",
						minlength: "your name must consist of at least 2 characters"
					},
					email: {
						required: "no email, no message"
					},
					message: {
						required: "um...yea, you have to write something to send this form.",
						minlength: "thats all? really?"
					}
				},
				submitHandler: function (form) {
					$(form).ajaxSubmit({
						type: "POST",
						data: $(form).serialize(),
						url: "process.php",
						success: function () {
							$('#contact-form :input').attr('disabled', 'disabled');
							$('#contact-form').fadeTo("slow", 0.15, function () {
								$(this).find(':input').attr('disabled', 'disabled');
								$(this).find('label').css('cursor', 'default');
								$('#success').fadeIn();
							});
						},
						error: function () {
							$('#contact-form').fadeTo("slow", 0.15, function () {
								$('#error').fadeIn();
							});
						}
					});
				}
			});
		});
	</script>
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