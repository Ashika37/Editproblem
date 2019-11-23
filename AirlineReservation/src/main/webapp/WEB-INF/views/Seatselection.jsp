<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SEAT SELECTION</title>

<style>

body
{
  font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
}

#Username
{
  border:none;
  border-bottom:1px solid;
}

.screen
{
  width:100%;
  height:20px;
  background:#4388cc;
  color:#fff;
  line-height:20px;
  font-size:15px;
}
.smallBox::before
{
  content:".";
  width:15px;
  height:15px;
  float:left;
  margin-right:10px;
}
.greenBox::before
{
  content:"";
  background:Green;
}
.redBox::before
{
  content:"";
  background:Red;
}
.emptyBox::before
{
  content="";
  box-shadow: inset 0px 2px 3px 0px rgba(0, 0, 0, .3), 0px 1px 0px 0px rgba(255, 255, 255, .8);
    background-color:#ccc;
}

.seats
{
  border:1px solid red;background:yellow;
} 
.seatGap
{
  width:40px;
}

.seatVGap
{
  height:40px;
}

table
{
  text-align:center;
}


.Displaytable
{
  text-align:center;
}
.Displaytable td, .Displaytable th {
    border: 1px solid;
    text-align: left;
}

textarea
{
  border:none;
  background:transparent;
}

input[type=checkbox] {
    width:0px;
    margin-right:18px;
}

input[type=checkbox]:before {
    content: "";
    width: 15px;
    height: 15px;
    display: inline-block;
    vertical-align:middle;
    text-align: center;
    box-shadow: inset 0px 2px 3px 0px rgba(0, 0, 0, .3), 0px 1px 0px 0px rgba(255, 255, 255, .8);
    background-color:#ccc;
}

