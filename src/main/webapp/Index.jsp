<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.klu.model.*"%>
<%@ page import="com.klu.connection.Dbconn"%>
<%@ page import="com.klu.dao.*" %>
<%@ page import="java.util.*" %>

<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
	request.setAttribute("auth", auth);
}

ProductDao pd = new ProductDao(Dbconn.getConnection());
List<Product> products = pd.getAllProducts();
ArrayList<Cart> cart_list =(ArrayList<Cart>)session.getAttribute("cart-list");
List<Cart> cartProduct = null;
if(cart_list!=null){
	 request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Support Tribal People</title>
<%@include file="includes/head.jsp"%>
</head>
<body>
	<%@include file="includes/footer.jsp"%>
	<%@include file="includes/Nav.jsp"%>
	<div class="container">
		<div class="card-header my-3">All Products</div>
		<div class="row">
		<%
		    if(!products.isEmpty()){
			for(Product p:products){%>
			<div class="col-md-3">
				<div class="card w-100" style="width: 18rem; max-height: 800px;">
					<img class="card-img-top" src="image/<%=p.getImage()%>" alt=".." />
					<div class="card-body">
						<h5 class="card-title"><%= p.getName()%></h5>
						<h6 class="price">Price : <%= p.getPrice() %></h6>
						<h6 class="category">Category:<%= p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a href="add-to-cart?id=<%=p.getId()%>" class="btn btn-primary">Add to cart</a> <a href="#"
								class="btn btn-primary">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
			<%}
			}%>
		</div>
	</div>
</body>
</html>