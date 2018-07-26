package com.wap.web.controller.partner;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import com.wap.web.service.*;

@WebServlet("/partner/info/pwd-edit")
public class pwd_edit extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		PartnerService ps = new PartnerService(getServletContext());
		String id = "";
		
		HttpSession session = request.getSession();
		String id_ = (String) session.getAttribute("sessionId"); // 세션은 object를 반환
		if (id_ != null && !id_.equals("")) {
			id = id_;
		}
		String email = ps.getEmail(id);
		request.setAttribute("email", email);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/partner/info/pwd-edit.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}
}
