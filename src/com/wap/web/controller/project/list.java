package com.wap.web.controller.project;

import java.io.IOException;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.wap.web.entity.*;
import com.wap.web.service.*;

/**
 * Servlet implementation class list
 */
@WebServlet("/project/list")
public class list extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			ProjectService ps = new ProjectService(getServletContext());
			List<Project> plist = ps.getProjectListAll();
			
			request.setAttribute("project", plist);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/project/list.jsp");
			dispatcher.forward(request, response);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
