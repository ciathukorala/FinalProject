<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="../css/jquery-ui.css" />

<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Easy Parking Sign</title>
</head>
<body>
	<!---//header-bar---->
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
										"<p><span> </span>Update Profaile? </p>&nbsp;<a class='reg' href='../RegServlet' method='POST'>Update</a>");
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
					<li><a href="../AboutUs/About.jsp">About</a></li>
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

<!--Body  -->
<center>
<div class="container-fluid">  
  <div class="row" style="background-color:white;">
    <div class="col-sm-5 col-md-6" style="background-color:white;"><div class="map">
					<iframe width="100%" height="350" frameborder="0" scrolling="no"
						marginheight="0" marginwidth="0"
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3962.4506977503897!2d80.78713681419394!3d6.714724022775061!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2f659ec48e10a52c!2sSabaragamuwa+University!5e0!3m2!1sen!2slk!4v1468055518294"></iframe>
				</div></div>
    <div class="col-sm-5 col-sm-offset-2 col-md-6 col-md-offset-0" style="background-color:white;">
	<div class="w3-container">

  <div class="w3-card-4" style="width:60%">
    <header class="w3-container w3-light-grey">
      <h3>Car Park Solution</h3>
    </header>
   <form class="form-inline"><br>
  <div class="form-group">
  <div class="col-sm-3"><label for="exampleInputName2">From</label></div>
<div class="col-sm-9"><input type="text" class="form-control" name="begin" value="2016-10-27" readonly></div>    
  </div><div></div>
  <div class="form-group"><br>
  <div class="col-sm-3">  <label for="exampleInputEmail2">Until</label></div>
<div class="col-sm-9"><input type="email" class="form-control" name="end" value="2016-10-27" readonly></div>   
</div>
<div class="form-group"><br>
  <div class="col-sm-3">  <label>TOTAL</label></div>
  <div class="col-sm-9"><input type="Text" class="form-control" value="250" readonly></div>   
</div>

<div></div>  
</form><br>
    <button class="w3-btn-block w3-dark-grey">Book Now with PayPal</button>
  </div>
</div>
<div></div><br><br>
<div>
<form action="${initParam['posturl']}" method="POST">
		<input type="hidden" name="upload" value="1">
		<input type="hidden" name="return" value="${initParam['returnurl']}">
		<input type="hidden" name="cmd" value="_cart">
		<input type="hidden" name="tx" value=68E78904HY5824419>
		<input type="hidden" name="business" value="${initParam['business']}">
		
		<input type="hidden" name="item_name_1" value="Amount">
		<input type="hidden" name="amount_1" value="10">
		
		<input type="image" src="https://www.paypalobjects.com/webstatic/en_US/i/buttons/PP_logo_h_200x51.png" alt="PayPal Logo">

	</form>
</div>

</div>
</div>
</div>
</center>

<br><br><br><br>
<!--Body End-->
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

