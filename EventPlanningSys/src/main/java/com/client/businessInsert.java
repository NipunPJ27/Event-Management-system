package com.client;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class businessInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//Retrieve user inputs from the form
		String bname = request.getParameter("name");
		String btype = request.getParameter("Businesstype");
		String stype = request.getParameter("Servicetype");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String BregNo = request.getParameter("business-reg");
		String location = request.getParameter("location");
		String password = request.getParameter("password");
		
boolean isTrue;
		
		//Call method
		isTrue = BusinessDButil.signupbusiness(bname, btype, stype, email, contact, BregNo, location, password);
		
		
		//Check the method and direct
		if(isTrue == true) {
			RequestDispatcher rd1 = request.getRequestDispatcher("SuccessfulSignup.jsp");
			rd1.forward(request, response);
		}
		else {
			RequestDispatcher rd2 = request.getRequestDispatcher("UnsuccessfulSignUp.jsp");
			rd2.forward(request, response);
		}
	}

}
