<!DOCTYPE html>
<!--[if lt IE 7]>      <html lang="en" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="en" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="en" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html lang="en" class="no-js">
<!--<![endif]-->

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
	<link rel="stylesheet" href="css/main1.css">
	<!-- media-queries -->
	<link rel="stylesheet" href="css/media-queries.css">

	<!-- Modernizer Script for old Browsers -->
	<script src="js/modernizr-2.6.2.min.js"></script>

</head>

<body id="body">
<script>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%! String nam,email,contact,address,diag,pwd;
	int pin;
	//Date dob;
	%> 
<%
           String email = (String)session.getAttribute("member");
			//System.out.print(username);
%>

<%
//String fname,lname,pass,dateofbirth,email,address,city,state,pin,country,contact;
//int uid;
//Date dob;

	try{
		Connection conn = null;
	     // Statement stmt = null;
				   
			      //STEP 2: Register JDBC driver
			      Class.forName("com.mysql.jdbc.Driver");

			      //STEP 3: Open a connection
			      System.out.println("Connecting to database...");
			      conn = DriverManager.getConnection("jdbc:mysql://aar7vlleabv0a6.ckzbsltw7ygt.us-east-1.rds.amazonaws.com:12230/ebdb?user=master&password=rootroot","master","rootroot");
		

            PreparedStatement pst = conn.prepareStatement("select * from user where email=?");
            pst.setString(1, email);
	        ResultSet rs = pst.executeQuery();                        
	        if(!rs.next())
	        	System.out.println("error in fetching resultset!!!");
	        
	        else
	        {
	        	//System.out.println(session.getAttribute("user"));
	        	//System.out.println("d");
	        	
	        	 nam = rs.getString("nam");
	        	 email = rs.getString("email");
	        	 address= rs.getString("address");
	        	 pin = rs.getInt("pin");
	        	 contact = rs.getString("contact");
	        	 diag = rs.getString("diag");
	        	 pwd=rs.getString("pwd");
	        }
	        	   
        } catch(Exception exc1){
            exc1.printStackTrace();
            System.out.println("error");
        }
	
	
%>
</script>
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
					<li class="current"><a href="index.html">Home</a></li>
					
					<li><a href="#footer">Contact Us</a></li>
					<li><a href="profile.html">Profile</a></li>
					<li><a href="index.html">Logout</a></li>
				</ul>
			</nav>
			<!-- /main nav -->

		</div>
	</header>
	
	<div class="container">
			<link rel="stylesheet" href="css/register.css">

			<div class="row main" style="margin-bottom:50px;">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">DoKter</h1>
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form class="form-horizontal" method="post" action="./EditProfile">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Your Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="name" required/ value="<%=nam%>"> 
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="contact" class="cols-sm-2 control-label">Contact No</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-phone fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" size="10" name="contact" id="contact"  value="<%=contact%>" required maxlength="10" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="pincode" class="cols-sm-2 control-label">Pincode</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-map-marker fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="pin" id="pin"  value="<%=pin%>" maxlength="6" required/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="pincode" class="cols-sm-2 control-label">Diagonostic</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-map-marker fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="diagonostic" id="diagonostic"  placeholder="Enter your Diagonostic" maxlength="100" >
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="adr" class="cols-sm-2 control-label">Address</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="adr" id="adr"  value="<%=address%>" required/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Current Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="password" value="<%=pwd%>"  required/ >
								</div>
							</div>
						</div>


						<div class="form-group ">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Save Changes</button>
						</div>
						<div class="form-group">
				            <button type="button" class="btn btn-primary btn-lg btn-block login-button"><a href="profile.jsp">Cancel</a></button>
				         </div>
					</form>
				</div>
			</div>
		</div>


	<footer id="footer" class="footer">
		<div class="container">
			<div class="row">

				<div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp animated" data-wow-duration="500ms">
					<div class="footer-single">
						<h6 style="margin-bottom:10px">Dokter</h6>
						<p>We help you book appointment, search for a hospital and doctor, sitting at you home
						and avoid end moment hassle</p>
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
						Copyright © 2015 <a href="http://themefisher.com/">Dokter</a>. All rights reserved. Designed & developed by <a href="http://themefisher.com/">Dokter</a>
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