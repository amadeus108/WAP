package com.wap.web.service;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.*;

import com.wap.web.entity.*;

public class ProjectService {
	private String url;
	private String user;
	private String password;

	private List<Project> getProjectList;

	public ProjectService() {

	}

	public ProjectService(ServletContext servletContext) throws IOException {
		InputStream fis = servletContext.getResourceAsStream("/WEB-INF/db.properties");

		Properties prop = new Properties();

		prop.load(fis);

		fis.close();

		url = prop.getProperty("url");
		user = prop.getProperty("user");
		password = prop.getProperty("password");
	}

	public List<Project> getProjectView(int id) {
		List<Project> list = new ArrayList();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, user, password);

			String sql = "select p.title,p.cost,p.start_date,p.pro_date,p.end_date,p.plan_statue,p.exp,p.sim,\n"
					+ "p.gov,p.content,p.period,c.name cate_name,s.name sub_cate_name,ad.name addr_name,sa.name sub_addr_name,p.insert_id from project p join category c on c.id = p.category_id join sub_category s on s.id = p.sub_cate_id\n"
					+ "join address ad on ad.id = p.addr_id join sub_address sa on sa.id = p.sub_addr_id where p.id=?";
			PreparedStatement st = con.prepareStatement(sql);

			st.setInt(1, id);

			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				Project project = new Project(rs.getString("title"), rs.getString("cost"), rs.getDate("start_date"),
						rs.getDate("pro_date"), rs.getDate("end_date"), rs.getString("plan_statue"),
						rs.getString("exp"), rs.getString("sim"), rs.getString("gov"), rs.getString("content"),
						rs.getString("period"), rs.getString("cate_name"), rs.getString("sub_cate_name"),
						rs.getString("addr_name"), rs.getString("sub_addr_name"), rs.getString("insert_id"));
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

	public List<Project> getProjectListAll() {
		List<Project> list = new ArrayList();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, user, password);

			String sql = "select p.id,p.title, p.cost, p.period,p.end_date,ap.name addr_name,s.name sec_addr_name,c.name cate_name,sc.name sub_cate_name from project p \n" + 
					"join address ap on ap.id = p.addr_id \n" + 
					"join sub_address s on s.id = p.sub_addr_id\n" + 
					"join category c on c.id = p.category_id\n" + 
					"join sub_category sc on sc.id = p.sub_cate_id";
			PreparedStatement st = con.prepareStatement(sql);
			
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				Project project = new Project(rs.getInt("id"), rs.getString("title"), rs.getString("cost"),
						rs.getString("period"), rs.getDate("end_date"), rs.getString("addr_name"),
						rs.getString("sec_addr_name"), rs.getString("cate_name"), rs.getString("sub_cate_name"));
				list.add(project);
				
			}
			

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
}
