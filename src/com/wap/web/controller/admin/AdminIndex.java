package com.wap.web.controller.admin;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wap.web.controller.member.*;

/**
 * Servlet implementation class AdminIndex
 */
@WebServlet("/admin/adminIndex")
public class AdminIndex extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/admin/index.jsp");
		dispatcher.forward(request, response);
	}

}
