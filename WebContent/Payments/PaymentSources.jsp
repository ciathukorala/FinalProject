<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="../css/jquery-ui.css" />

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
	$(document).ready(function(){
		var date_input=$('input[name="date"]'); //our date input has the name "date"
		var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
		date_input.datepicker({
			format: 'mm/dd/yyyy',
			container: container,
			todayHighlight: true,
			autoclose: true,
		})
	})
</script>

<style type="text/css">
    h2{
        margin: 30px 0;
        padding: 0 200px 15px 0;
        border-bottom: 1px solid #E5E5E5;
    }
	h5{
        border-bottom: 1px solid #E5E5E5;
    }
	.bs-example{
    	margin: 20px;
    }
</style>


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
							<li><a href="#">Profile</a></li>	
							<li><a href="contact.jsp">Contact Us</a></li>
						</ul>
                </div>
				<!--- //End-top-nav---->
				<div class="clear"> </div>
			</div>
			<!---//End-header---->


<!-- start  body -->

<div class="container-fluid">
  <div class="row">
  <div class="col-sm-1"></div>
  <div class="col-sm-2"><button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg1">Add Payment Details</button><br><br><br>
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Withdrawal Details</button>
</div>
    <div class="col-sm-8" >
    <h2><b>Transactions</b></h2>
    
    <form class="form-horizontal" method="post">
     <div class="form-group ">
      <label class="control-label col-sm-2 requiredField" for="date">
       Transaction Dates -:       
      </label>
      <div class="col-sm-6">
       <div class="input-group">       
        <input class="form-control" id="FromDate" name="date" placeholder="MM/DD/YYYY-From Date" type="text"/>
       </div>
       <span>
       <br>
       </span>
       <div class="input-group">       
        <input class="form-control" id="ToDate" name="date" placeholder="MM/DD/YYYY-To Date" type="text"/>
       </div>
      </div>
     </div>
     <div class="form-group">
      <div class="col-sm-10 col-sm-offset-2">       
       <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Submit</button>       
      </div>
     </div>
    </form>
    <div id="demo" class="collapse">
    <table class="table" style="background-color:lavenderblush;">
  <thead class="thead-inverse">
    <tr>
      <th>#</th>
      <th>Name</th>
      <th>Transaction Type</th>
      <th>Amount</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Ishara</td>
      <td>Payment</td>
      <td>1000</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Ishara</td>
      <td>Piyumi</td>
      <td>Vimanshi</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Payment</td>
      <td>Payment</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
</div>
</div>
    
  </div>
</div>

<!-- PaymentSource-->

<div class="modal fade bs-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="bs-example">
    <h2>Add a Credit/Debit card</h2>
    <form class="form-horizontal" method="post" action="../BankServlet">
		<div class="form-group">
            <label class="control-label col-xs-4" ><img src="../images/download.jpg" class="img-circle" alt="Cinque Terre" width="50" height="40"></label>
            <div class="col-xs-4">
                <h5><b>Secure credit card payment</b></h5>
            </div>
        </div>
		<div class="form-group">
            <label class="control-label col-xs-4" for="inputName">Name on Card:</label>
            <div class="col-xs-2">
                <input type="text" class="form-control" name="inputFName" placeholder="session value">
            </div>
			 <div class="col-xs-2">
                <input type="text" class="form-control" name="inputLName" placeholder="session value">
            </div>
	    </div>
        <div class="form-group">
            <label class="control-label col-xs-4" for="inputCardNumber">Card Number:</label>
            <div class="col-xs-4">
                <input type="password" class="form-control" name="inputCardNumber" placeholder="Card Number" required>
				<h6>The number on the front of your credit card</h6>
            </div>
			<div class="col-xs-2">
               <img src="../images/master.jpg" class="img" alt="Cinque Terre" width="100" height="40">
            </div>
        </div>
		<div class="form-group">
            <label class="control-label col-xs-4">Expiry date:</label>
            <div class="col-xs-2">
                <input type="date" name="date">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4" for="CVV">CVV:</label>
            <div class="col-xs-2">
                <input type="password" class="form-control" name="CVV" required >
				<h6>3 or 4 digit security code </h6>
            </div>
        </div>
        <div class="form-group">
			<label class="control-label col-xs-4"></label>
            <div class="col-xs-4">
                <h5><b>Billing address</b></h5>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4" for="HouseName">House Name/No:</label>
            <div class="col-xs-4">
                <input type="text" class="form-control" name="HouseName" placeholder="House No">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4" for="StreetAddress">Street Name:</label>
            <div class="col-xs-4">
                <input type="tel" class="form-control" name="StreetAddress" placeholder="Street Name">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4" for="City">City:</label>
            <div class="col-xs-4">
                <input type="text" class="form-control" name="City" placeholder="City Name">
            </div>
        </div>        
        <div class="form-group">
            <div class="col-xs-offset-4 col-xs-4">
                <label class="checkbox-inline">
                    <input type="checkbox" value="agree">  I agree to the <a href="#">Terms and Conditions</a>.
                </label>
            </div>
        </div>
        <br>
        <div class="form-group">
            <div class="col-xs-offset-4 col-xs-6">
                <input type="submit" class="btn btn-success" value="Verify payment details">
                <input type="reset" class="btn btn-default" value="Cancel">
            </div>
        </div>
    </form>
