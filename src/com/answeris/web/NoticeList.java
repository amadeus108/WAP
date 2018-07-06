package com.answeris.web;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;


public class NoticeList extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		

		PrintWriter out = response.getWriter();
		int x = 0;
		int y = 0;
		String x_ = request.getParameter("x");
		String y_ = request.getParameter("y");

		if(x_ != null && !x_.equals(""))
			x = Integer.parseInt(x_);
		if(y_ != null && !y_.equals(""))
			y = Integer.parseInt(y_);
		
		
		
		
		
		
		
		
		out.print("x+y= "+(x+y));
		
	}
}
