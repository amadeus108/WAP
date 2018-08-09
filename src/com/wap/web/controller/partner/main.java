package com.wap.web.controller.partner;

import java.io.IOException;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.wap.web.controller.member.*;
import com.wap.web.controller.member.NoticeService;
import com.wap.web.entity.*;
import com.wap.web.service.*;

@WebServlet("/partner/main")
public class main extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PartnerService ps = new PartnerService(getServletContext());
		
		int pageNo = 1;
		int p_id = 1;
		String id = "";

		String pageNo_ = request.getParameter("p");
		String p_id_ = request.getParameter("p_id");
	
		
		HttpSession session = request.getSession();	
		String id_ = (String)session.getAttribute("sessionId"); //세션은 object를 반환
		

		if (pageNo_ != null && !pageNo_.equals("")) {
			pageNo = Integer.parseInt(pageNo_);
		}
		if (id_ != null && !id_.equals("")) {
			id = id_;
		}
		if (p_id_ != null && !p_id_.equals("")) {
			p_id = Integer.parseInt(p_id_);
		}
		

		try {
			
			ps.deleteInterestProject(id,p_id);
			NoticeService ns = new NoticeService(getServletContext());
			List<Notice> list = ns.getNoticeList(pageNo);
			List<Project> plist = ps.getInterestedProjectList(id);
			List<Apply> alist = ps.getApplyProjectList(id);
			
			String email = ps.getEmail(id);

			request.setAttribute("notice", list);
			request.setAttribute("interestedProject", plist);
			request.setAttribute("applyProject", alist);
			request.setAttribute("email", email);
			
			

			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/partner/main.jsp");
			dispatcher.forward(request, response);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
