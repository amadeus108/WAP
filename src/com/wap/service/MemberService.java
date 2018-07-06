package com.wap.service;

import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class MemberService extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter out = response.getWriter();
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@211.238.142.251:1521:orcl", "c##wapadmin",
				"2130admin");
		String sql = "insert into client(id,pwd,email) values(?,?,?)";
		PreparedStatement pst = con.prepareStatement(sql);
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		

		pst.setString(1, id);
		pst.setString(2, pwd);
		pst.setString(3, email);
		pst.executeUpdate();

		con.close();
		}catch(Exception e) {
			System.out.println(e.getMessage());		
		}
	}
}
