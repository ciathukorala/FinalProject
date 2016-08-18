<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

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
</head>
<body>

<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Large modal</button>

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
</body>
</html>

