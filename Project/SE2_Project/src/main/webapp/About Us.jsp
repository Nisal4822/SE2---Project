<%@page import="DBConnection.DbCon"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/WebComponents/Header.jsp"%>
<title>About Us</title>
</head>
<body>

<%@include file="/WebComponents/Navbar.jsp"%>

<div class = "section">

            <div class = "container">

                <div class = "content-section">

                    <div class = "title">

                        <h1 style = "font-family: 'Poppins', sans-serif;">

                            About Us

                        </h1>

                    </div>

                    <div class = "content">
 
                        <p>
                            At <b>GREEN Supermarket</b>, we're proud to have led the way in the supermarket sector and are dedicated to giving our patrons a seamless, contemporary shopping experience. We've changed with the times, and we now realize that in order to satisfy our cherished clients' rising demands, we must improve and adjust our services.

                            We are excited to present our redesigned and dynamic website because we recognize how important it is to be on the cutting edge of technology in our pursuit of greatness. Our brand-new online platform is intended to improve your buying experience by putting innovation and convenience at your fingertips.
                            
                            
                            In order to make your online shopping experience more efficient and pleasurable, GREEN Supermarket has embraced the digital age and is now providing a number of great features. 
                            Now more than ever, transactions are safer and more seamless thanks to our improved online payment processing technology. 
                            To provide a smooth and stress-free experience for each and every customer, we've also integrated state-of-the-art technologies to prevent shopping collisions.

                            Our new website has a feature that lets you see user evaluations and opinions since we at GREEN Supermarket respect your input.
                        </p>
                        
                    </div>


                </div>


                <div class = "image-section">
                        <img src = "images/vegi123.jpg"  style = 'cursor: pointer;'>
                </div>

            </div>

        </div>
        
        <!-- Footer -->
	<%@include file="/WebComponents/Footer.jsp"%>

</body>
</html>