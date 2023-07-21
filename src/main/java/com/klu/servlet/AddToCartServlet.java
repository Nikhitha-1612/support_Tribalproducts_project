package com.klu.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.klu.model.Cart;

/**
 * Servlet implementation class AddToCartServlet
 */
@WebServlet("/add-to-cart")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   response.setContentType("text/html;charset=UTF-8");
	   try(PrintWriter out = response.getWriter()){
		   ArrayList<Cart> cartList = new ArrayList<>();
		   int id = Integer.parseInt(request.getParameter("id"));
		   Cart cart = new Cart();
		   cart.setId(id);
		   cart.setQuantity(1);
		   
		   HttpSession session = request.getSession();
		   ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
		   if(cart_list==null) {
			   cartList.add(cart);
			   session.setAttribute("cart-list", cartList);
			   response.sendRedirect("Index.jsp");
		   }
		   else {
			   cartList = cart_list;
			   boolean exist = false;
			   
			   for(Cart c:cart_list) {
				  if(c.getId()==id) {
					  exist = true;
					  out.println("<h3 style='colr:crimson; text-align:center'> Item already Exist in cart.<a href='cart.jsp'>Go to Cart Page</a>");
				  }
			   }
			   if(!exist) {
				   cartList.add(cart);
				   response.sendRedirect("Index.jsp");
				  }
		   }
	   }
	}

}
