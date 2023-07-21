package com.klu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.klu.model.User;

import java.sql.*;

public class UserDao {
	private Connection con;
	private String query;
	private PreparedStatement psmt;
	private ResultSet rs;

	public UserDao(Connection con) {
		super();
		this.con = con;
	}

	public User userLogin(String email, String password) {
		User user = null;
		try {
			query = "select * from users where email=? and password=?";
			psmt = this.con.prepareStatement(query);
			psmt.setString(1, email);
			psmt.setString(2, password);
			rs = psmt.executeQuery();
			if (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));

			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return user;
	}

}
