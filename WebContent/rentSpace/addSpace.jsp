<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link id="style_core" rel="stylesheet" type="text/css" media="all"
	href="../media/compressed/css/core.minfda6.css?v=2.0.42" />
<link rel="stylesheet" href="../css/stylenew.css" type="text/css" />


<title>Easy Parking Sign</title>
</head>
<body background="images/sign.jpg">
	<!---//header-bar---->
	<div class="top-header" id="header">
		<div class="wrap">
			<div class="top-header-left">
				<ul>
					<li><a href="../login/SignPage.jsp"><span> </span> Agent
							Login</a></li>
					<li><p>
							<span> </span>Not a Member ?
						</p>&nbsp;<a class="reg" href="../login/registerUser.jsp">
							Register</a></li>
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
					<li><a href="#">About</a></li>
					<li><a href="../rentOut/rent.jsp">location</a></li>
					<li><a href="rentHome.jsp">Rent out</a></li>
					<li><a href="../contact/contact.jsp">Contact Us</a></li>
				</ul>
			</div>
			<!--- //End-top-nav---->
			<div class="clear"></div>
		</div>
		<!---//End-header---->


		<!-- start  Body -->

		<center>
			<h1>Add Your Valuble Space</h1>
			<div id="login-form">
				<form method="post" action="../SpaceServlet">
					<table align="center" width="50%" border="0">
						<tr>
							<td>Owners Name -:<input type="text" name="Name"
								placeholder="Owners Name" required />
							</td>
						</tr>
						<tr>
							<td>Phone Number -:<input type="tel" pattern="[0-9]{10}"
								name="PhoneNumber" placeholder="Phone Number" required />
							</td>
						</tr>
						<tr>
							<td>Address -:<input type="text" name="Address"
								placeholder="Address" required />
							</td>
						</tr>
						<tr>
							<td>No of Parking Slots -:<input type="text" name="slots"
								placeholder="No.OF Slots" required />
							</td>
						</tr>
						<tr>
							<td>Description -:<input type="area" name="Description"
								placeholder="Description" required />
							</td>
						</tr>
						<tr>
							<td>Access Instruction -:<input type="area"
								name="Instruction" placeholder="Access Instruction" required />

							</td>
						</tr>
						<tr>
							<td>Price of one Slots -:<input type="text" name="price"
								placeholder="Rate of One Slots" required />
							</td>
						</tr>
						<tr>
							<td>
								<button type="submit" name="submit">Submit</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</center>
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

