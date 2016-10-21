  

 var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
      var labelIndex = 0;


	var map;
	var contentString;
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
            
            var infowindow = new google.maps.InfoWindow({
                content: contentString
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
            label:labels[labelIndex++ % labels.length],
           contentString:'<div id="content">'+'virtusa car park'+'</div>',

          }, {
            position: new google.maps.LatLng(6.941687, 79.8812089),
            type: 'library',
            label:labels[labelIndex++ % labels.length],
          }, {
            position: new google.maps.LatLng(6.9412833, 79.8812045),
            type: 'library',
            label:labels[labelIndex++ % labels.length],
          }, {
              position: new google.maps.LatLng(6.9400928, 79.8789408),
              type: 'parking',
              label:'Virtusa Car Park'
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