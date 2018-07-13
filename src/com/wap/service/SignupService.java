package com.wap.service;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import com.wap.web.entity.*;

@WebServlet("/member/signup")
public class SignupService extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		try {

			String email = "";
			String id = "";
			String pwd = "";

			String email_ = request.getParameter("email");
			String id_ = request.getParameter("id");
			String pwd_ = request.getParameter("pwd");

			if (email_ != null && !email_.equals(""))
				email = email_;
			if (id_ != null && !id_.equals(""))
				id = id_;
			if (pwd_ != null && !pwd_.equals(""))
				pwd = pwd_;

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@211.238.142.251:1521:orcl", "c##wapadmin",
					"2130admin");
			
			String type = request.getParameter("type");
			
			if(type.equals("client")) {
				String sql = "insert into client(id,pwd,email) values(?,?,?)";
				PreparedStatement st = con.prepareStatement(sql);
				st.setString(1, id);
				st.setString(2, pwd);
				st.setString(3, email);
				st.executeUpdate();
				st.close();
			}else {
				String sql = "insert into partner(id,pwd,email) values(?,?,?)";
				PreparedStatement st = con.prepareStatement(sql);
				st.setString(1, id);
				st.setString(2, pwd);
				st.setString(3, email);
				st.executeUpdate();
				st.close();
			}
			Client client = new Client();

			
			con.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		response.sendRedirect("/member/login.jsp");
	}
}
