<%@ taglib  uri = "http://java.sun.com/jsp/jstl/core" prefix="hemu"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Details</title>
<link href="https://unpkg.com/bootstrap@4.1.1/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>

 	<div class="container">
 	
 	<table border="1" class="table table-striped table-border" >
 	<tr class="thead-dark">
 	<th>Name</th>
 	<th>Email</th>
 	<th>Mobile Number</th>
 	<th>Company</th>
 	<th>Address</th>
 	<th>Website</th>
 	<th>Work</th>
 	<th>Age</th>
 	<th>Weight</th>
 	<th>Height</th>
 	<th>Copies</th>
 	<th>Price</th>
 	</tr>
 	<hemu:forEach items="${list}" var="customerdetails">
 	<tr>
 	<td>${customerdetails.name}</td>
 	<td>${customerdetails.email}</td>
 	<td>${customerdetails.mobileno}</td>
 	<td>${customerdetails.company}</td>
 	<td>${customerdetails.address}</td>
 	<td>${customerdetails.website}</td>
 	<td>${customerdetails.work}</td>
 	<td>${customerdetails.age}</td>
 	<td>${customerdetails.weight}</td>
 	<td>${customerdetails.height}</td>
 	<td>${customerdetails.copise}</td>
 	<td>${customerdetails.price}</td>
 	</tr>
 	</hemu:forEach>
 	
 	</table>
 	<form action="index.jsp">
 	
 	<div align="center"><button class="btn btn-outline-primary" style="border-radius:12px;">Logout</button></div>
 	</form>
 	
 	</div>

</body>
</html>