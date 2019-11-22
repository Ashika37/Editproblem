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
                background-image: url(https://media.mehrnews.com/old/Original/1393/12/27/IMG17154437.jpg);
                background-size:cover;
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

            .login{
                position: absolute;
                top: calc(25% - 75px);
                left: calc(65% - 50px);
                padding: 20px;


                width: 25%;
            border-radius: 30px;
                background-color: #110e09;
                opacity: 0.8;
            }

            .login input[type=text]{
                width: 300px;
                height: 50px;
                background: transparent;
                border: 1px solid rgba(255,255,255,0.6);
                border-radius: 2px;
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
                border: 1px solid rgba(255,255,255,0.6);
                border-radius: 2px;
                color: #fff;
                font-family: Verdana, Geneva, Tahoma, sans-serif;
                font-size: 16px;
                font-weight: 700;
                padding: 5px;
                margin-top: 15px;
            }

            .login input[type=button]{
                width: 200px;
                height: 35px;
                background: beige;
                border: 1px solid rgb(22, 20, 20);
                border-radius: 20px;
                color: #a18d6c;
                font-family: 'Franklin Gothic Medium', 'Arial Narrow',Arial, sans-serif;
                font-size: 16px;
                font-weight: 700;
                padding: 6px;
                margin-top: 15px;

            }

            .header div{
                 float: left;
                color: #fff;
                font-family: 'Courier New', Courier, monospace;
                font-size: 40px;
                font-weight: 200;
}

</style>
</head>
<body>
	 <form:form method="post" action="allFlights" modelAttribute="flightdetails">
  <div class="body"></div>
            <div class="grad"></div>
            <div class="header">
                <div>LOGIN</div>
            </div>
            <br>
            <div class="login">
                     <input type="text" placeholder="username" name="adminuser" required><br>
                    <input type="password" placeholder="password" id="psw" name="adminpsw"  required> 
                    <input type="submit" value="Login" onclick="return check(this.form)">
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