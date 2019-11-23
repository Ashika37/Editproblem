<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seat Book</title>

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
  background-image: url(http://www.dreamsyntax.org/wp-content/uploads/2019/08/dd914c6cca076f8cebb463a81e73e7e5.jpg);
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
<body onload="onLoaderFunc()">

<div class="custom-padding">
  <nav>
    <div class="logo">Logo</div>

    <ul class="menu-area">
      <li><a href="#">Home</a></li>
      <li><a href="#">About</a></li>
    </ul>
  </nav>
</div>


<h2 style="position:absolute; left:100px;">Select seats</h2><br><br><br>
<div class="divstyle">
<div class="inputForm">

  <label>Enter Passenger Name</label> <input type="text" id="Username" required><br>
  Enter Number of Seats  <input type="number" id="Numseats" required>
  <br/><br/>
  <button class="button" onclick="takeData()">Confirm</button><br>
<br><br>
<h3>Selected Seats</h3><br>
</div>




<div class="displayerBoxes">
<center>
  <table class="Displaytable">
  <tr>
    <th style="color:white;">Name</th>
    <th style="color:white;">Number of Seats</th>
    <th style="color:white;">Seats</th>
  </tr>
  <tr>
    <td style="color:white;"><textarea id="nameDisplay"></textarea></td>
    <td style="color:white;"><textarea id="NumberDisplay"></textarea></td>
    <td style="color:white;"><textarea id="seatsDisplay"></textarea></td>
  </tr>
</table>
</center>
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
      
<br/><br/>
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

