package com.answeris.web;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/preview")
public class Preview extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter out = response.getWriter();
		String name = "";
		String phoneNum = "";
		if (request.getMethod().equals("POST")) {
			String name_ = request.getParameter("name");
			String phoneNum_ = request.getParameter("phoneNum");

			if (name_ != null && !name_.equals(""))
				name = name_;
			if (phoneNum_ != null && !phoneNum_.equals(""))
				phoneNum = phoneNum_;
			
		
			
		    System.out.println(name);

			out.write("<!DOCTYPE html>\n");
			out.write("<html>\n");
			out.write("<head>\n");
			out.write("<meta charset=\"UTF-8\">\n");
			out.write("<title>명함 결과</title>");
			out.write("</head>");
			out.write("<body>");
			out.write("   <form action=\"preview\" method=\"post\">");
			out.write("     <section>");
			out.write("        <h1>명함 미리보기</h1>");
			out.write("        <ul>");
			out.write("    <li>이름 : " + name + "</li>\n");
			out.write("    <li>전화번호 :" + phoneNum + "</li>\n");
			out.write("        <li><img src=\"\"></li>");
			out.write("        </ul>");
			out.write("    </section>");
			out.write("</form>");
			out.write("");
			out.write("</body>");
			out.write("</html>");

		}

	}

}
