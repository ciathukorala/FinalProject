<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link href="../css/style.css" rel='stylesheet' type='text/css' />
<script src="js/jquery.min.js"></script>

<title>Easy Parking Sign</title>
</head>
<body >
	<div class="top-header" id="header">
		<div class="wrap">
			<div class="top-header-left">
				<ul>
					<li>
						<%
							String userName = (String) session.getAttribute("userName");
							String userRole = (String) session.getAttribute("userRole");

							if (userName != null) {
								out.println("<p class='contact-info'>Welcome " + userName + "</p>");
							} else {
								out.println("<a href='../login/SignPage.jsp'><span> </span>Login</a>");
							}
						%>
					</li>
					<li>
						<%
							if (userName != null) {
								out.println(
										"<p><span> </span>Update Profaile? </p>&nbsp;<a class='reg' href='RegServlet' method='POST'>Update</a>");
							} else {
								out.println(
										"<p><span> </span>Not a Member ? </p>&nbsp;<a class='reg' href='../login/registerUser.jsp'> Register</a>");
							}
						%>
					</li>
					<li><p class="contact-info">Call Us Now :071-3879092</p></li>
					<div class="clear"></div>
				</ul>
			</div>
			<div class="top-header-right">
				<ul>
					<li><a class="face" href="#"><span> </span></a></li>
					<li><a class="twit" href="#"><span> </span></a></li>
					<li><a class="thum" href="#"><span> </span></a></li>
					<li><a class="pin" href="#"><span> </span></a></li>
					<div class="clear"></div>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!----//End-top-header----->

	<!---start-header---->
	<div class="header">
		<div class="wrap">
			<!--- start-logo---->
			<div class="logo"></div>
			<!--- //End-logo---->
			<!--- start-top-nav---->
			<div class="top-nav">
				<ul class="flexy-menu thick orange">
					<li><a href="../index.jsp">Home</a></li>
					<li><a href="About.jsp">About</a></li>
					<li>
						<%
							
							if (userName != null) {
								out.println("<a href='../parks/parkingMap.jsp'>location</a>");
							} else {
								out.println("<a href='../login/SignPage.jsp'>location</a>");
							}
						%>
					</li>
					<li>
						<%
							if (userName != null) {
								out.println("<a href='../rentSpace/rentHome.jsp'>Rent out</a>");
							} else {
								out.println("<a href='../login/SignPage.jsp'>Rent out</a>");
							}
						%>
					</li>
					<li>
						<%
							if (userName != null) {
								out.println("<a href='../Payments/PaymentSources.jsp'>Profile</a>");
							} else {
								out.println("<a href='../login/SignPage.jsp'>Profile</a>");
							}
						%>
					</li>
					<li><a href="../contact/contact.jsp">Contact Us</a></li>
				</ul>
			</div>
			<!--- //End-top-nav---->
			<div class="clear"></div>
		</div>
		<!---//End-header---->

		<div class="images-slider">
			<!-- start slider -->
			<div id="fwslider">
				<div class="slider_container">
					<div class="slide">
						<!-- Slide image -->
						<img src="../images/hero-refer-a-friend.jpg" size="1000x300"
							alt="" />
					</div>
				</div>
			</div>
		</div>

		<br>
		<div class="container-fluid">
			<h1>What is Easy Park?</h1>
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-10">
					<p class="text-justify">Easy Park is Sri-Lankan leading
						provider of pre-bookable parking. The idea is simple: we connect
						drivers with anyone who has a spare space - whether that's in a
						car park, private driveway, church, school, or pub. In city
						centres or near airports, for sports matches or the daily commute,
						JustPark's website lets drivers find, book and pay for parking in
						seconds - wherever and whenever they need it. Choose your perfect
						spot from over 1000 spaces in 10 different cities - or rent yours
						out when it's not being used. We take the stress out of parking
						for over one million drivers. Our spaces are up to 70% cheaper
						than traditional pay-and-display, plus there's zero risk of [you]
						getting a parking ticket. And on the flipside, we've earned
						property owners and businesses over renting out their underused
						spaces for them - so everyone's a winner.</p>
				</div>
				<div class="col-sm-1"></div>
			</div>
		</div>
		<br> <br>
		<!----start-footer---->
		<div class="footer">
			<div class="wrap">
				<div class="footer-grids">

					<div class="footer-grid address">
						<div class="address-info">
							<span><img src="../images/park.jpg"></span>
						</div>
					</div>

					<div class="footer-grid address">
						<div class="address-info">
							<span><h2>
									<i>HOT LINES -:</i>
								</h2></span> <span><i>Call:</i></br>+94-71-3879092 </br></span> <span>+94-71-3879052</br></span>
							<span>+94-71-1416599</br></span>
						</div>
					</div>

					<div class="footer-grid address">
						<div class="address-info">
							<span><i>ADDRESS -:</i></br>Sabaragamuwa University </br></span> <span>Bellihuloya</br></span>
							<span>Pabahinna</span>
						</div>
					</div>

					<div class="footer-grid address">
						<div class="address-info">
							<span><i>WEB -:</i></br>www.EasyPark.lk</br></span> <span>+94 71 299
								2078 </br>
							</span> <span><i>E-mail:</i><a
								href="mailto:isharaathukorala@gmail.com">EasyPark@gmail.com</a></span>
						</div>
						<div class="footer-social-icons">
							<ul>
								<li><a
									class="face1 simptip-position-bottom simptip-movable"
									data-tooltip="facebook"
									href="https://www.facebook.com/Vacation2SriLanka"><span>
									</span></a></li>
								<li><a
									class="twit1 simptip-position-bottom simptip-movable"
									data-tooltip="twitter" href="#"><span> </span></a></li>
								<li><a class="tub1 simptip-position-bottom simptip-movable"
									data-tooltip="tumblr" href="#"><span> </span></a></li>
								<li><a class="pin1 simptip-position-bottom simptip-movable"
									data-tooltip="pinterest" href="#"><span> </span></a></li>
								<div class="clear"></div>
							</ul>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
		<!----//End-footer---->

		<!----//End-wrap---->
</body>
</html>

