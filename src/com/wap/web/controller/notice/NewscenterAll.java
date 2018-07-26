package com.wap.web.controller.notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wap.web.entity.Notice;
import com.wap.web.service.*;

@WebServlet("/notice/all")
public class NewscenterAll extends HttpServlet {

	public NewscenterAll() {
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageNo = 1;
		String field = "title";
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
		
		list = service.getNoticeList(field, query, pageNo);
		
		request.setAttribute("list", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/notice/all.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
