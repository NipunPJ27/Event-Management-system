package com.client;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RequestDButil {
	
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs =null;
	
	
//Retrieve events associated with that email	
public static List<Event> getEvent(String email){
	
	ArrayList<Event> ev = new ArrayList<>();

	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "SELECT * FROM request WHERE email = '"+email+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int e_id = rs.getInt(1);
			String purpose = rs.getString(2);
			String eventName = rs.getString(3);
			String eventDate = rs.getString(4);
			String e_location = rs.getString(5);
			String budget = rs.getString(6);
			String attendance = rs.getString(7);
			int catering = rs.getInt(8);
			int entertainment = rs.getInt(9);
			int decor = rs.getInt(10);
			int photography = rs.getInt(11);
			String contactNumber = rs.getString(12);
			String c_email = rs.getString(13);
			
			Event e = new Event(e_id, purpose, eventName, eventDate, e_location, budget, attendance, catering, entertainment, decor, photography, contactNumber, c_email);
			ev.add(e);
			
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return ev;
}
	

	public static boolean newRequest (String eventPurpose, String eventName, String eventDate, String eventLocation, String budget, 
			int attendance, int catering, int entertainment, int decor, int photography, String contactNumber, String email) {
		
		boolean isSuccess =false;

		try {
			con = DBConnect.getConnection ();
			stmt = con.createStatement();
			
			//Insert new event request to database
			String sql = "INSERT INTO request VALUES (0, '"+eventPurpose+"', '"+eventName+"', '"+eventDate+"', '"+eventLocation+"', '"+budget+"', '"+attendance+"', '"+catering+"', '"+entertainment+"', '"+decor+"', '"+photography+"', '"+contactNumber+"', '"+email+"')";
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
	
	public static List<Event> updateEvent(int e_id, String purpose, String ename, String date,  String budjet, String attendance, String contactNumber,  String c_email){
		
		List<Event> ev = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//Update event details into database
			String sql = "UPDATE request SET purpose='"+purpose+"', event_name='"+ename+"', event_date='"+date+"', budget='"+budjet+"', attendence='"+attendance+"', contactNo='"+contactNumber+"' WHERE event_id='"+e_id+"'";
            int up = stmt.executeUpdate(sql);
            ev = RequestDButil.getEvent(c_email);
			}
			
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return ev;
	}
	
public static List<Event> deleteEvent(int e_id, String c_email){
		
		List<Event> ev = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//Delete event details from database
			String sql = "delete request FROM request WHERE event_id='"+e_id+"'";
            int up = stmt.executeUpdate(sql);
            ev = RequestDButil.getEvent(c_email);
			}
			
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return ev;
	}
}