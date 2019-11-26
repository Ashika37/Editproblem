<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN</title>
<style>
          
            body{
                background-image: url(http://s1.1zoom.net/big3/379/355981-terminator22.jpg);
                background-size:cover;
                height:940px;
                
            }

            .header{
                position: absolute;
                top: calc(10% - 35px);
                left: calc(70% - 255px);
            }

            .header div{
                float: right;     
                font-size: 35px;
            }


            .login input[type=text]{
                width: 300px;
                height: 50px;
                background: transparent;
                border: 4px solid rgba(255,255,255,0.6);
                border-radius: 23px;
                color: #fff;
                font-family: Verdana, Geneva, Tahoma, sans-serif;
                font-size: 16px;
                font-weight: 700;
                padding: 5px;
            }

            .login input[type=password]{
                width: 300px;
                height: 50px;
                background: transparent;
                border: 4px solid rgba(255,255,255,0.6);
              border-radius: 23px;
                color: #fff;
                font-family: Verdana, Geneva, Tahoma, sans-serif;
                font-size: 16px;
                font-weight: 700;
                padding: 5px;
                margin-top: 15px;
            }

            .header div{
                 float: left;
                color: #fff;
                font-family: 'Courier New', Courier, monospace;
                font-size: 40px;
                font-weight: 800;
		}
		
		.button4 {
    background-color: #f19d02;
    color: black;
    border: 2px solid #11153b;
    border-radius: 6px;
    padding: 4px;
    width: 74px;
    height: 40px;
}
			.login {
    	position: absolute;
    	top: calc(30% - 75px);
    	left: calc(65% - 50px);
    	padding: 20px;
    	width: 25%;
   			 border-radius: 30px;
    		background-color: #11153b;
    		opacity: 0.8;
}

</style>
</head>
<body>
	 <form:form method="post" action="allFlights" modelAttribute="flightdetails">
  <div class="body"></div>
            <div class="grad"></div>
            <div class="header">
                <div style="font-weight:75px;font-family:Forte;font-size:50px;">ADMIN LOGIN</div>
            </div>
            <br>
            <div class="login">
                     <input type="text" placeholder="username" name="adminuser" required><br>
                    <input type="password" placeholder="password" id="psw" name="adminpsw"  required>
                    <br>
                    <br> 
                    <div style="padding-left:250px;">
                    <input type="submit" class="button4" value="Login" onclick="return check(this.form)">
                    </div>
            </div>

		<script language="javascript">
		function check(form)
		{

		if(form.adminuser.value == "admin" && form.adminpsw.value == "admin")
		{
			return true;
		}
		else
		{
			alert("Error Password or Username")
			return false;
		}
		}
</script>
</form:form>
</body>
</html>