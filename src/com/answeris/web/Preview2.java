package com.answeris.web;

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Preview2
 */
@WebServlet("/preview2")
public class Preview2 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String phoneNum = request.getParameter("phoneNum");

		PrintWriter out = response.getWriter();

		out.write("     <section>");
		out.write("        <h1>명함 미리보기</h1>");
		out.write("        <ul>");
		out.write("    <li>이름 : " + name + "</li>\n");
		out.write("    <li>전화번호 :" + phoneNum + "</li>\n");
		out.write("        <li><img src=\"\"></li>");
		out.write("        </ul>");
		out.write("    </section>");

	}

}
