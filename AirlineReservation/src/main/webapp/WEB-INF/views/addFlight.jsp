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
      font-family:Constantia;
      line-height: 30px;
      }
      
      body{
      background-image: url(https://wallpaperaccess.com/full/254448.jpg); 
      background-repeat: no-repeat;
      background-size: cover;"
      }
      h1 {
      font-size: 32px;
      color:white;
      z-index: 2;
      text-align :center;
      padding-left:3px;
      padding-top : 10px;
      font-family:Impact, fantasy; 
      font-weight: 200;
      }
      h2 {
      font-weight: 400;
      color:white;
      }
      .testbox {
      padding: 20px;
      opacity:0.9;
      }
      
      form {
      width: 40%;
      padding: 20px;
      border-radius: 20px;
      box-shadow: 0 0 40px 0 #095484; 
          background: #1f1c1c;
    opacity: 0.8;
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
      height: 28px;
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
        <center>
          <div class="banner">
          	<h1>ADD FLIGHT DETAILS</h1>
          </div>
        
      	<h2 style="font-family:Oldtown fantasy;font-weight:900;">FLIGHT DETAILS</h2>
        	</center>
        <div class="item">
       		 <form:label path="flight_name" style="font-size:20px;color:white;">Flight Name</form:label>
       		 <br>
       		  <input type="text" name="flight_name" required="required"/>
        </div>
		<br>
         <div class="item">
       		<form:label path="from_loc" style="font-size:20px;color:white;">From</form:label>
       		<br>
       		 <form:input path="from_loc" required="required"/>
        </div>
		<br>
        <div class="item">
       		<form:label path="to_loc" style="font-size:20px;color:white;">To</form:label>
       		<br>
       		<form:input path="to_loc" required="required"/>
        </div>
		<br>
         <div class="item">
       		<form:label path="flight_date" style="font-size:20px;color:white;">Date</form:label>
       		<br>
       		<form:input type="date" path="flight_date" onclick="dateval()" id="date" required="required"/>
        </div>
			<br>
          <div class="item">
       		<form:label path="departure_time" style="font-size:20px;color:white;">Departure Time</form:label>
       		<br>
       		 <form:input path="departure_time" required="required"/>
        </div>
		<br>
        <div class="item">
       		<form:label path="arrival_time" style="font-size:20px;color:white;">Arrival Time</form:label>
       		<br>
       		<form:input path="arrival_time" required="required"/>
        </div>
			<br>
         <div class="item">
       		<form:label path="duration" style="font-size:20px;color:white;">Duration</form:label>
       		<br>
       		<form:input path="duration" required="required"/>
        </div>
<br>
            <div class="item">
       		<form:label path="price" style="font-size:20px;color:white;">Price</form:label>
       		<form:input path="price" required="required"/>
        </div>
              
         <br>
         <div style="padding-left:400px;">
          	<input style="width:90px;" type="submit" value="Add"/>
        </div>
           </div>
        </form:form>
</div>
	<script language="Javascript">		
		function dateval(){
		    var dtToday = new Date();
		    
		    var month = dtToday.getMonth() + 1;
		    var day = dtToday.getDate();
		    var year = dtToday.getFullYear();
		    if(month < 10)
		        month = '0' + month.toString();
		    if(day < 10)
		        day = '0' + day.toString();
		    
		    var minDate= year + '-' + month + '-' + day;
		    
		    $('#date').attr('min', minDate);
		}	
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</body>
</html>