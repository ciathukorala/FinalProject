<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="registation" action="RegServlet" method="post">
<input type="hidden" name="pagename" value="register ">
name:<input type="text" name="FirstName">
Last Name:<input type="text" name="lastName">
Email:<input type="text" name="Email">
<input type="submit" name="submit" value="submit">
</form>
</body>
</html>