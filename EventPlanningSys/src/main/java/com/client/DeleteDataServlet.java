package com.client;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteData")
public class DeleteDataServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    //Handle Requests
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	int e_id = Integer.parseInt(request.getParameter("e_id"));
        String c_email = request.getParameter("email");
        

        try {
        	
        	//Call the method
        	List<Event> eve = RequestDButil.deleteEvent(e_id, c_email);
        	RequestDispatcher rd1 = request.getRequestDispatcher("dashboard.jsp");
			request.setAttribute("events", eve);
			rd1.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
            
        }
    }
}
