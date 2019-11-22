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
      background-image: url('file:///C:/Users/pcuser/Downloads/Airline/AirlineReservation/src/main/webapp/WEB-INF/images/img13.jpg'); 
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
   		font-size: 20px;
   		font-weight: 300;
   		font-family:Impact, fantasy; 
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
  background-color: #f44336;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: red;
}
    </style>
</head>

  <body>
  
  <div class="testbox">
  	 <a href="${pageContext.request.contextPath}/addFlight" target="_blank">Add Flight</a>
   </div>    
	
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
					<td>${flightdetails.arrival_time}</td>
					<td>${flightdetails.duration}</td>
					<td>
					<a href="${pageContext.request.contextPath}/editFlight/${flightdetails.flight_id}">Edit</a></td>
					<td><a
						href="${pageContext.request.contextPath}/deleteFlight/${flightdetails.flight_id}">Delete</a></td>
				</tr>
				
			</c:forEach>
		</tbody>
	</table>
  
	
</div>
</body>
</html>