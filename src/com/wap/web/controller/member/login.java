package com.wap.web.controller.member;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.wap.web.service.*;

/**
 * Servlet implementation class login
 */
@WebServlet("/member/login")
public class login extends HttpServlet {
	HttpSession session;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/member/login.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberService service = new MemberService(getServletContext());
		Boolean login = false;

		String type = request.getParameter("type");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		login = service.confirmId(type, id, pwd);
		if (login) {
			session.setAttribute("sessionId", id);
			response.sendRedirect("../partner/main");
		} else {
			response.sendRedirect("login");
		}

	}

}
