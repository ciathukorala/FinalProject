<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function getData(title)
{
     alert(title);
}
</script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAG2cS6fDAseCo-RQ2s-zVF1leOkbad-pc"
	async defer></script>
<!--   <script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAG2cS6fDAseCo-RQ2s-zVF1leOkbad-pc&callback=getParkList"
	async defer></script> -->


<script type="text/javascript" src="../js/park.js"></script>

 <script type='text/javascript' src='/ParkingSystem/dwr/engine.js'></script>
  <script type='text/javascript' src='/ParkingSystem/dwr/interface/RegServlet.js'></script>
   <script type='text/javascript' src='/ParkingSystem/dwr/util.js'></script>
  
 
<style>
#sidebar {
	height: auto;
	width: 25%;
	position: relative;
	background: red;
	float: left;
}
#map {
	height: auto;
	width: 75%;
	position: relative;
	float: left;
}
.form {
	margin: 0 auto;
	float: none;
	position: relative;
	top: -35px;
}
</style>
<link id="style_responsive" rel="stylesheet" type="text/css" media="all"
	href="../media/compressed/css/responsive.minfda6.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Parking Map</title>

<script type="text/javascript">
function getData(title)
{
     alert(title);
}

</script>


</head>
<body onload=initializeMap() >
	<!-- NavBar -->
	
		<div class="o-section o-section--park o-section--short c-srp-header">
			<div class="c-srp-header__container">
				<div class="c-srp-header__item">
					<a href="../index.jsp"> <img class="c-srp-header__logo"
						src="../images/parklogo.png" />
					</a>
				</div>
				<div class="c-srp-header__item c-srp-header__form">
					<div class="o-form c-srp-form">
						<div
							class="o-field c-srp-form__grow-field c-srp-form__location-field">
							<input class="o-field__input o-field__input--text"
								placeholder="Enter a location" name="searchPlace" type="text" id="searchPlace" />
						</div>
						<div class="o-field c-srp-form__date-field">
						 <input type="datetime-local" name="start_date" id="start_date" class="o-field__input o-field__input--text">
							<!-- <input name="start_date" type="date" id="start_date"
								class="datepicker o-field__input c-srp-form__date-input" /> -->
						</div>						
						<div class="o-field">
							<div
								class="o-field__input c-srp-form__text-field c-srp-form__field--separator">
								&rarr;</div>
						</div>
						<div class="o-field c-srp-form__date-field">
						 <input type="datetime-local" id="end_date" name="end_date" class="o-field__input o-field__input--text">
							<!-- <input name="end_date" type="date" id="end_date" 
								class="datepicker o-field__input c-srp-form__date-input" /> -->
						</div>						
						<div class="o-field c-srp-form__search-field">
							<button  onclick=addMarkertest(title) id="submit"
								class="o-field__input c-srp-form__submit-search">
								<span>Search</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	


<input id="data" type="hidden" value="" />

	<div style="display: flex; height: 89%;">
		<div id="sidebar" class="c-srp-listing__list">
			<br>
			<div class="c-srp-list-header o-wrapper o-wrapper--standard clearfix">
				<div class="c-srp-list-header__search">
					<select class=" o-field o-field__select o-field__select--small" onChange="addMarkertest(this.value);"
						id="id_temp_search_order" name="temp_search_order" 
						track="click:search-results:order-by" ><option
							value="STANDARD">Best match</option>
						<option value="DISTANCE">Distance (closest first)</option>
						<option value="RATING">Rating (High to low)</option>
						<option value="REVIEW_COUNT">No. of reviews</option>
					</select>
				</div>
			</div>
			<div class="c-srp-listing__list">
				<article class="c-srp-listing" data-listing-id="69441">
				<div class="c-srp-listing__index">A</div>

				<header class="c-srp-listing__header">
				<h4 class="c-srp-listing__title">
					<a class="c-srp-listing__title-link"
						href="../london/s/george-street-london-w1-p553e49f088026/index.html"
						track="click:search-results:list-result" track-options="A">Car
						Park on George Street, W1</a>
				</h4>
				<div class="c-srp-listing__pricing">
					<span class="c-srp-listing__pricing-price"> &pound;15.90 </span> <span
						class="period"> </span>
				</div>
				</header>
				<div class="c-srp-listing__rating">
					<span> <span class="stars rating-meter"> <span
							class="stars_empty"></span> <span class="stars_full"
							style="width: 92.2%" title="4.61 out of 5 stars"></span>
					</span> (37)
					</span>
				</div>
				</article>
				<article class="c-srp-listing" data-listing-id="54470">





				<div class="c-srp-listing__index">B</div>

				<header class="c-srp-listing__header">
				<h4 class="c-srp-listing__title">
					<a class="c-srp-listing__title-link"
						href="../london/s/bryanston-street-london-w1/index.html"
						track="click:search-results:list-result" track-options="B">Car
						Park on Bryanston Street, W1</a>
				</h4>
				<div class="c-srp-listing__pricing">
					<span class="c-srp-listing__pricing-price"> &pound;15.00 </span> <span
						class="period"> </span>
				</div>
				</header>


				<div class="c-srp-listing__rating">

					<span> <span class="stars rating-meter"> <span
							class="stars_empty"></span> <span class="stars_full"
							style="width: 93.4%" title="4.67 out of 5 stars"></span>
					</span> (459)
					</span>



				</div>
				</article>
			</div>
		</div>
		<div id="map"></div>
	</div>
</body>
</html>