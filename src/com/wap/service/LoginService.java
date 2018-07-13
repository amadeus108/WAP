package com.wap.service;

import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/loginService")
public class LoginService extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		try {
			String id = "";
			String pwd = "";
			
			String id_ = request.getParameter("id");
			String pwd_ = request.getParameter("pwd");
			
			if (id_ != null && !id_.equals(""))
				id = id_;
			if (pwd_ != null && !pwd_.equals(""))
				pwd = pwd_;
			
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@211.238.142.251:1521:orcl", "c##wapadmin",
					"2130admin");
			
			String sql = "select id from partner where id";
			
			

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}
}
