<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://unpkg.com/bootstrap@4.1.1/dist/css/bootstrap.min.css" rel="stylesheet"/>
<title>Enter Details</title>
</head>
<body>
<center>
<h1>Welcome Sir!</h1>
<h4>Please Fill your details</h4>
</center>

<div class="container pt-3 col-sm-6">
<div class="card">
<form action="cusdetails" method="post">
<div class="card-header bg-dark text-white">


<h3></h3>

<div class="row">
		
		<div class="col-md-6"><h4>Enter Details Here</h4></div>
		<div class="col-md-6 text-right"><a href="index.jsp" class="text-white">Logout</a></div>
		
		
		
</div>



</div>
<div class="card-body">
	<i><b>Name*</b></i>
<div class="form-group"><input type="text" name="name" placeholder="Enter Name" class="form-control"></div>
	<i><b> Email*</b></i>
	<div class="form-group"><input type="text" name="email" placeholder="Enter email" class="form-control"></div>
	<i><b> Address*</b></i>
	<div class="form-group"><textarea rows="4" cols="4" name="address" placeholder="Enter Address" class="form-control"></textarea></div>
	<i><b> Mobile No*</b></i>
	<div class="form-group"> <input type="text" name="mobileno" placeholder="Enter MobileNo" class="form-control"></div>
	<i><b> Company Name*</b></i>
	<div class="form-group"><input type="text" name="company" placeholder="Enter company" class="form-control"></div>
	<i><b>Website*</b></i>
	<div class="form-group"> <input type="text" name="website" placeholder="Enter website" class="form-control"></div>
	<i><b>Work*</b></i>
	<div class="form-group"> <input type="text" name="work" placeholder="Enter Work" class="form-control"></div>
	<div class="row">
	<i class="col-md-2 text-left"><b>Age</b></i>
	 <i class="col-md-5 text-center"><b>Height</b></i>
	 <i class="col-md-0 text-right"><b>Weight</b></i>
	 </div>
	<div class="form-group">
	<input type="number" min="20" placeholder="Age Years" name="age">
	<input type="number" min="0" placeholder="Height" name="height">
	<input type="number" min="20" placeholder="Weight" name="weight"></div>
	<i><b>Number of Copies*</b></i>
	<div class="form-group"><input type="number" min="1" max="20" name="copies" ></div>
	
	</div>
	<div align="center" class="card-footer bg-dark">
	<input type="submit" value="Submit" class="btn btn-primary"></div>
	
</form>
</div>
<hr size="30"></hr>
<a href="h.jsp" ><img src="demo.PNG" class="img-rounded" width="200" height="200" ></a>
	<a href="d33.jsp"><img src="demo2.PNG" width="200" height="200"></a>
	<a href="d66.jsp"><img src="demo3.PNG" width="200" height="200"></a>
	<br><br>
	<a href="d22.jsp"><img src="demo4.PNG" width="200" height="200"></a>
	<a href="d77.jsp"><img src="demo5.PNG" width="200" height="200"></a>

</div>


</body>
</html>