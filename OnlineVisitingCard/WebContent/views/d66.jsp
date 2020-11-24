<%@ taglib  uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>

<link rel="stylesheet" type="text/css" href="d6.css">
</head>
<body>
<c:forEach items="${list}" var="carddetails">
<div class="container">
  <div class="card">
    <div class="front">
      <div class="logo"><span></span></div>
    </div>
    <div class="back">
      <h1>${carddetails.name}<span><i></i>${carddetails.work}</span></h1>
      <ul>
        <li>${carddetails.mobileno}</li>
        <li>${carddetails.email}</li>
        <li>${carddetails.website}</li>
        </ul>
    </div>
    </div>
  </div>
</c:forEach>
</body>
</html>