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

@WebServlet("/notice/partner")
public class NewscenterPartner extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int pageNo = 1;
		String field = "title";
		String query = "";

		String pageNo_ = request.getParameter("p");
		String field_ = request.getParameter("f");
		String query_ = request.getParameter("q");

		List<Notice> list = null;

		NoticeService service = new NoticeService();

		list = service.getNoticeList(field, query, pageNo);

		request.setAttribute("list", list);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/notice/partner.jsp");
		dispatcher.forward(request, response);
	}

}
