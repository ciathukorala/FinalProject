  



	var map;
	function initialize() {
        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 18,
          center: {lat: 6.9411847, lng: 79.8796608},
          mapTypeId: google.maps.MapTypeId.ROADMAP,

        });

        var iconBase = 'https://maxcdn.icons8.com/Color/PNG/24/';
        var icons = {
          parking: {
            icon: iconBase + 'Transport/paid_parking-24.png'
          },
          library: {
            icon: iconBase + 'Business/library-24.png'
          },
          info: {
            icon: iconBase + 'User_Interface/info_squared-24.png'
          }
        };

        function addMarker(feature) {
            var marker = new google.maps.Marker({
            position: feature.position,
            icon: icons[feature.type].icon,
            label: feature.label ,
            animation: google.maps.Animation.DROP,
            map: map
          });

          marker.addListener('click', function() {
           infowindow.setContent(marker.label);
           infowindow.open(map, marker);
           console.log('clicked');
           console.log(marker.label);
         });

        }

        var infowindow = new google.maps.InfoWindow({});

        var features = [
          {
            position: new google.maps.LatLng(6.9409088, 79.8801676),
            type: 'library',
            label:'Virtusa Car Park',

          }, {
            position: new google.maps.LatLng(6.941687, 79.8812089),
            type: 'parking',
            label:'Pearson Car Park'
          }, {
            position: new google.maps.LatLng(6.9412833, 9.8796731),
            type: 'parking',
            label:'Virtusa Car Park'
          }, {
            position: new google.maps.LatLng(6.9409838, 79.8788037),
            type: 'parking',
            label:'Virtusa Car Park'
          }, {
            position: new google.maps.LatLng(6.9400928, 79.8789408),
            type: 'parking',
            label:'Virtusa Car Park'
          }, {
            position: new google.maps.LatLng(6.9414306, 79.8797494),
            type: 'parking',
            label:'Pearson Car Park'
          }, {
            position: new google.maps.LatLng(-33.91784, 151.23094),
            type: 'info'
          }, {
            position: new google.maps.LatLng(-33.91682, 151.23149),
            type: 'info'
          }, {
            position: new google.maps.LatLng(-33.91790, 151.23463),
            type: 'info'
          }, {
            position: new google.maps.LatLng(-33.91666, 151.23468),
            type: 'info'
          }, {
            position: new google.maps.LatLng(-33.916988, 151.233640),
            type: 'info'
          }, {
            position: new google.maps.LatLng(-33.91662347903106, 151.22879464019775),
            type: 'parking'
          }, {
            position: new google.maps.LatLng(-33.916365282092855, 151.22937399734496),
            type: 'parking'
          }, {
            position: new google.maps.LatLng(-33.91665018901448, 151.2282474695587),
            type: 'parking'
          }, {
            position: new google.maps.LatLng(-33.919543720969806, 151.23112279762267),
            type: 'parking'
          }, {
            position: new google.maps.LatLng(-33.91608037421864, 151.23288232673644),
            type: 'parking'
          }, {
            position: new google.maps.LatLng(-33.91851096391805, 151.2344058214569),
            type: 'parking'
          }, {
            position: new google.maps.LatLng(-33.91818154739766, 151.2346203981781),
            type: 'parking'
          }, {
            position: new google.maps.LatLng(-33.91727341958453, 151.23348314155578),
            type: 'library'
          }
        ];

        for (var i = 0, feature; feature = features[i]; i++) {
          addMarker(feature);
        }

        var circle = new google.maps.Circle({
            center: {lat: 6.941335, lng:79.879161},
            map: map,
            radius: 100,          // IN METERS.
            fillColor: '#FF6600',
            fillOpacity: 0.3,
            strokeColor: "#FFF",
            strokeWeight: 0         // DON'T SHOW CIRCLE BORDER.
        });

      }