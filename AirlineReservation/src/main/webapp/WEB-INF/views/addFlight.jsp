<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ADD FLIGHT DETAILS</title>
<style>
  body, div, form,  p { 
      font-family:Copperplate,Copperplate Gothic Light,fantasy;
      line-height: 30px;
      }
      
      body{
      background-image: url('file:///C:/Users/pcuser/Downloads/Airline/AirlineReservation/src/main/webapp/WEB-INF/images/img10.jpeg'); 
      background-repeat: no-repeat;
      background-size: cover;"
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
      background-color:blue;
      }
</style>
 
</head>

<body>
	<div class="testbox">
	
        <form:form method="POST" action="addFlight" modelAttribute="flightdetails">
        
          <div class="banner">
          	<h1>ADD FLIGHT DETAILS</h1>
          </div>
        
      	<h2 style="font-family:Oldtown fantasy;font-weight:900;">FLIGHT DETAILS</h2>
        
        <div class="item">
       		 <form:label path="flight_name">Flight Name</form:label>
       		  <input type="text" name="flight_name"/>
        </div>
         <br>
         <div class="item">
       		<form:label path="from_loc">From</form:label>
       		 <form:input path="from_loc" />
        </div>
        <br>
        <div class="item">
       		<form:label path="to_loc">To</form:label>
       		<form:input path="to_loc"/>
        </div>
         <br>
         <div class="item">
       		<form:label path="flight_date">Date</form:label>
       		<form:input type="date" path="flight_date"/>
        </div>
         <br>
          <div class="item">
       		<form:label path="departure_time">Departure Time</form:label>
       		 <form:input path="departure_time" />
        </div>
         <br>
        <div class="item">
       		<form:label path="arrival_time">Arrival Time</form:label>
       		<form:input path="arrival_time"/>
        </div>
         <br>
         <div class="item">
       		<form:label path="duration">Duration</form:label>
       		<form:input path="duration"/>
        </div>
         <br>
         <div class="btn_button">
          	<input type="submit" value="Add"/>
        </div>
        </form:form>
</div>
</body>
</html>