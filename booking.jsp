<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
			<%@page import="java.sql.Connection"%>
				<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
					<%

int status[] = {0,0,0,0,0,0};
String email;
int booked_flag;
String start_time;

session = request.getSession();
String date = (String)session.getAttribute("date");
System.out.println("date in booking.jsp is: "+date);

Connection con;
Class.forName("com.mysql.jdbc.Driver");

//STEP 3: Open a connection
System.out.println("Connecting to database...");
con = DriverManager.getConnection("jdbc:mysql://aar7vlleabv0a6.ckzbsltw7ygt.us-east-1.rds.amazonaws.com:12230/ebdb?user=master&password=rootroot","master","rootroot");


Statement st = con.createStatement();
System.out.println("checking booking table");
String query = new String("select * from time_table where date = '"+date+"'");
ResultSet rs= st.executeQuery(query);
System.out.println("yy");
if(!rs.next())
{
	System.out.println("no entries");
	for(int i=0;i<6;i++)
		status[i]=0;

}
rs.beforeFirst();
while(rs.next())
{
	 email = rs.getString("email");
	 booked_flag = rs.getInt("booked_flag");
	 start_time= rs.getString("start_time");
	 System.out.println("yes");
	 System.out.println("email in booking.jsp is: "+email);
	 System.out.println("flag in booking.jsp is: "+booked_flag);
	 System.out.println("time in booking.jsp is: "+start_time);

	 
	 if (booked_flag==1) 
     {
		 System.out.println("flag=1");
         if(start_time.equals("04:00"))
         {
             //email[0]=emails;
             status[0]=1;

         }
         else if (start_time.equals("04:20")) 
         {
             //email[1]=emails;
             status[1]=1;

         }
         else if (start_time.equals("04:40"))
         {
             //email[2]=emails;
             System.out.println("found");
             status[2]=1;

         }
         else if (start_time.equals("05:00"))
         {
             //email[3]=emails;
             status[3]=1;

         }
         else if (start_time.equals("05:20"))
         {
             //email[4]=emails;
             status[4]=1;

         }
         else if (start_time.equals("05:40"))
         {
             //email[4]=emails;
             status[5]=1;

         }

     }
	 else
	 {
		 System.out.println("no");

	 }
}

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
	
									<form method="post" action="./SetDate">
										<div class="form-group row">
											<div class="col-sm-3"></div>


											<div class="col-sm-3">
												<input type="date" name="date" value="<%=date %>" onclick="" class="form-control" id="date" />
											</div>
											<div class="col-sm-3">
												<input type="submit" onclick="check_date()" Value="Details >>" id="date" />
											</div>

										</div>
										<div>
											<div class="col-sm-3"></div>
											<div class="col-sm-5">
												<table class="table table-bordered col-sm-5" id="table">
													<thead>
														<tr>
															<th>Time</th>
															<th>Reservation</th>
														</tr>
													</thead>
													<tbody>

<%String stat0,stat1,stat2,stat3,stat4,stat5;
if(status[0]==0)
	stat0="Available";
else
	stat0="Booked";
if(status[1]==0)
	stat1="Available";
else
	stat1="Booked";
if(status[2]==0)
	stat2="Available";
else
	stat2="Booked";
if(status[3]==0)
	stat3="Available";
else
	stat3="Booked";
if(status[4]==0)
	stat4="Available";
else
	stat4="Booked";
if(status[5]==0)
	stat5="Available";
else
	stat5="Booked";
