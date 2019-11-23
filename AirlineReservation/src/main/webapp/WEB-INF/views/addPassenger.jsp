<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PASSENGER</title>
<style>
@import url(https://fonts.googleapis.com/css?family=Lily+Script+One);
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
  width: 100%;
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
  background-color: #f1f1f1;
}
</style>
</head>
<body>

<div class="custom-padding">
  <nav>
    <div class="logo">Logo</div>

    <ul class="menu-area">
      <li><a href="#">Home</a></li>
      <li><a href="#">About</a></li>
    </ul>
  </nav>
</div>

	  <br>
          <br>
        <form:form method="POST" action="addPassenger" modelAttribute="passenger" >
        </table>
         
  <button type="button" class="collapsible" >Add Passenger 1 Details</button>
  <div style="padding-left: 100px;" class="content">      
	<div style="border-style: solid;padding-left:100px;width:1000px;">
             <table>
             <tr>
             	<td>
                    <td><form:label path="salutation">Title</form:label></td>
                    <td><form:input path="salutation"/></td>    
                    <td><form:label path="passenger_name">Passenger Name</form:label></td>
                    <td><form:input path="passenger_name"/></td>
                    </td> &nbsp; &nbsp; &nbsp; &nbsp; 
			</tr>
		   <tr>
				<td>
                    <td><form:label path="passenger_surname">Passenger SurName</form:label></td>
                    <td><form:input path="passenger_surname"/></td>
               
                    <td><form:label path="gender">Gender</form:label></td>
                    <td><form:input path="gender"/></td>
       	       </td>
       	   </tr>
                <tr>
                    <td><input type="submit" align="center" value="Submit"/></td>
                </tr>
             
            </table>           
      </div>
      </div>
      
     <button type="button" class="collapsible" >Add Passenger 2 Details</button>
  <div style="padding-left: 100px;" class="myDIV">      
	<div style="border-style: solid;padding-left:100px;width:1000px;">

             <table>
             <tr>
             	<td>
                    <td><form:label path="salutation">Title</form:label></td>
                    <td><form:input path="salutation"/></td>    
                    <td><form:label path="passenger_name">Passenger Name</form:label></td>
                    <td><form:input path="passenger_name"/></td>
                    </td>  &nbsp; &nbsp; &nbsp; &nbsp; 
			</tr>
		   <tr>
				<td>
                    <td><form:label path="passenger_surname">Passenger SurName</form:label></td>
                    <td><form:input path="passenger_surname"/></td>
               
                    <td><form:label path="gender">Gender</form:label></td>
                    <td><form:input path="gender"/></td>
       	       </td>
       	 </tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
             
            </table>           
      </div>
      </div> 
      
        </form:form>



<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < 2; i++) {


  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
  
}
</script>
</body>
</html>