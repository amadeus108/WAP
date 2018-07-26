package com.wap.web.service;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.xml.ws.*;

import com.wap.web.entity.*;

public class MemberService {
	private String url;
	private String user;
	private String password;
	HttpSession session;
	HttpServletResponse response;

	public MemberService(ServletContext servletContext) throws IOException {
		InputStream fis = servletContext.getResourceAsStream("/WEB-INF/db.properties");

		Properties prop = new Properties();

		prop.load(fis);

		fis.close();

		url = prop.getProperty("url");
		user = prop.getProperty("user");
		password = prop.getProperty("password");
	}

	public void insertClient(Client client) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, user, password);

			String sql = "insert into client(id,email,pwd) " + "values(?,?,?)";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, client.getId());
			st.setString(2, client.getEmail());
			st.setString(3, client.getPwd());
			st.executeUpdate();

			con.close();
			st.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	public void insertPartner(Partner partner) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, user, password);

			String sql = "insert into partner(id,email,pwd) " + "values(?,?,?)";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, partner.getId());
			st.setString(2, partner.getEmail());
			st.setString(3, partner.getPwd());
			st.executeUpdate();

			con.close();
			st.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	public Boolean confirmId(String type, String id, String pwd) {
		Boolean isLogin = false;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, user, password);

			String sql = "select * from " + type + " where id = ? and pwd = ?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, id);
			st.setString(2, pwd);

			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				isLogin = true;

			} else {
				isLogin = false;
			}
			rs.close();
			st.close();

			con.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return isLogin;
	}

}
