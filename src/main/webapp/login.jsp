<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.klu.model.*"%>
<%@ page import="java.util.*" %>
<%@ page import="com.klu.connection.Dbconn"%>

<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
	request.setAttribute("auth", auth);
}
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
<title>Login page</title>
<%@include file="includes/head.jsp"%>
</head>
<body>
	<%@include file="includes/footer.jsp"%>
	<%@include file="includes/Nav.jsp"%>
	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Login in</div>
			<div class="card-body">
				<form action="user-login" method="post">
					<div class="form-group">
						<label>Email Address</label> <input type="email"
							class="form-control" name="login-email"
							placeholder="Ex.xyz@gmail.com" required="required">
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password"
							class="form-control" name="login-password"
							placeholder="Enter password" required="required">
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primart">Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>