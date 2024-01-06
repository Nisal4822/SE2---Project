<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/Navbar.css">
<title>Green SuperMarket</title>
</head>
<body>

<nav class="navigation">

            <!--logo-------->
            <div class="logo">
                <a href="index.jsp" class="logo">

                    <img src="images/green-supermarket-high-resolution-logo-transparent.png">
    
                </a>

            </div>

            <!--menu-btn---->
            <input type="checkbox" class="menu-btn" id="menu-btn">

            <label for="menu-btn" class="menu-icon">

                <span class="nav-icon"></span>

            </label>

            <!--menu-------->
            <ul class="menu">

                <li>

                    <a href="#category">

                        Categories
                    
                    </a>
                
                </li>

           
				
				<li>

					<a href="About Us.jsp">

						About&nbsp;us

					</a>

                </li>

               
                <li>
                    
                    <a href="Registerpage.jsp">
                            
                        Sign&nbsp;up
                        
                    </a>
                    
                </li>

                
                <li>
                    
                    <a href="Login.jsp">
                        
                        Login
                    
                    </a>
                
                </li>
                
                
                    <div class="right-nav">
                        <!--cart----->
                        <a href="Cart.jsp" class="cart">
                            <img src="images/cart_icon.png" class="prof-icon">
                            <!-- <i class="fas fa-shopping-cart"></i>  <span>2</span> -->
                        </a>
                    </div>
                </li>

                <li>
                    
                    <div class="right-nav">
                        <!--cart----->
                        <a href="Profile.jsp" class="user-profile">
                            <img src="images/profile_icon.png" class="cart-icon">

                        </a>
                    </div>
                </li>

				</ul>

            

        </nav>

</body>
</html>