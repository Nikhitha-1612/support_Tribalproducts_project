<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.klu.model.*"%>
<%@ page import="com.klu.connection.Dbconn"%>
<%@ page import="java.util.*" %>

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
<title>Orders Page</title>
<%@include file="includes/head.jsp"%>
</head>
<body>
	<%@include file="includes/footer.jsp"%>
	<%@include file="includes/Nav.jsp"%>
</body>
</html>