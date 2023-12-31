package com.klu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;
import com.klu.model.*;

public class ProductDao {
	private Connection con;
	private String query;
	private PreparedStatement psmt;
	private ResultSet rs;
	public ProductDao(Connection con) {
		super();
		this.con = con;
	}
    public List<Product> getAllProducts(){
    	List<Product> products = new ArrayList<>();
    	try {
    		query = "select * from products";
    		psmt = this.con.prepareStatement(query);
    		rs = psmt.executeQuery();
    		while(rs.next()) {
    			Product row = new Product();
    			row.setId(rs.getInt("id"));
    			row.setName(rs.getString("name"));
    			row.setCategory(rs.getString("category"));
    			row.setPrice(rs.getDouble("price"));
    			row.setImage(rs.getString("image"));
    			
    			products.add(row);
    		}
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
		return products;
    }
    public List<Cart> getCartProducts(ArrayList<Cart> cartList){
		List<Cart> products = new ArrayList<Cart>();
		try {
			if(cartList.size()>0) {
				for(Cart item:cartList) {
					query = "select * from products where id=?";
					psmt = this.con.prepareStatement(query);
					psmt.setInt(1,item.getId());
					rs = psmt.executeQuery();
					while(rs.next()) {
						Cart row = new Cart();
						row.setId(rs.getInt("id"));
						row.setName(rs.getString("name"));
						row.setCategory(rs.getString("category"));
						row.setPrice(rs.getDouble("price"));
						row.setPrice(rs.getDouble("price")*item.getQuantity());
						row.setQuantity(item.getQuantity());
						products.add(row);
					}
				}
			}
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
			//e.printStackTrace();
		}
		return products;
	}
    public double getTotalCartPrice(ArrayList<Cart> cartList) {
    	double sum=0;
    	try {
    		if(cartList.size()>0) {
    			for(Cart item : cartList) {
    	    		query = "select price from products where id=?";
                    psmt = this.con.prepareStatement(query);
                    psmt.setInt(1, item.getId());
                    rs = psmt.executeQuery();
                    
                    while(rs.next()) {
                    	sum+=rs.getDouble("price")*item.getQuantity();
                    }
    			}
    		}
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	return sum;
    }
    
}
