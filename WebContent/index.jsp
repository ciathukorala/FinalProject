<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
		<title>Easy Parking</title>
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<script src="js/jquery.min.js"></script>
		<!---script---->
		<link rel="stylesheet" href="css/jquery.bxslider.css" type="text/css" />
		<script src="js/jquery.bxslider.js"></script>
			<script type="text/javascript">
				$(document).ready(function(){
					$('.bxslider').bxSlider({
						 auto: true,
 						 autoControls: true,
						 minSlides: 4,
						 maxSlides: 4,
						 slideWidth:450,
						 slideMargin: 10
					});
				});
			</script>
		<!---//script---->
		<!---smoth-scrlling---->
			<script type="text/javascript">
				$(document).ready(function(){
									$('a[href^="#"]').on('click',function (e) {
									    e.preventDefault();
									    var target = this.hash,
									    $target = $(target);
									    $('html, body').stop().animate({
									        'scrollTop': $target.offset().top
									    }, 1000, 'swing', function () {
									        window.location.hash = target;
									    });
									});
								});
				</script>
		<link rel="stylesheet" href="css/fwslider.css" media="all">
		<script src="js/jquery-ui.min.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
		<script src="js/fwslider.js"></script>
		<link rel="stylesheet" href="css/jquery-ui.css" />
		
<title>Insert title here</title>
</head>
<body>
<div class="top-header" id="header"> 
				<div class="wrap">
				<div class="top-header-left">
					<ul>
						<li><a href="login/SignPage.jsp"><span> </span> Agent Login</a></li>
						<li><p><span> </span>Not a Member ? </p>&nbsp;<a class="reg" href="login/registerUser.jsp"> Register</a></li>
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
							<li><a href="index.jsp">Home</a></li>
							<li><a href="#">About</a></li>
							<li><a href="rentOut/rent.jsp">location</a></li>							
							<li><a href="rentSpace/rentHome.jsp">Rent out</a></li>	
							<li><a href="contact/contact.jsp">Contact Us</a></li>
						</ul>
                </div>
				<!--- //End-top-nav---->
				<div class="clear"> </div>
			</div>
			<!---//End-header---->
		</div>
		<!----start-images-slider---->
		<div class="images-slider">
			<!-- start slider -->
		    <div id="fwslider">
		        <div class="slider_container">
		            <div class="slide"> 
		                <!-- Slide image -->
		                <img src="images/slider-bg.jpg" sizes="1600x700" alt=""/>
		                <!-- /Slide image -->
		                <!-- Texts container -->
		                <div class="slide_content">
		                    <div class="slide_content_wrap">
		                        <!-- Text title -->
		                       <!-- <h4 class="title">Visit to the Pearl of the Indian Ocean</h4>-->
		                        <!-- /Text title -->
		                        <!-- Text description -->
		                        <p class="description"></p>
		                        <!-- /Text description -->
		                        <div class="slide-btns description">
		                        	<ul>
		                        
		                        		<div class="clear"> </div>
		                        	</ul>
		                        </div>
		                    </div>
		                </div>
		                 <!-- /Texts container -->
		            </div>
		            <!-- /Duplicate to create more slides -->
		            <div class="slide">
		                <img src="images/pp7.jpg" sizes="1600x700" alt=""/>
		                <div class="slide_content">
		                     <div class="slide_content_wrap">
		                        <!-- Text title -->
		                     
		                        <!-- /Text title -->
		                        <!-- Text description -->
		                        <p class="description"></p>
		                        <!-- /Text description -->
		                        <div class="slide-btns description">
		                        	<ul>
		                        		<li><a class="mapbtn" href="#">Show on the map </a></li>
		                        		<li><a class="minfo" href="#">More info </a></li>
		                        		<div class="clear"> </div>
		                        	</ul>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <!--/slide -->
                     <!-- /Duplicate to create more slides -->
		            <div class="slide">
		                <img src="images/pp71.jpg" alt=""/>
		                <div class="slide_content">
		                     <div class="slide_content_wrap">
		                        <!-- Text title -->
		                     		                        <!-- /Text title -->
		                        <!-- Text description -->
		                        <p class="description"></p>
		                        <!-- /Text description -->
		                        <div class="slide-btns description">
		                        	<ul>
		                        		<li><a class="mapbtn" href="#">Show on the map </a></li>
		                        		<li><a class="minfo" href="#">More info </a></li>
		                        		<div class="clear"> </div>
		                        	</ul>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <!--/slide -->
                    <!-- /Duplicate to create more slides -->
		            <div class="slide">
		                <img src="images/pp72.jpg" sizes="1600x700" alt=""/>
		                <div class="slide_content">
		                     <div class="slide_content_wrap">
		                        <!-- Text title -->
		                      
		                        <!-- /Text title -->
		                        <!-- Text description -->
		                        <p class="description"></p>
		                        <!-- /Text description -->
		                        <div class="slide-btns description">
		                        	<ul>
		                        		<li><a class="mapbtn" href="#">Show on the map </a></li>
		                        		<li><a class="minfo" href="#">More info </a></li>
		                        		<div class="clear"> </div>
		                        	</ul>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <!--/slide -->
		        </div>
		        <div class="timers"> </div>
		        <div class="slidePrev"><span> </span></div>
		        <div class="slideNext"><span> </span></div>
		    </div>
		    <!--/slider -->
		</div>

		<link rel="stylesheet" type="text/css" href="media/compressed/css/home.min.css" />



