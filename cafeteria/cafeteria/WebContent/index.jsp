<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link href=”bootstrap/css/bootstrap.css” rel=”stylesheet” type=”text/css”>
<script type=”text/javascript” src=”bootstrap/js/bootstrap.js”></script>
</head>
<body >
	<div class="row jumbotron text-center font-italic font-weight-bold text-light">
		<center><h1>CANTEEN</h1></center>
	</div>
	<div class="container">
		<div class="row md-5">
			<form action="useraction.jsp" >
			<H3>CUSTOMER LOGIN</H3>
			<input type="text" name="rno" PLACEHOLDER="CUSTOMERid"><BR><BR>
			<input type="password" name="upwd" PLACEHOLDER="password"><BR><BR>
			<input type="submit"  value="LOGIN">
			</form>
			<form action="adminaction.jsp">
			<H2>ADMIN LOGIN</H2>
			<input type="text" name="ano" PLACEHOLDER="ADMINid"><BR><BR>
			<input type="password" name="apwd" PLACEHOLDER="password"><BR><BR>
			<input type="submit"  value="LOGIN">
			</form>
		</div>
	</div>
	<div class="row">
	<center>
	<h4>NOT REGISTERED?</h4>
	<a href=registration.html>REGISTER</a>
	</center>
	</div>
	

</body>
</html>