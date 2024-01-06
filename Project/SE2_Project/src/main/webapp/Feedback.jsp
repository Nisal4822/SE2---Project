<%@page import="DBConnection.DbCon"%>
<%@page import="Daofiles.ProductDao"%>
<%@page import="Modelfiles.*"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@include file="/WebComponents/Header.jsp"%>
    <title>Feedback Form</title>
    
</head>
<body>

<%@include file="/WebComponents/Navbar.jsp"%>
    <form action="FeedbackServlet" method="post">
    
    <table style="background-color: #03fcdb; margin: auto;">
        
        <tr>
        <th><h2>Feedback Form</h2></th>
        </tr>
        
        <tr>
        <td>
        <label for="firstname">First Name:</label>
        </td>
        <td>
        <input type="text" id="firstname" name="firstname" required><br>
        </td>
        </tr>
        
        <tr>
        <td>
        <label for="Useremail">Email:</label>
        </td>
        <td>
        <input type="email" id="Useremail" name="Useremail" required><br>
        </td>
        </tr>
        
        <tr>
        <td>
        <label for="feedback">Feedback:</label>
        </td>
        <td>
        <textarea id="feedback" name="feedback" rows="4" required></textarea><br>
        </td>
        </tr>
        
        <tr>
        <td>
        </td>
        <td>
        <input type="submit" value="Submit" style="background-color: #03fc13; margin: auto;">
        </td>
        </tr>
        
        </table>
        
    </form>
    
    <%@include file="/WebComponents/Footer.jsp"%>
</body>
</html>