<div id="how-title">
	<h3 id="how-it-works">How it works</h3>
</div>

<div id="content">
	<!-- START how circles -->
	<div id="how-container" class="hideme">
		<div class="circle">
			<h4>Search</h4><p></p><p></p>
			<p>
			Wherever. Whenever. <br />From half an hour to half a year, we know that journeys come in all shapes and sizes.
			</p>
			<div class="icon"><img src="media/img/home/justpark/icon-glass-large.png" alt="Find cheap parking" width="100" height="75" /></div>
		</div>
		<div class="circle">
			<h4>Book</h4><p></p><p></p>
			<p>
			Just pick the parking space that suits you best and pay online to guarantee it's yours.
			</p>
			<div class="icon"><img src="media/img/home/justpark/icon-calendar.png" alt="Parking peace of mind" width="100" height="75" /></div>
		</div>
		<div class="circle">
			<h4>Park</h4><p></p><p></p>
			<p>
			Park your vehicle. Carry on with your day. No driving in circles and no parking nightmares.
			</p>
			<div class="icon"><img src="media/img/home/justpark/icon-car.png" alt="" width="100" height="75" /></div>
		</div>
		<div class="clear"></div>
	</div>
	<div id="benefit-container" class="hideme">
		<div class="graph">
			<img src="media/img/home/justpark/graph/pound.png" alt="Earn money" width="23" height="39" />
			<img src="media/img/home/justpark/graph/bar-meter.png" alt="Parking meter" width="125" height="220" class="bar-meter" />
			<img src="media/img/home/justpark/graph/bar-park.png" alt="JustPark logo" width="125" height="96"  class="bar-park"  />
			<img src="media/img/home/justpark/graph/graph-lines.png" alt="Parking stats" width="405" height="230" />
			<div class="graph-caption">Up to 70% cheaper<br />than<br />on-street parking</div>
		</div>
		<div class="benefit">
			<h4>Save money</h4>
			<img src="media/img/home/justpark/icon-piggy.png" alt="Save Money with JustPark" width="81" height="90" />
			<div class="copy">
			<p>
			On average, parking spaces booked through JustPark cost less than half the price of the nearest on-street alternative. With central locations available for as little as £8 for 24 hours, you won’t want to park with anyone else.
			</p>
			</div>
		</div>
		<div class="benefit">
			<h4>No parking tickets</h4>
			<img src="media/img/home/justpark/icon-no.png" alt="No parking tickets" width="81" height="90" />
			<div class="copy">
			<p>
			Our drivers love being able to park without the fear of traffic wardens and parking tickets. A parking ticket is issued every 4 seconds in the UK - that’s a lot of money and stress saved.
			</p>
			</div>
		</div>
		<div class="benefit">
			<h4>Peace of mind</h4>
			<img src="media/img/home/justpark/icon-smile.png" alt="Peace of Mind" width="81" height="90" />
			<div class="copy">
			<p>
			Pull up at your destination safe in the knowledge that a reserved space will be waiting for you. Check out reviews left by past drivers before booking and extend your reservation at the tap of a button.
			</p>
			</div>
		</div>
	</div>
	</div> 
        
    <br><br>    
		<!----//End-images-slider---->
		<!----start-clients---->
		<div class="clients">
			
			<div class="client-grids">
				<ul class="bxslider">
				</ul>
			</div>
		</div>
		<!----//End-clients---->
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
		
</body>
</html>