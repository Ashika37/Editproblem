<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PAYMENT</title>

</head>
<style>


body{
                background-image: url(https://wallpaperaccess.com/full/104815.jpg);
                background-size:cover;
                height:940px;
                
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

*, *:after, *:before {
	box-sizing: box-sizing;
}
html,body { 
	margin: 0; 
	height: 100%; 
	color: #fff; 
	font-family: sans-serif; 
}
.wrap {
	float: right;
	width: 100%;
	height: 100%;
	margin-left: -250px; /* The size of the fixed block. */
}
.content {
	padding-left: 50px;
	height: 100%;
	background: lightblue;
	margin-left: 250px; /* The size of the fixed block. */
}
.sidebar {
	position: relative;
	height: 100%;
	background: salmon;
	float: left;
	width: 250px; /* The size of the fixed block. */
}
.divstyle {
 border-radius: 5px;

  padding: 20px;
  background-color:#4c4c4c;
position:absolute; left:100px;
}

.divstyle1 {
 border-radius: 5px;
  background-color: #eee6f5;
  padding: 20px;
  background-color: #eee6f5;
position:absolute; left:100px;
}

//style for card

* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 90%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 5px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
  color:black;
}

input[type=submit] {
  background-color: #235d75;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
  
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}


</style>
<body>

<form name="form" action="Ticket" method="post">
<div style="padding-top: 25px;">
  <nav>
  <div class="logo"> 
    Fly Height&nbsp;&nbsp;&nbsp;
	
    </div>
    <ul class="menu-area">
 
    </ul>
  </nav>
</div><br>
<h2 style="color:black;font-family:Segoe Print;font-size:30px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Payment Section</h2>


<div class="divstyle">
<h3 style="color:white;">Debit/Credit Card Details</h3>


<input type="hidden" value="${passenger.flight_id}"  name = "flight_id" readonly/>


<input type="hidden" value="${passenger.passenger_id}"  name = "passenger_id" readonly/>

<label style="color:white;">Card Number</label>
<input type="text" name="cardname" placeholder="Card Number" required="required"/>&nbsp;&nbsp;<br>
<label style="color:white;">Expiry Month</label>

 <select name="expmonth">
    <option value="jan">January</option>
    <option value="feb">February</option>
    <option value="mar">March</option>
    <option value="arp">April</option>
      <option value="may">May</option>
       <option value="june">June</option>
        <option value="jul">July</option>
          <option value="aug">August</option>
            <option value="sep">September</option>
              <option value="oct">October</option>
                <option value="nov">November</option>
                  <option value="dec">December</option>
  </select>
  
  
  <label style="color:white;">Expiry Year</label>

 <select name="expyear">
    <option value="1">2020</option>
    <option value="2">2021</option>
    <option value="3">2022</option>
    <option value="4">2023</option>
      <option value="5">2024</option>
      <option value="6">2025</option>
        <option value="7">2026</option>
          <option value="8">2027</option>
            <option value="9">2028</option>
            
  </select>
 <label style="color:white;">CVV Number</label>
 <input type="text" name="cvvnum" placeholder="CVV Number" pattern="[0-9]{3}" required/><br>
 <br>
 <br>
 <input type="submit" value="Confirm" onclick="cardnumber(document.form.cardname)"></input>
</div>



</div>
</form>
<script>
function redirect(){
	
	window.location = "/Ticket";
	
}
function cardnumber(inputtxt)
{
  var cardno = /^(?:4[0-9]{12}(?:[0-9]{3})?)$/;
  if(inputtxt.value.match(cardno))
        {
      return true;
        }
      else
        {
        alert("Not a valid Visa credit card number!");
        return false;
        }
}
</script>
</body>

</html>