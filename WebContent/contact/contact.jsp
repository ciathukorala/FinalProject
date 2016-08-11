<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="../css/jquery-ui.css" />

<title>Easy Parking Sign</title>
</head>
<body>
	<!---//header-bar---->
			<div class="top-header" id="header"> 
				<div class="wrap">
				<div class="top-header-left">
					<ul>
						<li><a href="../login/SignPage.jsp"><span> </span> Agent Login</a></li>
						<li><p><span> </span>Not a Member ? </p>&nbsp;<a class="reg" href="../login/registerUser.jsp"> Register</a></li>
						<li><p class="contact-info">Call Us Now :071-3879092</p></li>
						<div class="clear"> </div>
					</ul>
				</div>
				<div class="top-header-right">
					<ul>
						<li><a class="face" href="#"><span> </span></a></li>
						<li><a class="twit" href="#"><span> </span></a></li>
						<li><a class="thum" href="#"><span> </span></a></li>
						<li><a class="pin" href="#"><span> </span></a></li>
						<div class="clear"> </div>
					</ul>
				</div>
				<div class="clear"> </div>
			</div>
			</div> 
			<!----//End-top-header----->
            
			<!---start-header---->
			<div class="header">
				<div class="wrap">
				<!--- start-logo---->
				<div class="logo">
					
				</div>
				<!--- //End-logo---->
				<!--- start-top-nav---->
				<div class="top-nav">
						<ul class="flexy-menu thick orange">
							<li><a href="../index.jsp">Home</a></li>
							<li><a href="#">About</a></li>
							<li><a href="../rentOut/rent.jsp">location</a></li>							
							<li><a href="../rentSpace/rentHome.jsp">Rent out</a></li>
							<li><a href="#">User Profile</a></li>	
							<li><a href="contact.jsp">Contact Us</a></li>
						</ul>
                </div>
				<!--- //End-top-nav---->
				<div class="clear"> </div>
			</div>
			<!---//End-header---->
	<!-- Body part -->
		<div class="contact">
			
				<div class="contact-info">
					<div class="map">

						<iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3962.4506977503897!2d80.78713681419394!3d6.714724022775061!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2f659ec48e10a52c!2sSabaragamuwa+University!5e0!3m2!1sen!2slk!4v1468055518294"></iframe>
					 </div>
					 <div class="wrap">
					 <div class="contact-grids">
							 <div class="col_1_of_bottom span_1_of_first1">
								    <h5>Address</h5>
								    <ul class="list3">
										<li>
											<img src="../images/home.png" alt="">
											<div class="extra-wrap">
											 <p>Sabaragamuwa University,<br>Belihuloya</p>
											</div>
										</li>
									</ul>
							    </div>
								<div class="col_1_of_bottom span_1_of_first1">
								    <h5>Phones</h5>
									<ul class="list3">
										<li>
											   <img src="../images/phone.png" alt="">
											<div class="extra-wrap">
												<p><span>Telephone:</span>+94 71 3879092</p>
											</div>
												<img src="../images/fax.png" alt="">
											<div class="extra-wrap">
												<p><span>FAX:</span>+94 33 2226214</p>
											</div>
										</li>
									</ul>
								</div>
								<div class="col_1_of_bottom span_1_of_first1">
									 <h5>Email</h5>
								    <ul class="list3">
										<li>
											<img src="../images/email.png" alt="">
											<div class="extra-wrap">
											  <p><span class="mail"><a href="isharaathukorala@gmail.com">EasyParking@gmail.com</a></span></p>
											</div>
										</li>
									</ul>
							    </div>
								<div class="clear"></div>
					 </div>
					 	<form method="post" action="../ContactServlet">
					          <div class="contact-form">
								<div class="contact-to">
			                     	<input type="text" class="text" name="Name" value="Name..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name...';}">
								 	<input type="text" class="text" name="Email" value="Email..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email...';}">
								 	<input type="text" class="text" name="Subject" value="Subject..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject...';}">
								</div>
								<div class="text2">
				                   <textarea value="Message:" name="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message..</textarea>
				                </div>
				               <span><input type="submit" class="" value="Submit"></span>
				                <div class="clear"></div>
				               </div>
				           </form>
							</div>
			</div>
		</div>
        
        
    <!-- End Body -->
		           
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
                    	<span><h2><i>HOT LINES -:</i></h2></span>
						<span><i>Call:</i></br>+94-71-3879092 </br></span>
						<span>+94-71-3879052</br></span>
                        <span>+94-71-1416599</br></span>
                    </div>
                </div>
                
                <div class="footer-grid address">
					<div class="address-info">
						<span><i>ADDRESS -:</i></br>Sabaragamuwa University </br></span>
						<span>Bellihuloya</br></span>
						<span>Pabahinna</span>
					</div>
                </div>
                
				<div class="footer-grid address">
					<div class="address-info">
						<span><i>WEB -:</i></br>www.EasyPark.lk</br></span>
						<span>+94 71 299 2078 </br></span>
						<span><i>E-mail:</i><a href="mailto:isharaathukorala@gmail.com">EasyPark@gmail.com</a></span>
					</div>
					<div class="footer-social-icons">
						<ul>
							<li><a class="face1 simptip-position-bottom simptip-movable" data-tooltip="facebook" href="https://www.facebook.com/Vacation2SriLanka"><span> </span></a></li>
							<li><a class="twit1 simptip-position-bottom simptip-movable" data-tooltip="twitter" href="#"><span> </span></a></li>
							<li><a class="tub1 simptip-position-bottom simptip-movable" data-tooltip="tumblr" href="#"><span> </span></a></li>
							<li><a class="pin1 simptip-position-bottom simptip-movable" data-tooltip="pinterest" href="#"><span> </span></a></li>
							<div class="clear"> </div>
						</ul>
					</div>
				</div>
				<div class="clear"> </div>
			</div>
			</div>
		</div>
		<!----//End-footer---->
		
		<!----//End-wrap---->
	</body>
</html>

