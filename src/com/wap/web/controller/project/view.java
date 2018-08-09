package com.wap.web.controller.project;

import java.io.IOException;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.wap.web.controller.member.*;
import com.wap.web.controller.member.NoticeService;
import com.wap.web.entity.*;
import com.wap.web.service.*;

@WebServlet("/project/view")
public class view extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String id2 = "";
			int id = Integer.parseInt(request.getParameter("id"));
			String project_id ="";

			ProjectService ps = new ProjectService(getServletContext());

			
			List<Project> project = ps.getProjectView(id);

			HttpSession session = request.getSession();
			String id_ = (String) session.getAttribute("sessionId");	
			

			request.setAttribute("project", project);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/project/view.jsp");
			dispatcher.forward(request, response);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