input[type=checkbox]:checked:before {
    background-color:Green;
    font-size: 15px;
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

.divstyle {
 border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  background-color: #777777;
position:absolute; 
left:150px;
top:200px;
}

.divstyle1 {
 border-radius: 5px;
  background-color: #f2f2f2;
  padding: 16px;
  background-color: #777777;
  position:absolute; 
  right:250px;
  top: 200px;
  width:450px;
  height:410px;
}

input[type=text],input[type=number], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

.button {
    background-color: #242125;
    border: none;
    color: white;
    padding: 15px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 15px;
}




/@import url(https://fonts.googleapis.com/css?family=Lily+Script+One);
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
  border-bottom: 20px solid transparent;
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




//style for passenger registration

@import url(https://fonts.googleapis.com/css?family=Lily+Script+One);

body {
	margin:0;
	font-family:arial,tahoma,sans-serif;
	font-size:12px;
	font-weight:normal;
	direction:ltr;
  background:white;
}



form label {
	font-size:14px;
	color:#222a59;
	cursor:pointer;
}

form label
 {
	float:left;
	clear:both;
}

form input {
	margin:15px 0;
	padding:15px 10px;
	width:100%;
	outline:none;
	border:1px solid #bbb;
	border-radius:20px;
	display:inline-block;
	-webkit-box-sizing:border-box;
	   -moz-box-sizing:border-box;
	        box-sizing:border-box;
    -webkit-transition:0.2s ease all;
	   -moz-transition:0.2s ease all;
	    -ms-transition:0.2s ease all;
	     -o-transition:0.2s ease all;
	        transition:0.2s ease all;
}

form input[type=text]:focus,
form input[type="password"]:focus {
	border-color:cornflowerblue;
}




input[type=submit]:hover {
	opacity:0.8;
}

input[type="submit"]:active {
	opacity:0.4;
}

.forgot,
.register {
	margin:10px;
	float:left;
	clear:left;
	display:inline-block;
	color:cornflowerblue;
	text-decoration:none;
}

.forgot:hover,
.register:hover {
	color:darkgray;
}

#logo {
	margin:0 auto;
	width:200px;
	font-family:'Lily Script One', cursive;
	font-size:60px;
	font-weight:bold;
	text-align:center;
	color:lightgray;
	-webkit-transition:0.2s ease all;
	   -moz-transition:0.2s ease all;
	    -ms-transition:0.2s ease all;
	     -o-transition:0.2s ease all;
	        transition:0.2s ease all;
}

#logo:hover {
	color:cornflowerblue;
}

.formstyle
{
margin:10% auto 0 auto;padding:30px;width:400px;height:auto;overflow:hidden;background:white;border-radius:10px;
}

.inputstyle
{
margin:15px 0;padding:15px 10px;width:100%;outline:none;border:1px solid #bbb;border-radius:20px;display:inline-block;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;
    -webkit-transition:0.2s ease all;
	   -moz-transition:0.2s ease all;
	    -ms-transition:0.2s ease all;
	     -o-transition:0.2s ease all;
	        transition:0.2s ease all;
	        border-color:cornflowerblue;
}

.submitstyle
{
padding:15px 50px;
	width:auto;
	background:#1abc9c;
	border:none;
	color:white;
	cursor:pointer;
	display:inline-block;
	float:right;
	clear:right;
	-webkit-transition:0.2s ease all;
	   -moz-transition:0.2s ease all;
	    -ms-transition:0.2s ease all;
	     -o-transition:0.2s ease all;
	        transition:0.2s ease all;
}


.collapsible {
  background-color: #777;
  color: white;
  cursor: pointer;
  padding: 18px;
  width: 95%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
}

.active, .collapsible:hover {
  background-color: #555;
}

.content {
  padding: 0 18px;
  display: none;
  overflow: hidden;
 
}


.css1{
 width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}


.css2{
    background-color: #242125;
    border: none;
    color: white;
    padding: 15px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 15px;
}

</style>
</head>
<body onload="onLoaderFunc()">

<form:form method="POST" action="addPassenger" modelAttribute="passenger" >
<div class="custom-padding">
  <nav>
    <div class="logo">Logo</div>

    <ul class="menu-area">
      <li><a href="#">Logged In</a></li>
    </ul>
  </nav>
</div>


<div class="divstyle">
<div class="inputForm">

  <label>Enter User Name</label> <input type="text" id="Username" required><br>
  Enter Number of Seats <input type="number" id="Numseats" required>
  <br/><br/>
  <button class="button" onclick="takeData()">Confirm</button><br>
<br><br>
</div>
</div>

<div class="divstyle1">
 <div class="seatStructure">
<table id="seatsBlock" class="tablestyle">
 <p id="notification"></p>
 <tr>
    <td rowspan="20">
      <div class="smallBox greenBox">Selected Seat</div> <br/>
     
      <div class="smallBox emptyBox">Empty Seat</div><br/>
    </td>
    
  
  </tr>
   <tr>
    <td></td>
    <td>1</td>
    <td>2</td>
    <td>3</td>
    <td></td>
    <td>4</td>
    <td>5</td>
    <td>6</td>
    <td></td>
</tr><br> 
<tr>
    <td>A</td>
    <td><input type="checkbox" class="seats" value="A1"></td>
    <td><input type="checkbox" class="seats" value="A2"></td>
    <td><input type="checkbox" class="seats" value="A3"></td>
   
    <td class="seatGap"></td>
    <td><input type="checkbox" class="seats" value="A4"></td>
    <td><input type="checkbox" class="seats" value="A5"></td>
    <td><input type="checkbox" class="seats" value="A6"></td>
    
  </tr>
  
  <tr>
    <td>B</td>
    <td><input type="checkbox" class="seats" value="B1"></td>
    <td><input type="checkbox" class="seats" value="B2"></td>
    <td><input type="checkbox" class="seats" value="B3"></td>
   
    <td></td>
    <td><input type="checkbox" class="seats" value="B4"></td>
    <td><input type="checkbox" class="seats" value="B5"></td>
    <td><input type="checkbox" class="seats" value="B6"></td>
    
  </tr>
  
  <tr>
    <td>C</td>
    <td><input type="checkbox" class="seats" value="C1"></td>
    <td><input type="checkbox" class="seats" value="C2"></td>
    <td><input type="checkbox" class="seats" value="C3"></td>
  
    <td></td>
    <td><input type="checkbox" class="seats" value="C4"></td>
    <td><input type="checkbox" class="seats" value="C5"></td>
    <td><input type="checkbox" class="seats" value="C6"></td>
  
</tr>
<tr>
    <td>D</td>
    <td><input type="checkbox" class="seats" value="D1"></td>
    <td><input type="checkbox" class="seats" value="D2"></td>
    <td><input type="checkbox" class="seats" value="D3"></td>
   
    <td></td>
 	<td><input type="checkbox" class="seats" value="D4"></td>
    <td><input type="checkbox" class="seats" value="D5"></td>
    <td><input type="checkbox" class="seats" value="D6"></td>
   
</tr> 
<tr>
    <td>E</td>
    <td><input type="checkbox" class="seats" value="E1"></td>
    <td><input type="checkbox" class="seats" value="E2"></td>
    <td><input type="checkbox" class="seats" value="E3"></td>
   
    <td></td>
 <td><input type="checkbox" class="seats" value="E4"></td>
    <td><input type="checkbox" class="seats" value="E5"></td>
    <td><input type="checkbox" class="seats" value="E6"></td>
    
</tr>
<tr class="seatVGap"></tr>
<tr>
    <td>F</td>
    <td><input type="checkbox" class="seats" value="F1"></td>
    <td><input type="checkbox" class="seats" value="F2"></td>
    <td><input type="checkbox" class="seats" value="F3"></td>
    
    <td></td>
<td><input type="checkbox" class="seats" value="F4"></td>
    <td><input type="checkbox" class="seats" value="F5"></td>
    <td><input type="checkbox" class="seats" value="F6"></td> 
</tr>
<tr>
    <td>G</td>
    <td><input type="checkbox" class="seats" value="G1"></td>
    <td><input type="checkbox" class="seats" value="G2"></td>
    <td><input type="checkbox" class="seats" value="G3"></td>
    
    <td></td>
<td><input type="checkbox" class="seats" value="G4"></td>
    <td><input type="checkbox" class="seats" value="G5"></td>
    <td><input type="checkbox" class="seats" value="G6"></td>   
</tr>
<tr>
    <td>H</td>
    <td><input type="checkbox" class="seats" value="H1"></td>
    <td><input type="checkbox" class="seats" value="H2"></td>
    <td><input type="checkbox" class="seats" value="H3"></td>
    
    <td></td>
<td><input type="checkbox" class="seats" value="H4"></td>
    <td><input type="checkbox" class="seats" value="H5"></td>
    <td><input type="checkbox" class="seats" value="H6"></td> 
</tr>
<tr>
    <td>I</td>
    <td><input type="checkbox" class="seats" value="I1"></td>
    <td><input type="checkbox" class="seats" value="I2"></td>
    <td><input type="checkbox" class="seats" value="I3"></td>
    
    <td></td>
<td><input type="checkbox" class="seats" value="I4"></td>
    <td><input type="checkbox" class="seats" value="I5"></td>
    <td><input type="checkbox" class="seats" value="I6"></td>  
</tr>
<br>  
</table>
  <br>
<br/><button onclick="updateTextArea()" class="button">Confirm Selection</button>
</center>
</div>
</div>
      
 <div style="padding-top: 600px;padding-left: 100px;">
  <button type="button" class="collapsible" >Add Passenger 1 Details</button>
  <div style="padding-left: 100px;" class="content">      
	<div style="border-style: solid;padding-left:100px;width:880px;">
             <table>
             <tr>
             	<td>
                    <td><label path="salutation">Title</label></td>
                    <td><input class="css1" path="salutation"/></td>    
                    <td><label path="passenger_name">Passenger Name</label></td>
                    <td><input class="css1" path="passenger_name"/></td>
                    </td> &nbsp; &nbsp; &nbsp; &nbsp; 
			</tr>
		   <tr>
				<td>
                    <td><label path="passenger_sirname">Passenger SurName</label></td>
                    <td><input class="css1" path="passenger_sirname"/></td>
               
                    <td><label path="gender">Gender</label></td>
                    <td><input class="css1" path="gender"/></td>
       	       </td>
       	   </tr>
                <tr>
                    <td><input class="css2" type="submit" align="center" value="Submit"/></td>
                </tr>
             
            </table>           
      </div>
      </div>
      
     <button type="button" class="collapsible" >Add Passenger 2 Details</button>
  <div style="padding-left: 100px;" class="myDIV">      
	<div style="border-style: solid;padding-left:100px;width:880px;">
             <table>
             <tr>
             	<td>
                    <td><label path="salutation">Title</label></td>
                    <td><input class="css1" path="salutation"/></td>    
                    <td><label path="passenger_name">Passenger Name</label></td>
                    <td><input class="css1" path="passenger_name"/></td>
                    </td>  &nbsp; &nbsp; &nbsp; &nbsp; 
			</tr>
		   <tr>
				<td>
                    <td><label path="passenger_sirname">Passenger SurName</label></td>
                    <td><input class="css1" path="passenger_sirname"/></td>
               
                    <td><label path="gender">Gender </label></td>
                    <td><input class="css1" path="gender"/></td>
       	       </td>
       	 </tr>
                <tr>
                    <td><input class="css2" type="submit" value="Submit"/></td>
                </tr>
             
            </table>           
      </div>
      </div> 
      </div>
        </form:form>



<script>

function onLoaderFunc()
{
  $(".seatStructure *").prop("disabled", true);
  $(".displayerBoxes *").prop("disabled", true);
}
function takeData()
{
  if (( $("#Username").val().length == 0 ) || ( $("#Numseats").val().length == 0 ))
  {
  alert("Please Enter your Name and Number of Seats");
  }
  else
  {
    $(".inputForm *").prop("disabled", true);
    $(".seatStructure *").prop("disabled", false);
    document.getElementById("notification").innerHTML = "<b style='margin-bottom:0px;background:yellow;'>Please Select your Seats NOW!</b>";
  }
}


function updateTextArea() { 
    
  if ($("input:checked").length == ($("#Numseats").val()))
    {
      $(".seatStructure *").prop("disabled", true);
      
     var allNameVals = [];
     var allNumberVals = [];
     var allSeatsVals = [];
  
     //Storing in Array
     allNameVals.push($("#Username").val());
     allNumberVals.push($("#Numseats").val());
     $('#seatsBlock :checked').each(function() {
       allSeatsVals.push($(this).val());
     });
    
     //Displaying 
     $('#nameDisplay').val(allNameVals);
     $('#NumberDisplay').val(allNumberVals);
     $('#seatsDisplay').val(allSeatsVals);
    }
  else
    {
      alert("Please select " + ($("#Numseats").val()) + " seats")
    }
  }


function myFunction() {
  alert($("input:checked").length);
}

/*
function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}
*/


$(":checkbox").click(function() {
  if ($("input:checked").length == ($("#Numseats").val())) {
    $(":checkbox").prop('disabled', true);
    $(':checked').prop('disabled', false);
  }
  else
    {
      $(":checkbox").prop('disabled', false);
    }
});


</script>
<script src="/AirlineReservation/src/main/resources/js" />"></script>

</body>
</html>