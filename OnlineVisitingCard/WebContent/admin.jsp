
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link href="https://unpkg.com/bootstrap@4.1.1/dist/css/bootstrap.min.css" rel="stylesheet"/>

</head>
<body>	
<div class="container pt-3 col-sm-4">
	<form action="adminpage" method="post">
	
		<div class="card">
		<div class="card-header bg-dark text-white">
		
		<div class="row">
		
		<div class="col-md-6"><h4>Admin Sign In</h4></div>
		<div class="col-md-6 text-right"><a href="index.jsp" class="text-white">Back</a></div>
		</div>
		</div>
		
<div class="card-body">
<i><b>Enter Email</b></i>
			<div class="form-group"><input type="text" name="email" class="form-control" placeholder="Enter Email"></div>
<i><b>Enter Password</b></i>
	<div class="form-group"><input type="password" name="password" class="form-control" placeholder="Enter Password"></div>

</div>
<div class="card-footer bg-dark" align="center">
	
	<div ><input type="submit" value="Login" class="btn btn-primary" style="border-radius:12px;"> </div>
	

</div>
		</div>
</form>

</div>
</body>
</html>