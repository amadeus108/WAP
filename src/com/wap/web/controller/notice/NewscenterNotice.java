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

@WebServlet("/notice/notice")
public class NewscenterNotice extends HttpServlet {
    public NewscenterNotice() {

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
		
		try {
			Notice notice = service.getNoticeNotice("category");
			String a = notice.getCategory(); // all
			
			request.setAttribute("n", notice);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/notice/notice.jsp");
		dispatcher.forward(request, response);
	}

}
