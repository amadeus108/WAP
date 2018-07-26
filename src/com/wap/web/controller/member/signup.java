package com.wap.web.controller.member;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wap.web.entity.*;
import com.wap.web.service.MemberService;

/**
 * Servlet implementation class signup
 */
@WebServlet("/member/signup")
public class signup extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/member/signup.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberService service = new MemberService(getServletContext());
		
		String type = request.getParameter("type");
		String email = request.getParameter("email");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(type.equals("client")) {
			Client client = new Client(email,id,pwd);
			service.insertClient(client);
			
		}else {
			Partner partner = new Partner(email,id,pwd);
			service.insertPartner(partner);
		}
		response.sendRedirect("login");
		
	}

}
