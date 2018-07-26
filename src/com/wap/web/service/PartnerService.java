package com.wap.web.service;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.servlet.*;

import com.wap.web.entity.*;

public class PartnerService {
	private String url;
	private String user;
	private String password;

	public PartnerService(ServletContext servletContext) throws IOException {
		InputStream fis = servletContext.getResourceAsStream("/WEB-INF/db.properties");

		Properties prop = new Properties();

		prop.load(fis);

		fis.close();

		url = prop.getProperty("url");
		user = prop.getProperty("user");
		password = prop.getProperty("password");
	}

	public List<Project> getInterestedProjectList(String id) {
		List<Project> list = new ArrayList();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, user, password);

			String sql = "select p.title, p.cost, p.period,p.end_date from project p join apply a on p.id = a.project_id where a.partner_id like ? and a.apply_date is null";
			PreparedStatement st = con.prepareStatement(sql);

			st.setString(1, "james");

			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				Project project = new Project(rs.getString("title"), rs.getString("cost"), rs.getDate("end_date"),
						rs.getString("period"));
				list.add(project);
			}

			con.close();
			st.close();
			rs.close();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return list;
	}

	public List<Apply> getApplyProjectList(String id) {
		List<Apply> list = new ArrayList();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, user, password);
			String sql = "select p.title,a.apply_cost,a.apply_period,a.apply_date from project p join apply a on p.id = a.project_id where a.partner_id like ? and a.apply_date is not null";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, "james");

			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				Apply apply = new Apply(rs.getString("title"), rs.getString("apply_cost"), rs.getString("apply_period"),
						rs.getDate("apply_date"));
				list.add(apply);

			}
			con.close();
			st.close();
			rs.close();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}

	public String getEmail(String id) {
		String email ="";
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url, user, password);
		String sql = "select email from partner where id =?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, id);
		
		ResultSet rs = st.executeQuery();
		if(rs.next()) {	
		email = rs.getString("email");
		}
		
		con.close();
		st.close();
		rs.close();
		
		
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		
		return email;
	}

}
