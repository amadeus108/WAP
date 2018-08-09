package com.wap.web.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.wap.web.entity.Project;

public class IndexService {

	public static void main(String[] args) {

	}
	public List<Project> getProjectList() throws ClassNotFoundException, SQLException{
		List<Project> list = new ArrayList();
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		String user = "c##wapadmin";
		String pwd = "2130admin";
		
		String sql = "select * from project order by start_date desc";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url, user, pwd);
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		
		while (rs.next()) {
			Project project = new Project(rs.getInt("id"), rs.getString("title"), rs.getString("skill"),
					rs.getString("cost"), rs.getString("attach"), rs.getDate("start_date"), rs.getString("favor_type"),
					rs.getDate("pro_date"), rs.getDate("end_date"), rs.getString("goal"), rs.getString("plan_statue"),
					rs.getString("exp"), rs.getString("sim"), rs.getString("gov"), rs.getString("content"),
					rs.getString("period"), rs.getString("statue"));
			list.add(project);
		}
		rs.close();
		st.close();
		con.close();
		
		return list;
		
	}
	public int getApplyCount(String field, String query) throws ClassNotFoundException, SQLException {
		int count = 0;
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		String user = "c##wapadmin";
		String pwd = "2130admin";
		String sql = "select count(project_id) count from apply where " + field + " like ?";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url, user, pwd);
		PreparedStatement st = conn.prepareStatement(sql);
		
		st.setString(1, "%" + query + "%");

		ResultSet rs = st.executeQuery();
		rs.next();

		count = rs.getInt("count");

		rs.close();
		st.close();
		conn.close();

		return count;
	}
	

}







