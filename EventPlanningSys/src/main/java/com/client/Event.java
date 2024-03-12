package com.client;

public class Event {

	//Event details
	private int event_id;
	private String purpose;
	private String event_name;
	private String date;
	private String event_location;
	private String budget;
	private String attendence;
	private int catering;
	private int entertainment;
	private int decor;
	private int photography;
	private String contactNo;
	private String email;
	
	
	//Constructor to initialize event objects
	public Event(int event_id, String purpose, String event_name, String date, String event_location, String budget,
			String attendence, int catering, int entertainment, int decor, int photography, String contactNo,
			String email) {
		super();
		this.event_id = event_id;
		this.purpose = purpose;
		this.event_name = event_name;
		this.date = date;
		this.event_location = event_location;
		this.budget = budget;
		this.attendence = attendence;
		this.catering = catering;
		this.entertainment = entertainment;
		this.decor = decor;
		this.photography = photography;
		this.contactNo = contactNo;
		this.email = email;
	}
	
	//Getter methods to access event details
	public int getEvent_id() {
		return event_id;
	}
	public String getPurpose() {
		return purpose;
	}
	public String getEvent_name() {
		return event_name;
	}
	public String getDate() {
		return date;
	}
	public String getEvent_location() {
		return event_location;
	}
	public String getBudget() {
		return budget;
	}
	public String getAttendence() {
		return attendence;
	}
	public int getCatering() {
		return catering;
	}
	public int getEntertainment() {
		return entertainment;
	}
	public int getDecor() {
		return decor;
	}
	public int getPhotography() {
		return photography;
	}
	public String getContactNo() {
		return contactNo;
	}
	public String getEmail() {
		return email;
	}
	
	
}
