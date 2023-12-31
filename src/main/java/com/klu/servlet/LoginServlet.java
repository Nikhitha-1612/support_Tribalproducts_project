package com.klu.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.klu.connection.Dbconn;
import com.klu.dao.UserDao;
import com.klu.model.User;

@WebServlet("/user-login")
//@WebServlet(name="hello",urlPatterns={"/user-login"}) // added this line

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset= UTF-8");
		try(PrintWriter out = response.getWriter()){
           String  email = request.getParameter("login-email");
           String  password = request.getParameter("login-password");
         
           try {
			UserDao udao = new UserDao(Dbconn.getConnection());
			User user = udao.userLogin(email, password);
			if(user!=null) {
				request.getSession().setAttribute("auth", user);
				response.sendRedirect("Index.jsp");
			}
			else {
				out.print("user login failed");
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		}
	}

}
