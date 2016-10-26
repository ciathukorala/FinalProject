<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<body onload="document.getElementById('id01').style.display='block'">

	<div class="w3-container">
		<div id="id01" class="w3-modal">
			<div class="w3-modal-content">
				<header class="w3-container w3-teal">
					<span
						onclick="document.getElementById('id01').style.display='none'"
						class="w3-closebtn">&times;</span>
					<h2><%=request.getAttribute("Name")%></h2>
				</header>
				<div class="w3-container">
					<div class="row">
						<div class="col-sm-7" style="background-color: lavender;">
							<p>This car park is open 24h for you.......</p>
							<p>
								<b>Contact Number:</b><%=request.getAttribute("PhoneNumber")%></p>
							<p>
								<b>Address:</b><%=request.getAttribute("Address")%></p>
							<p>
								<b>Description:</b><%=request.getAttribute("Description")%></p>
							<p>
								<b>Instruction:</b><%=request.getAttribute("Instruction")%></p>
							<p>
								<b>Price:</b><%=request.getAttribute("getPrice")%></p>
							<!--  <div class="col-sm-6" style="background-color:lavender;"><img src="C://project//ParkingSystem//WebContent//DBImages//1.jpg" class="img-circle" alt="Cinque Terre" width="150" height="50"></div> -->
						</div>
						<br>
						<center>
							<button type="button" class="btn btn-warning btn-lg">
								<a href="BookingPark/payPal.jsp">Book This Space</a>
							</button>
							<br>
							<br>
							<button type="button" class="btn btn-warning btn-lg">More
								Information</button>
						</center>
					</div>
				</div>
				</p>
				</footer>
			</div>
		</div>
	</div>
</body>
</html>

