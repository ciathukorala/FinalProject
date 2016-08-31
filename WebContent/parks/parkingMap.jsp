<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAG2cS6fDAseCo-RQ2s-zVF1leOkbad-pc&callback=initialize"
    async defer></script>
    <script type="text/javascript" src="../js/park.js"></script>
       <style>
       #sidebar {
       height:auto;
       width:25%;
       position: relative;
       background: red;
       float: left;
       
      }
       #map {
        height:auto;
        width:75%;
        position: relative;
		float:left;
      }
      .form {
          margin:0 auto;
          float:none;
          position:relative;
          top:-35px;          
      }

    </style>
<link id="style_responsive" rel="stylesheet" type="text/css" media="all"
	href="../media/compressed/css/responsive.minfda6.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  
  <!-- NavBar -->
  	<form action="#" method="get">
		<div class="o-section o-section--park o-section--short c-srp-header">
			<div class="c-srp-header__container">
				<div class="c-srp-header__item">
					<a href="../index.jsp">
					 <img class="c-srp-header__logo"
						src="../images/parklogo.png" />
					</a>
				</div>
				<div class="c-srp-header__item c-srp-header__form">
					<div class="o-form c-srp-form">
						<div class="hidden">
							<input type="hidden" name="filter" value="1" /> <input value=""
								class="phorm_field_hidden" id="id_order" name="order"
								type="hidden" />
						</div>
						<div
							class="o-field c-srp-form__grow-field c-srp-form__location-field">
							<input value="Hyde Park"
								analytics-track="Search Form - Location Autocomplete"
								class="o-field__input o-field__input--text" autocomplete="off"
								placeholder="Enter a location" id="id_q" name="q"
								track="click:search-results:autocomplete" type="text" />
						</div>
						<div class="o-field c-srp-form__search-field">
							<button type="submit"
								class="o-field__input c-srp-form__submit-search">
								<span>Search</span>
							</button>
						</div>
					</div>
				</div>
	</div>
	</div>
	</form>
	<div style="display: flex; height:89%;">
	<div id="sidebar" class="c-srp-listing__list" >
	<div >
					<article class="c-srp-listing" data-listing-id="69441">
					<div class="c-srp-listing__index">
										
					</div>

					<header class="c-srp-listing__header">
					<h4 class="c-srp-listing__title">
						<a class="c-srp-listing__title-link" href="../london/s/george-street-london-w1-p553e49f088026/index.html" track="click:search-results:list-result" track-options="A">Car
							Park on George Street, W1</a>
					</h4>
					<div class="c-srp-listing__pricing">
						<span class="c-srp-listing__pricing-price"> £15.90 </span> <span class="period"> </span>
					</div>
					</header>
					<div class="c-srp-listing__rating">
						<span> <span class="stars rating-meter"> <span class="stars_empty"></span> <span class="stars_full" style="width: 92.2%" title="4.61 out of 5 stars"></span>
						</span> (37)
						</span>
						<input type="submit" class="" value="Park Here">
					</div>
					</article>
					
	</div>
	</div>
	<div id="map"></div>
	</div>
	</body>
	</html>