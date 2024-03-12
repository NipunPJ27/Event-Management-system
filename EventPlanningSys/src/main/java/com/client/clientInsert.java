package com.client;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class clientInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//Retrieve user inputs from the form
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String contactno = request.getParameter("contactno");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		//Call the method
		isTrue = ClientDButil.signupclient(name, email, contactno, password);
		
		
		if(isTrue == true) {
			RequestDispatcher rd1 = request.getRequestDispatcher("login.jsp");
			rd1.forward(request, response);
		}
		else {
			RequestDispatcher rd2 = request.getRequestDispatcher("UnsuccessfulSignup.jsp");
			rd2.forward(request, response);
		}
		
	}

}
