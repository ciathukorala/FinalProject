var map;
var contentString;

var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
var labelIndex = 0;

function initializeMap() {
	var latlng = new google.maps.LatLng(7.0873101, 80.0143656);
	var options = {
		zoom : 12,
		center : latlng,
		mapTypeId : google.maps.MapTypeId.ROADMAP
	};

	map = new google.maps.Map(document.getElementById('map'), options);

	var geocoder = new google.maps.Geocoder();

	document.getElementById('submit').addEventListener('click', function() {
		geocodeAddress(geocoder, map);
	});

}

function geocodeAddress(geocoder, resultsMap) {
	var address = document.getElementById('searchPlace').value;
	geocoder.geocode({
		'address' : address
	}, function(results, status) {
		if (status === 'OK') {

			var val = results[0].geometry.location;
			alert(val);

			var circle = new google.maps.Circle({
				center : val,
				map : map,
				radius : 1000, // IN METERS.
				fillColor : '#FF6600',
				fillOpacity : 0.3,
				strokeColor : "#FFF",
				strokeWeight : 0
			});

		} else {
			alert('Geocode was not successful for the following reason: '
					+ status);
		}
	});
}

function addMarkertest(title) {
alert(title);
	var searchPlace = document.getElementById('searchPlace').value;
	var start_date = document.getElementById('start_date').value;
	var end_date = document.getElementById('end_date').value;

	alert(start_date);
	alert(end_date);
	if((start_date && end_date &&searchPlace)!='' ){
		alert("come");
	RegServlet.getParkList(searchPlace, start_date,end_date,title, gotParkList );
	}else{
		alert("Please Enter Start&End Date and Time");
	}
}

function gotParkList(receivedData) {

	var raw = receivedData.split("|");

	var iconBase = 'https://maxcdn.icons8.com/Color/PNG/24/';
	var icons = {
		parking : {
			icon : iconBase + 'Transport/paid_parking-24.png'
		},
		library : {
			icon : iconBase + 'Business/library-24.png'
		},
		info : {
			icon : iconBase + 'User_Interface/info_squared-24.png'
		}
	};

	for (var i = 0; i <= raw.length - 1; i++) {

		var lebal = raw[i].split(",");

		addMarker({
			position : new google.maps.LatLng(lebal[3], lebal[2]),
			type : 'library',
			label : labels[labelIndex++ % labels.length],

		});

		function addMarker(feature) {
			var marker = new google.maps.Marker({
				position : feature.position,
				icon : icons[feature.type].icon,
				label : feature.label,
				animation : google.maps.Animation.DROP,
				map : map
			});

			var infowindow = new google.maps.InfoWindow({
				content : contentString
			});

			marker.addListener('click', function() {
				infowindow.open(map, marker);
			});

		}

		var infowindow = new google.maps.InfoWindow({});

		var contentString = '<div id="content">' + '<div id="siteNotice">'
				+ '</div>' + '<h1 id="firstHeading" class="firstHeading">'
				+ lebal[1] + '</h1>' + '<div id="bodyContent">'

				+ 'Booking Parking Quickly.</p>' + 'Parking Place Price -:</p>'
				+ lebal[4] + '/=' + '<p>Book Now:<a href="../ShowMap?Id='
				+ lebal[0] + '">' + 'Click Hear</a> '

	}

	
}