%>
														<tr>
															<th>04:00 PM</th>
															<td align="center" style="width:300px;color:black; align: center;" onclick="check_reservation0()" id="status0" class="04:00">
																<strong><%=stat0%></strong>
															</td>
														</tr>
														<tr>
															<th>04:20 PM</th>
															<td align="center" style="width:300px;color:black; align: center;" onclick="check_reservation1()" id="status1" class="04:20">
																<strong><%=stat1%></strong>
															</td>

														</tr>
														<tr>
															<th>04:40 PM</th>
															<td align="center" style="width:300px; color:black;  align: center;" onclick="check_reservation2()" id="status2" class="04:40">
																<strong><%=stat2%></strong>
															</td>
														</tr>
														<tr>
															<th>05:00 PM</th>
															<td align="center" style="width:300px;  color:black; align: center;" onclick="check_reservation3()" id="status3" class="05:00">
																<strong><%=stat3%></strong>
															</td>

														</tr>
														<tr>
															<th>05:20 PM</th>
															<td align="center" style="width:300px;  color:black; align: center;" onclick="check_reservation4()" id="status4" class="05:20">
																<strong><%=stat4%></strong>
															</td>
														</tr>
														<tr>
															<th>05:40 PM</th>
															<td align="center" style="width:300px;  color:black; align: center;" onclick="check_reservation5()" id="status5" class="05:40">
																<strong><%=stat5%></strong>
															</td>
														</tr>

													</tbody>
												</table>
												<script type="text/javascript">
													//window.alert("chal rha hai");
													var x = document.getElementById("table");

													<% 
                for (int i = 0; i <6; i++) {
                   
                    if (status[i]==1) 
                        {
                            %>
													x.getElementsByTagName("td")[<%=i%>].style.backgroundColor = "yellow";
													<%
                        }
                    else
                    {
                        %>
													x.getElementsByTagName("td")[<%=i%>].style.backgroundColor = "green";
													<%
                    }
                }

            %>
												</script>

											</div>
										</div>
									</form>

								 <%-- 	 <div id="login" hidden >
                <h2>Login</h2>
                <form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
                <p class="input"><input type="text" placeholder="Username" name="username" required></p>
            
                <p class="input"><input type="password" placeholder="Password" name= "password" required> </p>  
            
            <input type="submit" value ="Login">
        </form>
    </div>  --%> 
								</div>
							</section>

								<script>
									function check_reservation0() {
										var date = document.getElementById("date").value;
										var time = document.getElementById("status0").className;
										console.log(time);
										if (<%=status[0] %> == 1) {
											window.alert("This time slot has already been booked");
										} else {
											var url = "getReserve.jsp?time=" + time + "&date=" + date + "";
											window.location.href = url;

										}

									}

									function check_reservation1() {
										var date = document.getElementById("date").value;
										var time = document.getElementById("status1").className;
										console.log(time);
										console.log(date);
										if (<%=status[1] %> == 1) {
											window.alert("This time slot has already been booked");
										} else {

											var url = "getReserve.jsp?time=" + time + "&date=" + date + "";
											window.location.href = url;

										}

									}

									function check_reservation2() {
										var date = document.getElementById("date").value;
										var time = document.getElementById("status2").className;
										console.log(time);
										console.log(date);
										if (<%=status[2] %> == 1) {
											window.alert("This time slot has already been booked");
										} else {

											var url = "getReserve.jsp?time=" + time + "&date=" + date + "";
											window.location.href = url;

										}

									}

									function check_reservation3() {
										var date = document.getElementById("date").value;
										var time = document.getElementById("status3").className;
										console.log(time);
										console.log(date);
										if (<%=status[3] %> == 1) {
											window.alert("This time slot has already been booked");
										} else {

											var url = "getReserve.jsp?time=" + time + "&date=" + date + "";
											window.location.href = url;

										}

									}

									function check_reservation4() {
										var date = document.getElementById("date").value;
										var time = document.getElementById("status4").className;
										console.log(time);
										console.log(date);
										if (<%=status[4] %> == 1) {
											window.alert("This time slot has already been booked");
										} else {

											var url = "getReserve.jsp?time=" + time + "&date=" + date + "";
											window.location.href = url;

										}

									}
									function check_reservation5() {
										var date = document.getElementById("date").value;
										var time = document.getElementById("status5").className;
										console.log(time);
										console.log(date);
										if (<%=status[5] %> == 1) {
											window.alert("This time slot has already been booked");
										} else {

											var url = "getReserve.jsp?time=" + time + "&date=" + date + "";
											window.location.href = url;

										}

									}
								</script>
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
													Copyright 2015 <a href="http://themefisher.com/">Dokter</a>. All rights reserved. Designed & developed by <a href="http://themefisher.com/">Dokter</a>
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