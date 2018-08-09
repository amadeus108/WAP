package com.wap.web.controller.partner;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import com.oreilly.servlet.*;
import com.oreilly.servlet.multipart.*;
import com.wap.web.entity.*;
import com.wap.web.service.*;

@WebServlet("/partner/info/edit")
public class edit extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PartnerService ps = new PartnerService(getServletContext());
		String id = "";

		HttpSession session = request.getSession();
		String id_ = (String) session.getAttribute("sessionId"); // 세션은 object를 반환
		if (id_ != null && !id_.equals("")) {
			id = id_;
		}
		String email = ps.getEmail(id);
		request.setAttribute("email", email);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/partner/info/edit.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int maxSize = 1024 * 1024 * 5;
		String savefile = "/WEB-INF/upload";
		ServletContext context = getServletContext();
		String saveDir = context.getRealPath(savefile);
		String pro_img = "";

		MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, "UTF-8",
				new DefaultFileRenamePolicy());

		Enumeration<?> files = multi.getFileNames();
		String file1 = (String) files.nextElement();
		pro_img = multi.getFilesystemName(file1);
		System.out.println("jpg: " + pro_img);

		int addr = 1;
		int sec_addr = 1;
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("sessionId");
		String type = "";
		String name = "";
		String gender = "";
		String year = "";
		String month = "";
		String day = "";
		String last_addr = "";

		String addr_ = (String) multi.getParameter("addr");
		if (addr_ != null && !addr_.equals("")) {
			addr = Integer.parseInt(addr_);
		}
		String sec_addr_ = (String) multi.getParameter("sec_addr");
		if (sec_addr_ != null && !sec_addr_.equals("")) {
			sec_addr = Integer.parseInt(sec_addr_);
		}
		String type_ = (String) multi.getParameter("type");
		if (type_ != null && !type_.equals(""))
			type = type_;
		String name_ = (String) multi.getParameter("name");
		if (name_ != null && !name_.equals(""))
			name = name_;
		String gender_ = (String) multi.getParameter("gender");
		if (gender_ != null && !gender_.equals(""))
			gender = gender_;
		String year_ = (String) multi.getParameter("year");
		if (year_ != null && !year_.equals(""))
			year = year_;
		String month_ = (String) multi.getParameter("month");
		if (month_ != null && !month_.equals(""))
			month = month_;
		String day_ = (String) multi.getParameter("day");
		if (day_ != null && !day_.equals(""))
			day = day_;
		String last_addr_ = (String) multi.getParameter("last_addr");
		if (last_addr_ != null && !last_addr_.equals(""))
			last_addr = last_addr_;


		PartnerService service = new PartnerService(getServletContext());
		Partner partner = new Partner(id, pro_img, type, name, gender,year,month,day, addr, sec_addr, last_addr);

		
		service.insertInfo(partner);

		response.sendRedirect("editView");

	}
}
