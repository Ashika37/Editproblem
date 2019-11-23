<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<style>
* {
  margin: 0;
	}
	body {
  		background-image: url(http://waterfordaeroclub.com/wp-content/uploads/2015/01/Aeroplane-landing-in-the-sunset.jpg);
  		background-size:auto 940px;
  		background-position:400px left;
  		height: 600px;
	}
	
	div.transbox {
		margin: 50px;
		background-color: black;
		border: 3px solid black;
		opacity: 0.7;
		filter: alpha(opacity=30);
		height:460px;
		width:570px; 
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
		
		bg-light {
    		background-color: #f8f9fa;
    		line-height: 100px important;
    		
		}

		.form-control1 {
    		width: 100%;
  			padding: 9px 20px;
  			margin: 8px 0;
  			display: inline-block;
  			border: 1px solid white;
  			border-radius: 4px;
 		 	box-sizing: border-box;	 
		}
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
    	label{
    		color:white ;
    	}
    	
    	css1{			   
    		background-color: white;
   			font: 400 13.3333px Arial;
    	    padding: 9px 19px;
    		border-width: 2px;
    		border-style: inset;
    		border-radius:8px;
		}
</style>
<body>
<form name="form" method="post" action="searchform" modelAttribute="flightdetails"><!-- modelAttribute="flightdetails" -->
<div style="padding-top: 25px;">
  <nav>
    <div class="logo">Logo</div>
    <ul class="menu-area">
      <li><a href="${pageContext.request.contextPath}/Login" target="_blank">LOGIN</a></li>
    </ul>
  </nav>
</div>

	<div class="transbox">
	<br>
	<br>
     		<div style="display: flex;width: 50%;margin:0 auto;margin-top: 20px">
		<div style="width:20%">	
			<label>Trip</label>
		</div>
		<div style="width:40%">
			<input type="radio" name="choice" onchange="disable()">
			<label>One way</label>
		</div>
		<div style="width: 40%">
			<input type="radio" name="choice" onchange="enable()">
			<label>Round Trip</label>
		</div>
	</div>
	<br>
	<br>
		<div style="display:flex;width:50%;margin:0 auto;">
		<div style="margin-right:10px;width:50%">
					<label >From</label><input type="text" name="from"/>
					<br>
         		<!-- <select class="form-control1 css1" onchange="updateSelect(this,'to_loc');" name="from">
					<option value="selected">Select</option>
					<option value="1">Delhi</option>
					<option value="2">Jaipur</option>
					<option value="3">Agra</option>
					<option value="4">Bangalore</option>
					<option value="5">Pune</option>
			</select>
			 -->
		</div>
		<div style="margin-left: 10px;width: 50%">
					<label >To</label><input type="text" name="to"/>
          		<!-- <select class="form-control1 css1" onchange="updateSelect(this,'from_loc');" name="to">
					<option value="selected">Select</option>
					<option value="1">Delhi</option>
					<option value="2">Jaipur</option>
					<option value="3">Agra</option>
					<option value="4">Bangalore</option>
					<option value="5">Pune</option>
			</select>  -->
          	
		</div>
	</div>

	<div style="display: flex;width: 50%;margin:0 auto;;margin-top: 20px">
		<div style="margin-right:10px;width: 50%">
			<label>From Date</label>
          	<input type="date" class="form-control1" name="fromdate" id="fromdate">
		</div>
			<div style="margin-right:10px;width: 50%">
			<label>To Date</label>
          	<input type="date" class="form-control1" name="todate"  id="todate">
		</div>
	</div>

		<div style="display: flex;width: 50%;margin:0 auto;;margin-top: 20px">
		<div style="margin-right:10px;width: 50%">
			<label>Person</label>
          	<input type="number" class="form-control1" name="person">
		</div>
	</div>
	
		<div class ="button1" style="width:50%;margin:0 auto;text-align:center;margin-top: 20px;padding:15px;">
		<input type="submit" class="btn1" value="SUBMIT">
	
		
			
	</div>
	</form>
   </div>
   
	<script language="Javascript">
		function disable() {
			document.getElementById("todate").disabled = true;
		}
		function enable() {
			document.getElementById("todate").disabled = false;
		}

		function updateSelect(changedSelect,selectId) { 
			var otherSelect=document.getElementById(selectId);
		
		for(var i=0;i<otherSelect.options.length;++i)
		{
			otherSelect.options[i].disabled==false;
		}
		if(changedSelect.selectedIndex==0)
		{
		return;
		}
			otherSelect.options[changedSelect.selectedIndex].disabled=true;
		}
		function fetchdata(){
			var from = document.getElementById('from_loc').innerHTML;
			var to = document.getElementById('to_loc').innerHTML;
		}
</script>
</body>
</html>