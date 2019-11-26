<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
</head>
<style>
	body {
  		background-image: url(https://i.pinimg.com/originals/de/41/53/de415334320dd313b583016db0352e93.jpg);
  		background-size:cover;
  		background-position:400px left;
  		height: 600px;
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
 border-radius: 15px;
  padding: 30px;
  background-color: #3b3f3f;
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


input[type=password]{
  width: 90%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 5px;
  resize: vertical;
}

input[type=tel]{
  width: 90%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 5px;
  resize: vertical;
}


input[type=email]{
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
  background-color: #81a9d6;
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
<form method="POST" action="Registeruser" modelAttribute="register">
<div style="padding-top: 6px;">
  <nav>
    <div class="logo"> 
    Fly Height&nbsp;&nbsp;&nbsp;
	
    </div>
    <ul class="menu-area">

    </ul>
  </nav>   
</div><br>
<h2 style="color:white;font-family:oldman;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Registration</h2>

<div class="divstyle">
<h3 style="color:white;">User Details</h3>


<label style="color:white;">User First Name</label>
<input type="text" name="firstname" placeholder="Enter your First Name" required/>&nbsp;&nbsp;<br>



<label style="color:white;">User Last Name</label>
<input type="text" name="lastname" placeholder="Enter your Last Name" required/>&nbsp;&nbsp;<br>



<label style="color:white;">Mobile Number</label>
<input  type="tel" name="mobile_no" placeholder="Enter your Phone no." pattern="[0-9]{10}" required/>&nbsp;&nbsp;<br>



<label style="color:white;">Email Id</label>
<input type="email" name="email_id" placeholder="Enter your Email Id" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required/>&nbsp;&nbsp;<br>

 <label style="color:white;">Password</label>
 <input type="password" name="Password" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required/><br>
 <br>
 <input type="submit" value="Confirm"  onclick="phonenumber(document.form1.text1)"></input>
</div>
</form>

</body>
</html>