</div>
    </div>
  </div>
</div>

<!-- Withdrawal details -->

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="bs-example">
    <h2>Bank Account Information</h2>
    <form class="form-horizontal" method="post" action="../WithdrawalServlet">
		<div class="form-group">
            <label class="control-label col-xs-4" ><img src="../images/download.jpg" class="img-circle" alt="Cinque Terre" width="50" height="40"></label>
            <div class="col-xs-5">
                <h5><b>Add your preferred withdrawal method below.</b></h5>
            </div>
        </div>
		<div class="form-group">
            <label class="control-label col-xs-4" for="BankName">Bank Name:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="BankName" placeholder="Bank">
            </div>			 
	    </div>
        <div class="form-group">
            <label class="control-label col-xs-4" for="inputCardNumber">Account Number:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="AccountNumber" placeholder="Account Number" required>
			</div>			
        </div>
		<div class="form-group">
            <label class="control-label col-xs-4">Bank Code:</label>
            <div class="col-xs-5">
               <input type="text" class="form-control" name="BankCode" placeholder="Code" required>			
            </div>
        </div>
        
        <div class="form-group">
			<label class="control-label col-xs-4"></label>
            <div class="col-xs-5">
                <h5><b>Account holder details</b></h5>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4" for="inputName">Account Holder Name:</label>
            <div class="col-xs-2">
                <input type="text" class="form-control" name="inputFName" placeholder="session value">
            </div>
			 <div class="col-xs-2">
                <input type="text" class="form-control" name="inputLName" placeholder="session value">
            </div>
	    </div>
        <div class="form-group">
            <label class="control-label col-xs-4" for="HouseName">House Name/No:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="HouseName" placeholder="House No">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4" for="StreetAddress">Street Name:</label>
            <div class="col-xs-5">
                <input type="tel" class="form-control" name="StreetAddress" placeholder="Street Name">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-4" for="City">City:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="City" placeholder="City Name">
            </div>
        </div>        
        <div class="form-group">
            <div class="col-xs-offset-4 col-xs-4">
                <label class="checkbox-inline">
                    <input type="checkbox" value="agree">  I agree to the <a href="#">Terms and Conditions</a>.
                </label>
            </div>
        </div>
        <br>
        <div class="form-group">
            <div class="col-xs-offset-4 col-xs-6">
                <input type="submit" class="btn btn-success" value="Verify payment details">
                <input type="reset" class="btn btn-default" value="Cancel">
            </div>
        </div>
    </form>
</div>
    </div>
  </div>
</div>
<br><br><br><br><br><br><br>
<!-- end od body -->

		           
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
                    	<span><i>HOT LINES -:</i></span>
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

