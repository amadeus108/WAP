package com.wap.web.controller.partner;

import java.io.IOException;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.wap.web.entity.*;
import com.wap.web.service.*;

/**
 * Servlet implementation class InterestedProject
 */
@WebServlet("/partner/interestedproject")
public class InterestedProject extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PartnerService ps = new PartnerService(getServletContext());
		String id = "";
		
		HttpSession session = request.getSession();	
		String id_ = (String)session.getAttribute("sessionId");
		
		if (id_ != null && !id_.equals("")) {
			id = id_;
		}
		
		String email = ps.getEmail(id);
		List<Project> plist = ps.getInterestedProject(id);
		
		
		
		request.setAttribute("email", email);
		request.setAttribute("interestedProject", plist);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/partner/interestPro.jsp");
		dispatcher.forward(request, response);
		
	}


}
