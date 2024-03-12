package com.client;

import jakarta.servlet.RequestDispatcher;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.List;

public class ReqstInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//Handle requests
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Retrieve user inputs from the form
		String eventPurpose = request.getParameter("eventPurpose");
		String eventName = request.getParameter("eventName");
		String eventDate = request.getParameter("eventDate");
		String eventLocation = request.getParameter("eventLocation");
		String budget = request.getParameter("budget");
		int attendance = Integer.parseInt(request.getParameter("attendance"));
		int catering = (request.getParameter("catering") == null) ? 0:1;
		int entertainment = (request.getParameter("entertainment") == null) ? 0:1;
		int decor = (request.getParameter("decor") == null) ? 0:1;
		int photography = (request.getParameter("photography") == null) ? 0:1;
		String contactNumber = request.getParameter("contactNumber");
		String email = request.getParameter("email");

		boolean isTrue;
			
		
		isTrue = RequestDButil.newRequest(eventPurpose, eventName, eventDate, eventLocation, budget, attendance, catering, entertainment, decor, photography, contactNumber, email);
				if(isTrue == true) {
					
					//Calling the method
					List<Event> eve = RequestDButil.getEvent(email);
					Event e1 = eve.get(0);
					System.out.println(e1.getEmail());
					
					//Directing user to dashboard.jsp
					RequestDispatcher rd1 = request.getRequestDispatcher("dashboard.jsp");
					request.setAttribute("events", eve);
					rd1.forward(request, response);
				}
				else {
					
					RequestDispatcher rd2 = request.getRequestDispatcher("UnsuccessfulSignUp.jsp");
					rd2.forward(request, response);
				}
			}

}
