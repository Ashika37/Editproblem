<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FLIGHT DETAILS</title>
<style>
      body, div, form,  p { 
      font-family:Copperplate,Copperplate Gothic Light,fantasy;
      line-height: 30px;
      }
      
      body{
      background-image: url(https://media.defense.gov/2013/May/10/2000050859/-1/-1/0/130510-F-AM292-012.JPG); 
      background-repeat: no-repeat;
      background-size: cover;
      }
      h1 {
      font-size: 32px;
      color:#464b5a;
      z-index: 2;
      text-align :center;
      padding-left:3px;
      padding-top : 10px;
      font-family:Impact, fantasy; 
      font-weight: 200;
      }
      h2 {
      font-weight: 400;
      color:#35366f;
      }
      .testbox {
      padding: 20px;
      opacity:0.9;
      }
      
      form {
      width: 50%;
      padding: 20px;
      border-radius: 20px;
      box-shadow: 0 0 40px 0 #095484; 
      background: white;
      }
      
      .banner {
      position: relative;
      background-size: cover;
      }

      input {
      border: 1px solid #1f1c1c;
      border-radius: 5px;
      width: 95%;
      padding: 5px;
      }

      .item input:hover{
      border: 1px solid transparent;
      box-shadow: 0 0 8px 0 black; 
      }

      btn_button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 7px; 
      font-size: 16px;
      margin-top: 20px;
      text-align: center;
      background-color: white;
      }
      
		 h3 {
   		color: white;
   		font-size: 26px;
   		font-weight: 350;
   		font-family:Forte; 
		}

		.table-fill {
 			border-radius:3px;
  			border-collapse: collapse;
 			 height: 100px;
		}
 
	th {
 		color:#D5DDE5;;
 	    background:#1b1e24;
  		border-bottom:4px solid #9ea7af;
  		border-right: 1px solid #343a45;
  		font-size:15px;
  		font-weight: 100;
 		padding:14px;
  		text-align:centre;
	}

  
	tr {
 		 border-top: 1px solid #C1C3D1;
 		 border-bottom-: 1px solid #C1C3D1;
  		 color:#666B85;
 		 font-size:14px;
 		
  		}
 
	td {
			background:#EBEBEB;
  			padding:15px;
  			text:centre;
  			font-size:14px;
  			border-right: 1px solid #C1C3D1;
  			border-left: 1px solid #C1C3D1;
  			border-bottom: 1px solid #C1C3D1;
  			opacity:5.0;
		}
		
		td1 {
			background:#EBEBEB;
  			padding:15px;
  			text:centre;
  			font-size:14px;
  			border-right: 1px solid #C1C3D1;
  			border-left: 1px solid #C1C3D1;
  			border-bottom: 1px solid #C1C3D1;
  			opacity:5.0;
		}
		.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

a:link, a:visited {
  background-color: #4599c7;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}



nav {
  position: relative;
  width: calc(100% - 60px);
  margin: 0 auto;
  padding: 20px 0;
  background: black;
  z-index: 1;
  text-align: right;
  padding-right: 2%;
  opacity: 0.7;
}

.logo {
  width: 25%;
  float: left;
font-family:Lucida Calligraphy;
  text-align: left;
  color:white;
  font-size:35px;
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
  padding: 1 27px;
  font-size: 14px;
  line-height: 21px;
  position: relative;
  z-index: 1;
  
}
.menu-area a:hover {

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

*, *:after, *:before {
	box-sizing: box-sizing;
}
    </style>
</head>

  <body>
  <div style="padding-top: 25px;">
  <nav>
    <div class="logo"> 
    Fly Height&nbsp;&nbsp;&nbsp;
	
    </div>
    <ul class="menu-area">
    <li> <a style="border: 2px solid #f8f9ff;" href="${pageContext.request.contextPath}/addFlight">Add Flight</a></li>
      <li> <a style="border: 2px solid #f8f9ff;" href="${pageContext.request.contextPath}/PassengerList">View Passenger</a></li>
        	  <li><a style="border: 2px solid #f8f9ff;" href="${pageContext.request.contextPath}/homepage" >LOGOUT</a></li>
    </ul>
  </nav>
</div>
  <div class="testbox">

   </div>    
		<center>
	<div class="table-title">
		<h3>FLIGHT DETAILS</h3>
		</div>

		<table class="table-fill">
		<thead>
			<tr>
				<th>FLIGHT ID</th>
				<th>FLIGHT NAME</th>
				<th>FROM</th>
				<th>TO</th>
				<th>FLIGHT DATE</th>
				<th>DEPARTURE TIME</th>
				<th>ARRIVAL TIME</th>
				<th>DURATION</th>
				<th>PRICE</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		
		<tbody>
		<c:forEach var="flightdetails" items="${flightList}">
				<tr>
					<td>${flightdetails.flight_id}</td>
					<td>${flightdetails.flight_name}</td>
					<td>${flightdetails.from_loc}</td>
					<td>${flightdetails.to_loc}</td>
					<td>${flightdetails.flight_date}</td>
					<td>${flightdetails.departure_time}</td>
					<td >${flightdetails.arrival_time}</td>
					<td>${flightdetails.duration}</td>
					<td>${flightdetails.price}</td>
					<td>
					<a href="${pageContext.request.contextPath}/editFlight/${flightdetails.flight_id}">Edit</a></td>
					<td><a
						href="${pageContext.request.contextPath}/deleteFlight/${flightdetails.flight_id}">Delete</a></td>
				</tr>
				
			</c:forEach>
		</tbody>
	</table>
  </center>
	
</div>
</body>
</html>