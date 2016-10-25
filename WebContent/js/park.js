var map;
var contentString;

var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
var labelIndex = 0;

function initializeMap() {
	var latlng = new google.maps.LatLng(7.0873101, 80.0143656);
	var options = {
		zoom : 15,
		center : latlng,
		mapTypeId : google.maps.MapTypeId.ROADMAP
	};

	map = new google.maps.Map(document.getElementById('map'), options);

}

function addMarkertest() {
	alert("hello");
	RegServlet.getParkList(gotParkList);
}

function gotParkList(receivedData) {
	alert("Hi");
	var raw = receivedData.split("|");

	alert(raw.length);

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

	/*function addMarker(feature) {
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

	var contentString = '<div id="content">'
			+ '<div id="siteNotice">'
			+ '</div>'
			+ '<h1 id="firstHeading" class="firstHeading">Uluru</h1>'
			+ '<div id="bodyContent">'
			+ '<p><b>Uluru</b>, also referred to as <b>Ayers Rock</b>, is a large '
			+ 'sandstone rock formation in the southern part of the '
			+ 'Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) '
			+ 'south west of the nearest large town, Alice Springs; 450&#160;km '
			+ '(280&#160;mi) by road. Kata Tjuta and Uluru are the two major '
			+ 'features of the Uluru - Kata Tjuta National Park. Uluru is '
			+ 'sacred to the Pitjantjatjara and Yankunytjatjara, the '
			+ 'Aboriginal people of the area. It has many springs, waterholes, '
			+ 'rock caves and ancient paintings. Uluru is listed as a World '
			+ 'Heritage Site.</p>'
			+ '<p>Attribution: Uluru, <a href="https://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'
			+ 'https://en.wikipedia.org/w/index.php?title=Uluru</a> '
			+ '(last visited June 22, 2009).</p>' + '</div>' + '</div>';*/

		for (var i = 0; i <= raw.length - 1; i++) {

			var lebal = raw[i].split(",");
			alert(lebal);
			addMarker({
				position : new google.maps.LatLng(lebal[2], lebal[1]),
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
					alert("click icon");
					infowindow.open(map, marker);
					document.getElementById("landmark").value = 5;
					/*SetUserName();*/
					alert(document.getElementById("landmark").value);
					
					
				});

			}

			var infowindow = new google.maps.InfoWindow({});
			
			
			var contentString = '<div id="content">'
					+ '<div id="siteNotice">'
					+ '</div>'
					+ '<h1 id="firstHeading" class="firstHeading">'+lebal[0]+'</h1>'
					+ '<div id="bodyContent">'
				
					+ 'Heritage Site.</p>'
					+ '<p>Attribution: Uluru, <a href="../ShowMap?title='+lebal[0]+'">'
					+ 'https://en.wikipedia.org/w/index.php?title=Uluru</a> '
					+ '(last visited June 22, 2009).</p>' + '</div>' + '</div>';
			
		}
	
		
	var circle = new google.maps.Circle({
		center : {
			lat : 7.0873121,
			lng : 80.0143156
		},
		map : map,
		radius : 1000, // IN METERS.
		fillColor : '#FF6600',
		fillOpacity : 0.3,
		strokeColor : "#FFF",
		strokeWeight : 0	
	});

}

/*
function SetUserName()
{
    var userName = "Shahid Bhat";
    '<%Session["UserName"] = ' + userName + '"; %>';
     alert('<%=Session["userName"] %>');
}*/