package com.client;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class BusinessDButil {

	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs =null;	
	

	public static boolean signupbusiness (String bname, String btype, String stype, String email, String contact, String BregNo, String location, String password) {
		
		boolean isSuccess = false;
		
		try {
			//Get a database connection
			con = DBConnect.getConnection ();
			stmt = con.createStatement();
			
			//Query to add values ton the database
			String sql = "INSERT INTO business VALUES (0, '"+bname+"', '"+btype+"', '"+stype+"', '"+email+"', '"+contact+"', '"+BregNo+"', '"+location+"', '"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			//Check query works
			if(rs > 0) {
				isSuccess = true;
			}
			else{
				isSuccess = false;
			}
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
}
