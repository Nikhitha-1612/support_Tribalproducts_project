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
 ArrayList<Cart> cart_list =(ArrayList<Cart>)session.getAttribute("cart-list");
 List<Cart> cartProduct = null;
 if(cart_list!=null){
	 ProductDao pdao = new ProductDao(Dbconn.getConnection());
	 cartProduct = pdao.getCartProducts(cart_list);
	 double total =  pdao.getTotalCartPrice(cart_list);
	 request.setAttribute("cart_list", cart_list);
	 request.setAttribute("total", total);
 }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<%@include file="includes/head.jsp"%>
</head>
<body>
	<%@include file="includes/footer.jsp"%>
	<%@include file="includes/Nav.jsp"%>
	<div class="container">
		<div class="d-flex py-3">
			<h3>Total Price: $ ${(total>0)?total:0}</h3>
			<a class="mx-3 btn btn-primary" href="#">Check Out</a>
		</div>
		<table class="table table-loght">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Category</th>
					<th scope="col">Price</th>
					<th scope="col">Buy Now</th>
					<th scope="col">Cancel</th>
				</tr>
			</thead>
			<tbody>
			<%if(cart_list!=null){
				for(Cart c:cartProduct){%>
					<tr>
					<td><%= c.getName() %></td>
					<td><%= c.getCategory() %></td>
					<td><%= c.getPrice() %></td>
					<td>
						<form action="" method="post" class="form-inline">
							<input type="hidden" name="id" value="<%= c.getId() %>" class="form-input">
							<div class="form-group d-flex justify-content-between">
								<a class="btn btn-sm btn-decre" href="incre-decr-servlet?action=dec&id=<%=c.getId()%>"><i
									class="fas fa-minus-square"></i></a> <input type="text"
									name="quantity" class="form-control" value="<%=c.getQuantity() %>" readonly>
								<a class="btn btn-sm btn-incre" href="incre-decr-servlet?action=inc&id=<%=c.getId()%>"><i
									class="fas fa-plus-square"></i></a>

							</div>
						</form>
					<td><a class="btn btn-sm btn-danger" href="">Remove</a></td>
				</tr>
				<%}
			}
			%>
			</tbody>
		</table>
	</div>

</body>
</html>