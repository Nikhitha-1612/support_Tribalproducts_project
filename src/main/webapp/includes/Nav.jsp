<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	font-size: 20px;
	text-decoration: none;
}

li a:hover {
	background-color: #111;
}
</style>
</head>
<body>
	<nav>
		<div class="contianer">
			<ul>
				<li><a href="Index.jsp">Home</a></li>
				<li><a href="cart.jsp">Cart<span class="badge badge-danger">${cart_list.size()}</span></a></li>
				<%
				if (auth != null) {
				%>
				<li><a href="orders.jsp">Orders</a></li>
				<li><a href="log-out">Logout</a></li>
				<%
				} else {
				%>
				<li><a href="login.jsp">Login</a></li>
				<li><a href="aboutus.jsp">About Us</a></li>
				<%
				}
				%>
                
			</ul>
		</div>
	</nav>

</body>
</html>