package com.wap.web.controller.notice;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.wap.web.entity.Notice;
import com.wap.web.service.*;

@WebServlet("/newscenter/partner")
public class NewscenterPartner extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String category = "";
		String category_ = request.getParameter("category");
		
		if(category_ !=null && !category_.equals(""))
			category = category_;
		
		int pageNo = 1;
		String field = "category";
		String query = "";
		
		String pageNo_ = request.getParameter("p");
		String field_ = request.getParameter("f");
		String query_ = request.getParameter("q");
		
		if(pageNo_ != null && !pageNo_.equals(""))
			pageNo = Integer.parseInt(pageNo_);
		
		if(field_ !=null && !field_.equals(""))
			field = field_;
		
		if(query_ != null && !query_.equals(""))
			query = query_;
		
		List<Notice> list = null;
		
		NoticeService service = new NoticeService();
		
		try {
			list = service.getNoticeList(field, query, pageNo);
			int count = service.getNoticeCount(field, query);
			
			request.setAttribute("list", list);
			request.setAttribute("count", count);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/notice/partner.jsp");
		dispatcher.forward(request, response);
	}

}