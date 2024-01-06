<%@page import="DBConnection.DbCon"%>
<%@page import="Daofiles.ProductDao"%>
<%@page import="Modelfiles.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("person", auth);
}
ProductDao pd = new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/WebComponents/Header.jsp"%>
<link rel="stylesheet" type="text/css" href="css/Index.css">
<title>Green Supermarket</title>
</head>
<body>

<%@include file="/WebComponents/Navbar.jsp"%>



            <!--bg--------->
            <img alt="Supermarket Image" class="banner" src="images/banner_image.png">

            <!--text------->
            <div class="search-banner-text">

                <h1>
                    
                    Your daily grocery spot
                
                </h1>


                <br>

                

            </div>
        
        
        <!--==category=========================================-->
        <section id="category">

            <!--heading---------------->
            <div class="category-heading">

                <h2>
                    
                    Categories
                
                </h2>

            </div>

            <!--box-container---------->
            <div class="category-container">

                <!--box---------------->
                
				<!--box---------------->
                <a class="category-box" href = 'Stationary.jsp'>
                    <img alt="Stationaries" src="images/stationary_icon.png">
                    <span>Stationaries</span>
                </a>
                <!--box---------------->
                <a class="category-box" href="Beverages.jsp">
                    <img alt="Beverages" src="images/beverage_icon.png">
                    <span>Beverages</span>
                </a>
                <!--box---------------->
                <a class="category-box" href = 'Backery.jsp'>
                    <img alt="Bakery" src="images/backery_items_icon.png">
                    <span>Bakery Items</span>
                </a>
                <!--box---------------->
                <a class="category-box" href = 'Fruits and Vegetables.jsp'>
                    <img alt="Fruits & Vegetables" src="images/Vegetables.png">
                    <span>Fruits and Vegetables</span>
                </a>
                
            </div>
            
        </section>
        <!--category-end----------------------------------->
        
        
        
        
        <!-- Popular Products -->
        <div class="container">
		<div class="card-header my-3">Popular Products</div>
		<div class="row">
			<%
			if (!products.isEmpty()) {
				for (Product p : products) {
			%>
			<div class="col-md-3 my-3">
				<div class="card w-100">
					<img class="card-img-top" src="product-image/<%=p.getImage() %>"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=p.getName() %></h5>
						<h6 class="price">Price: $<%=p.getPrice() %></h6>
						<h6 class="category">Category: <%=p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a class="btn btn-dark" href="add-to-cart?id=<%=p.getId()%>">Add to Cart</a> <a
								class="btn btn-primary" href="order-now?quantity=1&id=<%=p.getId()%>">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			} else {
			out.println("No more products");
			}
			%>

		</div>
	</div>
	
	<!-- Footer -->
	<%@include file="/WebComponents/Footer.jsp"%>

</body>
</html>