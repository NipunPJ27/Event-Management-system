package com.client;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
//import javax.servlet.RequestDispatcher;


//Handle requests
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		try {
			
			//Call the method
			List<Client> cli_details = ClientDButil.validate(email, password);
			request.setAttribute("cli_details", cli_details);	
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		//Direct user to clientpage,jsp
		RequestDispatcher dis = request.getRequestDispatcher("clientpage.jsp");
		dis.forward(request, response);
	}

}
