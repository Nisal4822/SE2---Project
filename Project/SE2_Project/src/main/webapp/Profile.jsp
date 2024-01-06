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
<link rel="stylesheet" type="text/css" href="css/Profile.css">
<title>Profile Page</title>
</head>
<body>

<%@include file="/WebComponents/Navbar.jsp"%>


<div class="container">
        <div class="leftbox">
            <nav>
                <a onclick="tabs(0)" class="tab active">
                    <i class="fas fa-user"></i>
                </a>
                
            </nav>
        </div>
        <div class="rightbox">
            <div class="profile tabShow">
                <h1>Personal Information</h1>

                <h2> <lable for="first Name">First Name:</lable></h2>
                <input type="text" class="first Name" name="first Name "required>

                <h2><lable for ="last Name">Last Name:</lable></h2>
                <input type="text" class="last Name" name="last name"requires>

                <h2><lable for="phone Number">Phone Number:</lable></h2>
                <input type="tel" class="phone Number" name="phone Number"required>

                <h2><lable for ="email">Email:</lable></h2>
                <input type="email" class="email"name ="email"required>
                <br>


                <table>
                    <tr>
                        <td>
                            <button class="uploadBtn" class="bottom-left-btn">Update</button>
                        </td>
                        <td>
                            <button class="logoutBtn"class="bottom-right-btn">Logout</button>
                        </td>
                    </tr>
                </table>
                
                
            </div>
            
        </div>
    </div>


<%@include file="/WebComponents/Footer.jsp"%>

</body>
</html>