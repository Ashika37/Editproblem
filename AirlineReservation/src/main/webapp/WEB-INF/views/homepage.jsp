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
  		background-image: url(http://travelspan.in/wp-content/uploads/2017/02/A350-900_lufthansa.jpg);
  		background-size:cover;
  		background-position:400px left;
  		height: 600px;
	}
	
	div.transbox {
		margin: 50px;
		background-color: black;
		border: 3px solid black;
		opacity: 0.7;
		filter: alpha(opacity=30);
		height: 417px;
		width:570px; 
		    border-radius: 20px;
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
		.form-control2 {
    		width: 106%;
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
    		font-size:17px;
    		font-family:Lucida Sans ;
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
    <div class="logo">
    
    Fly Height&nbsp;&nbsp;&nbsp;
    </div>
 
    <ul class="menu-area">
   		<li><a style="border: 2px solid #f8f9ff;" href="${pageContext.request.contextPath}/Loginuser" >USERLOGIN</a></li>
      <li><a style="border: 2px solid #f8f9ff;" href="${pageContext.request.contextPath}/Login" >ADMIN LOGIN</a></li>
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
			<input type="radio" name="choice">
			<label>One way</label>
		</div>
		<div style="width: 40%">
			<input type="radio" name="choice">
			<label>Round Trip</label>
		</div>
	</div>
	<br>
	<br>
		<div style="display:flex;width:50%;margin:0 auto;">
		<div style="margin-right:10px;width:50%">
					<label >From</label>
					<input type="text" class="form-control2" name="from" id="from" required="required"/>
					<br>
		</div>
		<div style="margin-left: 10px;width: 50%">
					<label >To</label>
					<input type="text" class="form-control2" name="to" required="required"/>
		</div>
	</div>

	<div style="display: flex;width: 50%;margin:0 auto;;margin-top: 20px">
		<div style="margin-right:10px;width: 50%">
			<label>From Date</label>
          	<input type="date" class="form-control1" onclick="dateval()" name="date1" id="fromdate" required="required">
		</div>
			<!--  <div style="margin-right:10px;width: 50%">
			<label>To Date</label>
          	<input type="date" class="form-control1" name="todate"  id="todate">
		</div>-->
	</div>
		<div class ="button1" style="width:50%;margin:0 auto;text-align:center;margin-top: 20px;padding:15px;">
		<input type="submit" class="btn1" onclick="checkdate()" value="SUBMIT">
	</div>
	 </div>
	</form>
  
   
	<script language="Javascript">
		/*function disable() {
			document.getElementById("todate").disabled = true;
		}
		function enable() {
			document.getElementById("todate").disabled = false;
		}*/
		
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
		    $('#fromdate').attr('min', minDate);
		}

		<!-- function updateSelect(changedSelect,selectId) { 
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
		}-->
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</body>
</html>