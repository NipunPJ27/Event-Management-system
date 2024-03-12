package com.client;

public class Client {

	//Client details
	private int client_id;
	private String client_name;
	private String client_email;
	private String client_phone;
	private String client_pw;
	
	//Constructor to initialize the client object
	public Client(int client_id, String client_name, String client_email, String client_phone, String client_pw) {
		super();
		this.client_id = client_id;
		this.client_name = client_name;
		this.client_email = client_email;
		this.client_phone = client_phone;
		this.client_pw = client_pw;
	}

	//getters to access client's attributes
	public int getClient_id() {
		return client_id;
	}

	public String getClient_name() {
		return client_name;
	}

	public String getClient_email() {
		return client_email;
	}

	public String getClient_phone() {
		return client_phone;
	}

	public String getClient_pw() {
		return client_pw;
	}
	
	
}
