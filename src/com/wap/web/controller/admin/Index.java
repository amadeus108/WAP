package com.wap.web.controller.admin;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wap.web.entity.Project;
import com.wap.web.service.IndexService;


@WebServlet("/Index")
public class Index extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String title = null;
//		String cost = null;
//		Date period = null;
//		String content = null;
//		String skill = null;
		String field = "project_id";
		String query = "";
		
		String query_ = request.getParameter("q");
		String field_ = request.getParameter("f");
		
		if(query_ != null && !query_.equals(""))
			query = query_;
		
		if(field_ !=null && !field_.equals(""))
			field = field_;
		
		List<Project> list = null;
		
		IndexService service = new IndexService();
		
		
		
			try {
				list = service.getProjectList();
				int count = service.getApplyCount(field, query);
				
				request.setAttribute("list", list);
				request.setAttribute("count", count);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
		dispatcher.forward(request, response);
	}

}
