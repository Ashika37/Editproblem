<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

<title>FLIGHT</title>
	<style>
		btn1 {
    		display: inline-block;
    		font-weight: 400;
    		color: black;
    		text-align: center;
   			border: 1px solid transparent; 
    		border-color:black;    
    		border-radius: 6px;
    		align:right;
    	
    	}

		bg-light {
    		background-color: #f8f9fa;
    		line-height: 100px important;
    		
		}

		.form-control1 {
    		width: 100%;
  			padding: 9px 20px;
  			margin: 8px 0;
  			display: inline-block;
  			border: 1px solid #ccc;
  			border-radius: 4px;
 		 	box-sizing: border-box;	 
		}
		
		input{			   
    		background-color: white;
   			font: 400 13.3333px Arial;
    	    padding: 9px 19px;
    		border-width: 2px;
    		border-style: inset;
    		border-radius:8px;
		}
		
		button1 {
 			 background-color: blue;
  			 color: black;
  			 border: 2px solid #e7e7e7;
		}
		
</style>
</head>
<body>
<nav class="bg-light btn1">
  <input type="submit" style="float: right;" class="btn1" value="LOGIN" >
</nav>
<br>
<br>
<br>
<form action="secondpage.html">
		<div style="display:flex;width:50%;margin:0 auto;">
		<div style="margin-right:10px;width:50%">
					<label>From</label>
					<br>
          	<input type="text" class="form-control1" placeholder="Enter Source" name="from" maxlength="8">
		</div>
		<div style="margin-left: 10px;width: 50%">
					<label>To</label>
          	<input type="text" class="form-control1" placeholder="Enter Destination" name="to" maxlength="8">
		</div>
	</div>

	<div style="display: flex;width: 50%;margin:0 auto;margin-top: 20px">
		<div style="width:20%">	
			<label>Trip</label>
		</div>
		<div style="width:40%">
			<input type="radio" name="oneway">
			<label>One way</label>
		</div>
		<div style="width: 40%">
			<input type="radio" name="twoway">	
			<label>Round</label>
		</div>
	</div>

	<div style="display: flex;width: 50%;margin:0 auto;;margin-top: 20px">
		<div style="margin-right:10px;width: 50%">
			<label>Date</label>
          	<input type="date" class="form-control1" name="traveldate">
		</div>
		<div style="margin-left:10px;width: 50%">
			<label>Person</label>
          	<input type="number" class="form-control1" name="person" >
		</div>
	</div>

		<div class ="button1" style="width:50%;margin:0 auto;text-align:center;margin-top: 20px;padding:15px;">
		<input type="submit" class="btn1" value="SUBMIT">
	</div>
	</form>
</body>
</html>