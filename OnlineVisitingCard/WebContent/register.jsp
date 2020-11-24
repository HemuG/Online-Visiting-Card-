<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://unpkg.com/bootstrap@4.1.1/dist/css/bootstrap.min.css" rel="stylesheet"/>
<title>Register Page</title>

</head>
<body>
<div class="container rounded pt-3 col-sm-4">
<form action="registerpage" method="POST">
<div class="card ">

<div class="card-header bg-dark text-white">
<div class="row">
 <div class="col-md-6"><h4>Register Here</h4></div>
 <div class="col-md-6 text-right"><a href="index.jsp" class="text-white">Back</a></div>

</div>
</div>

<div class="card-body">
<i><b>Enter Name</b></i>
<div class="form-group"><input type="text" name="name" class="form-control" placeholder="Enter Name"></div>
<i><b>Enter Email</b></i>
<div class="form-group"><input type="text" name="email" class="form-control" placeholder="Enter Email"></div>
<i><b>Enter Password</b></i>
<div class="form-group"><input type="password" name="password" class="form-control" placeholder="Enter Password"></div>
</div> 
<div align="center" class="card-footer bg-dark">
<button type="submit" class="btn btn-primary" style="border-radius:12px;">Register</button> 

</div>



</div>
</form>
</div>
</body>
</html>