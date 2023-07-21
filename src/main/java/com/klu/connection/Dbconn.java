package com.klu.connection;

import java.sql.*;

public class Dbconn {
    private static Connection connection = null;
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		if(connection == null) {
		Class.forName("com.mysql.cj.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tribalproducts", "root",
				"Nikki@123");
		System.out.println("connected");
		}
		return connection;
	}
}
