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

@WebServlet("/newscenter/detail")
public class NewscenterDetail extends HttpServlet {

	public NewscenterDetail() {

	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int pageNo = 1;
		String field = "category";
		String query = "";

		List<Notice> list = null;

		NoticeService service = new NoticeService();

		list = service.getNoticeList(field, query, pageNo);

		request.setAttribute("list", list);

		String sid = request.getParameter("id");
		if (sid == null) {
			sid = "0";
		}
		int id = Integer.parseInt(sid);

		String ctx = request.getContextPath();
		try {
			Notice notice = service.getNoticeDetail(id);
			request.setAttribute("n", notice);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/notice/detail.jsp");
			dispatcher.forward(request, response);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
