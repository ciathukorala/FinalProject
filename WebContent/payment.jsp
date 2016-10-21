<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="${initParam['posturl']}" method="POST">
		<input type="hidden" name="upload" value="1">
		<input type="hidden" name="return" value="${initParam['returnurl']}">
		<input type="hidden" name="cmd" value="_cart">
		<input type="hidden" name="tx" value=68E78904HY5824419>
		<input type="hidden" name="business" value="${initParam['business']}">
		
		<input type="text" name="item_name_1" value="Product 1">
		<input type="text" name="amount_1" value="10">
		<input type="text" name="quantity_1" value="1">
		<input type="image" src="https://www.paypal.com/en_US/i/btn/btn_xpressCheckout.gif" align="left" style="margin-right:7px;">
		
	</form>
</body>
</html>