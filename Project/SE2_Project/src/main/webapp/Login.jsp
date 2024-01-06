<%@page import="DBConnection.DbCon"%>
<%@page import="Daofiles.ProductDao"%>
<%@page import="Modelfiles.*"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/WebComponents/Header.jsp"%>
<link rel="stylesheet" type="text/css" href="css/Login.css">
<title>Login Page</title>
</head>
<body>

<%@include file="/WebComponents/Navbar.jsp"%>


<div class="center">
		<h1>LOGIN</h1>
		<form actiom ="RegisterServlet"method="Post">
			<div class="txt_field">
				<input type="text" name ="Useremail" id ="Useremail" required>
				<span></span>
				<label>Email</label>
			</div>
			 <div class="txt_field">
			 	<input type="password" name = "Userpswd" id ="Userpswd" required >
			 	<span></span>
			 	<label>Password</label>
			 </div>
			
			 <input type="submit" name="Login" value="Login">
			 <div class="signup_link">
			 	Don't have account? <a href="Registerpage.jsp">Register</a>
			 	
			 </div>
		</form>
	</div>




</body>
</html>