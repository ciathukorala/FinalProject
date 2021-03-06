<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Easy Parking</title>
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link id="style_core" rel="stylesheet" type="text/css" media="all"
	href="media/compressed/css/core.minfda6.css?v=2.0.42" />
</head>
<body>
	<!---//header-bar---->
	<div class="top-header" id="header">
		<div class="wrap">
			<div class="top-header-left">
				<ul>
					<li><a href="SignPage.jsp"><span> </span> Agent Login</a></li>
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
					<li><a href="index.jsp">Home</a></li>
					<li><a href="AboutUs/About.jsp">About</a></li>
					<li>
						<%
							String userName = (String) session.getAttribute("userName");
							if (userName != null) {
								out.println("<a href='parks/parkingMap.jsp'>location</a>");
							} else {
								out.println("<a href='login/SignPage.jsp'>location</a>");
							}
						%>
					</li>
					<li>
						<%
							if (userName != null) {
								out.println("<a href='rentSpace/rentHome.jsp'>Rent out</a>");
							} else {
								out.println("<a href='login/SignPage.jsp'>Rent out</a>");
							}
						%>
					</li>
					<li>
						<%
							if (userName != null) {
								out.println("<a href='Payments/PaymentSources.jsp'>Profile</a>");
							} else {
								out.println("<a href='login/SignPage.jsp'>Profile</a>");
							}
						%>
					</li>
					<li><a href="contact/contact.jsp">Contact Us</a></li>
				</ul>
			</div>
			<!--- //End-top-nav---->
			<div class="clear"></div>
		</div>
		<!---//End-header---->

		<div class="container" id="content">
			<div id="modal-inline" class="modal">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">�</button>
					Register <span>for an account</span><i class="icon-lock"></i>
				</div>

				<form name="registation" action="UpdateRegServlet" method="post"
					class="form-horizontal">
					<input type="hidden" name="pagename" value="register ">
					<div class="modal-body">
						<div class="external-logins">
							<p>
								<a href="auth/google/index.html"
									track="click:registration:signup-google"
									class="btn btn-large btn-google btn-fixed-size"><i
									class="jp jp-google"></i> Continue with Gmail</a>
							</p>
							<p style="color: #aaa">Takes only a few seconds</p>
						</div>

						<p id="reveal-email-signup"
							style="color: #aaa; text-align: center;">
							<a href="#" track="click:registration:sign-up-with-email">Sign
								up with your email address</a>
						</p>

						<div class="email-signup hidden">
							<div class="control-group required ">
								<label for="id_first_name" class="sr-only control-label">Full
									name</label>
								<div class="controls">
									<input type="text"
										value="<%=request.getAttribute("FirstName")%>"
										class="input-smedium phorm_field_name"
										placeholder="First Name" name="FirstName" /> <input
										type="text" value="<%=request.getAttribute("LastName")%>"
										class="input-smedium phorm_field_name" placeholder="Last name"
										name="LastName" />
								</div>
							</div>

							<div class="form-group control-group required">
								<label for="id_email" class="sr-only control-label">Email
									address</label>
								<div class="controls">
									<input type="email" value="<%=request.getAttribute("Email")%>"
										class="phorm_field_email has-tooltip" name="Email" readonly />
								</div>
							</div>

							<div class="form-group control-group required">
								<label for="id_password" class="sr-only control-label">Password</label>
								<div class="controls">
									<input type="text"
										value="<%=request.getAttribute("PassWord")%>" minlength="6"
										class="phorm_field_password" name="PassWord" required />
									<p class="help-block">Please choose a secure password (min.
										6 characters)</p>
								</div>
							</div>

							<div class="form-group control-group required">
								<label class="sr-only control-label">Phone Number</label>
								<div class="controls">
									<input type="text" pattern="[0-9]{10}"
										value="<%=request.getAttribute("PhoneNumber")%>"
										class="phorm_field_password" name="PhoneNumber" />
								</div>
							</div>

							<div class="form-group control-group required">
								<label class="sr-only control-label">Additional details</label>
								<div class="controls">
									<input type="text"
										value="<%=request.getAttribute("AdditionDetails")%>"
										class="phorm_field_text" name="AdditionDetails" />
									<p class="help-block">Any further information about how you
										heard about us</p>
								</div>
							</div>

							<div class="form-group control-group">
								<label class="control-label"></label>
								<div class="controls">
									<label for="id_receives_email_newsletter"><input
										value="on" class="phorm_field_checkbox"
										id="id_receives_email_newsletter"
										name="receives_email_newsletter" type="checkbox" /> Receive
										our email newsletter with advice and updates about our service
									</label>

									<p class="help-block">General information about exciting
										and important updates to the website as well as advice on how
										to make the most of our service</p>
								</div>
							</div>

						</div>

					</div>

					<div class="modal-footer">
						<div class="email-signup hidden">
							<button type="submit" class="btn btn-large btn-success">Register</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div id="wrapper-push"></div>
	</div>
	<!-- End of wrapper -->
	<script>
		window.jQuery
				|| document
						.write('<script src="media/compressed/js/jquery.min.js">\x3C/script>')
	</script>
	<script>
		$(function() {
			$("#reveal-email-signup a").on("click", function(e) {
				e.preventDefault();
				$(this).hide();
				$(".email-signup").show();
			});
		});
	</script>


	<!----start-footer---->
	<div class="footer">
		<div class="wrap">
			<div class="footer-grids">

				<div class="footer-grid address">
					<div class="address-info">
						<span><img src="images/park.jpg"></span>
					</div>
				</div>

				<div class="footer-grid address">
					<div class="address-info">
						<span><i>HOT LINES -:</i></span> <span><i>Call:</i></br>+94-71-3879092
							</br></span> <span>+94-71-3879052</br></span> <span>+94-71-1416599</br></span>
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
							<li><a class="face1 simptip-position-bottom simptip-movable"
								data-tooltip="facebook"
								href="https://www.facebook.com/Vacation2SriLanka"><span>
								</span></a></li>
							<li><a class="twit1 simptip-position-bottom simptip-movable"
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


</body>
</html>