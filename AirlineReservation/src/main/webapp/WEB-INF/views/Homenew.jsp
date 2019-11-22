<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FLIGHT</title>

<style>
* {
  box-sizing: border-box;
}

	h1{
 		 color:white;
	}
body {
  font-family: Arial;
  padding: 10px;
  background: #f1f1f1;
}

/* Header/Blog Title */
.header {
  padding: 30px;
  text-align: center;
  background: white;
}

.header h1 {
  font-size: 50px;

}

/* Style the top navigation bar */
.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Style the topnav links */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {   
  float: left;
  width: 100%;
}

.fakeimg {
  background-color: black;
  opacity:0.5;
  width: 100%;
  padding: 20px;
}

/* Add a card effect for articles */
.card {
  background-color: white;
  padding: 20px;
  margin-top: 20px;
}

}
</style>

</head>
<body>


<div class="topnav">
  <a href="#">LOGO</a>
    <a href="${pageContext.request.contextPath}/addFlight" style="float:right">Add Flight</a>
</div>

<div class="row">
  <div class="leftcolumn">
    <div class="card">
      <h2>BOOK FLIGHT</h2>
      <div class="fakeimg" style="height:200px;">
      <h1>hello</h1>
      
      <div class="testbox">
      
      <form:form method="POST" action="addFlight" modelAttribute="flightdetails">  
       <div class="item">
       		 <form:label path="flight_name">Flight Name</form:label>
       		 <form:input path="flight_name"/>
        </div>
        
        <input type="submit" value="Submit" />  
    </form:form>
      </div>
      
      
      
      </div>
       </div>

  </div>
</div>

</body>
</html>