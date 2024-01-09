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
<title>Feedback Submitted Successfully</title>
</head>
<body>

<h2>Thank you, <%= request.getAttribute("firstnamename") %>!</h2>
    <p>Your feedback has been submitted successfully.</p>

</body>
</html>