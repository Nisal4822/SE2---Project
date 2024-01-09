<%@page import="DBConnection.DbCon"%>
<%@page import="User.register.Register_Dao"%>
<%@page import="User.register.*"%>
<%@page import="java.util.*"%>

<%@  page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@include file="/WebComponents/Header.jsp"%>
    <title>User Registration Form</title>
    
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        form {
            max-width: 400px;
            margin: auto;
        }

        label, input, button {
            display: block;
            margin: 10px 0;
        }

        button {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<%@include file="/WebComponents/Navbar.jsp"%>

    <form action="RegisterServlet" method="post">
  
        <label for="firstname">First Name:</label>
        <input type="text" id="firstname" name="firstname" required>

        <label for="lastname">Last Name:</label>
        <input type="text" id="Lastname" name="Lastname" required>

        <label for="mobile">Mobile Number:</label>
        <input type="text" id="Mobilenumber" name="Mobilenumber" required>

        <label for="email">Email:</label>
        <input type="email" id="Useremail" name="Useremail" required>

        <label for="paypalEmail">PayPal Email:</label>
        <input type="email" id="Paypalemail" name="Paypalemail" required>

        <label for="paypalPassword">PayPal Password:</label>
        <input type="password" id="Paypalpswd" name="Paypalpswd" required>

        <label for="password">Password:</label>
        <input type="password" id="Userpswd" name="Userpswd" required>

        <button type="submit">Submit</button>
        <button type="button" onclick="clearForm()">Clear</button>
    </form>

    <script>
        function clearForm() {
            document.getElementById("firstname").value = "";
            document.getElementById("lastname").value = "";
            document.getElementById("mobile").value = "";
            document.getElementById("email").value = "";
            document.getElementById("paypalEmail").value = "";
            document.getElementById("paypalPassword").value = "";
            document.getElementById("password").value = "";
        }
    </script>
    
    <!-- Footer -->
	<%@include file="/WebComponents/Footer.jsp"%>

</body>
</html>