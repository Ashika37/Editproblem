<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Flight List</title>
<style>
body {
	 
font-family: 'lato', sans-serif;
}
 
.flat-table {
	 display: block;
	 font-family: sans-serif;
	 -webkit-font-smoothing: antialiased;
	 font-size: 115%;
	 overflow: auto;
	 width: auto;
}
 .flat-table th {
	 background-color: #70c469;
	 color: white;
	 font-weight: normal;
	 padding: 20px 30px;
	 text-align: center;
}
 .flat-table td {
	 background-color: #eee;
	 color: #6f6f6f;
	 padding: 20px 30px;
}
 

.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
}
.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}

body {
  background-image: url(file:///C:/Users/pcuser/Downloads/Airline/AirlineReservation/src/main/webapp/WEB-INF/images/img13.jpg);
  -webkit-background-size:cover;
  background-size:cover;
  background-position: center center;
  height: 100vh;
}
.menu-area li a {
  text-decoration: none;
}

.menu-area li {
  list-style-type: none;
}

.custom-padding{
  padding-top: 25px;
}
div.transbox {margin: 50px;background-color: #ffffff;border: 3px solid black;opacity: 0.6;filter: alpha(opacity=30);height:400px;width:600px; 

}
nav {
  position: relative;
  width: calc(100% - 60px);
  margin: 0 auto;
  padding: 20px 0;
  background: #333;
  z-index: 1;
  text-align: right;
  padding-right: 2%;
}

.logo {
  width: 15%;
  float: left;
  text-transform: uppercase;
  color: #fff;
  font-size: 25px;
  text-align: left;
  padding-left: 2%;
}

.menu-area li {
  display: inline-block;
}

.menu-area a {
  color: #fff;
  font-weight: 300;
  letter-spacing: 1px;
  text-transform: uppercase;
  display: block;
  padding: 0 25px;
  font-size: 14px;
  line-height: 30px;
  position: relative;
  z-index: 1;
}
.menu-area a:hover {
  background: tomato;
  color: #fff;
}

.menu-area a:hover:after {
  transform: translateY(-50%) rotate(-35deg);
}

nav:before {
  position: absolute;
  content: '';
  border-top: 10px solid #333;
  border-right: 10px solid #333;
  border-left: 10px solid transparent;
  border-bottom: 10px solid transparent;
  top: 100%;
  left: 0;
}

nav:after {
  position: absolute;
  content: '';
  border-top: 10px solid #333;
  border-left: 10px solid #333;
  border-right: 10px solid transparent;
  border-bottom: 10px solid transparent;
  top: 100%;
  right: 0;
}


.link-area
{
  position:fixed;
  bottom:20px;
  left:20px;  
  padding:15px;
  border-radius:40px;
  background:tomato;
}
.link-area a
{
  text-decoration:none;
  color:#fff;
  font-size:25px;
}

a:link, a:visited {
  background-color: #235d75 ;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: #f44336;
}
</style>
</head>
<body>

<form:form method="post" action="passengerDetail" modelAttribute="flightdetails">
<div class="custom-padding">
  <nav>
    <div class="logo">Logo</div>

    <ul class="menu-area">
      <li><a href="#">LOGGED IN</a></li>

    </ul>
  </nav>
</div>


      <div style="padding-top:20px;padding-left:100px;">
		<h3>FLIGHT DETAILS</h3>
		</div>
		<div style="padding-top:20px;padding-left:100px;">
		<table class="flat-table">
		<thead>
			<tr> 
				<th class="col col-1">Flight Name</th>
				<th class="col col-2">FLIGHT DATE</th>
				<th class="col col-3">DEPARTURE TIME</th>
				<th class="col col-4">ARRIVAL TIME</th>
				<th class="col col-5">DURATION</th>
				<th class="col col-6">Book</th>
			</tr>
		</thead>
		
		<tbody>
		<c:forEach var="flightdetails" items="${list}">
				<tr>
					
					<td class="col col-1">${flightdetails.flight_name}</td>
					<td class="col col-2">${flightdetails.flight_date}</td>
					<td class="col col-3">${flightdetails.departure_time}</td>
					<td class="col col-4">${flightdetails.arrival_time}</td>
					<td class="col col-5">${flightdetails.duration}</td>
					<td>
					<a href="${pageContext.request.contextPath}/passengerDetail/${flightdetails.flight_name}">Book</a></td>
					
				</tr>
				
			</c:forEach>
		</tbody>
		</div>
			</table>
 </form:form>


</body>
</html>