package com.client;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ClientDButil {

		private static Connection con =null;
		private static Statement stmt = null;
		private static ResultSet rs =null;
	
	
	//Validate	
	public static List<Client> validate(String email,String password){
		
		ArrayList<Client> cli = new ArrayList<>();

		try {
			//Database connectivity
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//Query to get client data from database
			String sql = "SELECT * FROM client WHERE client_email = '"+email+"' and client_pw = '"+password+"'"; 
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int c_id = rs.getInt(1);
				String c_name = rs.getString(2);
				String c_email = rs.getString(3);
				String c_phone = rs.getString(4);
				String C_pw = rs.getString(5);
				
				Client c = new Client(c_id, c_name, c_email, c_phone, C_pw);
				cli.add(c);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cli;
}
	
		public static boolean signupclient (String name, String email, String phone, String password) {
			
			boolean isSuccess = false;
			
			
			try {
				
				//Database connectivity
				con = DBConnect.getConnection ();
				stmt = con.createStatement();
			
				//Query to get client data from database
				String sql = "INSERT INTO client VALUES (0, '"+name+"', '"+email+"', '"+phone+"', '"+password+"')";
				int rs = stmt.executeUpdate(sql);
				
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