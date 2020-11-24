<%@ taglib  uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<link rel="stylesheet" type="text/css" href="d3.css">
</head>
<body>
<c:forEach items="${list}" var="carddetails">
<button class="card">
  <div class="row clearfix">
    <div class="left big">${carddetails.mobileno}</div>
    <div class="right"><p><span class="big">P</span>ierce &amp; <span class="big">P</span>ierce</p><p><span class="med no-space">M</span><span class="small no-space">ergers and </span><span class="med no-space">A</span><span class="small no-space">cquisitions</span></p></div>
  </div>
  <div class="row">
    <p><span class="big"></span> <span class="big">${carddetails.name}</span></p>
    <p><span class="big"></span><span class="big"></span><strong>${carddetails.work}</strong></p>
  </div>
  <div class="row">
    <p><span class="med"><strong>${carddetails.address}</strong> </span><span class="small"></span><span class="med"></span><span class="small"> </span><span class="med"></span><span class="small"></span><span class="med">Y</span><span class="small"></span><span class="med"></span><span class="small"></span><span class="med"><strong>${carddetails.mobileno}</strong></span><span class="small"></span><span class="med"></span>
    </p>
  </div>
</button>
 </c:forEach>
</body>
</html>