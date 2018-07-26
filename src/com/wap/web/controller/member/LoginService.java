package com.wap.web.controller.member;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/loginService")
public class LoginService extends HttpServlet {
	private String url;
	private String user;
	private String password;

	public LoginService(ServletContext servletContext) throws IOException {
		InputStream fis = servletContext.getResourceAsStream("/WEB-INF/db.properties");

		Properties prop = new Properties();

		prop.load(fis);

		fis.close();

		url = prop.getProperty("url");
		user = prop.getProperty("user");
		password = prop.getProperty("password");
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

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
			Connection con = DriverManager.getConnection(url, user, password);

			String sql = "select id from partner where id";

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}
}
