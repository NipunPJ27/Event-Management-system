package com.client;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static String url = "jdbc:mysql://localhost:3305/event";
	private static String Username = "root";
	private static String password = "mysql123";
	private static Connection con;
	
	
	//Method to get database connection
	public static Connection getConnection() {
		
		try {
			
			//MySQL JDBC driver
			Class.forName("com.mysql.jdbc.Driver"); 
			
			//Make the connection
			con = DriverManager.getConnection(url, Username, password);
		}
		catch (Exception e) {
			System.out.println("Databse connection unsuccessful.");
		}
		
		return con;
	}
	
}







