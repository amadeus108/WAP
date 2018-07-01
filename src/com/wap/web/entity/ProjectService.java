package com.wap.web.entity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Scanner;

public class ProjectService {

	private List<Project> getProjectList;

	public ProjectService() {
		

	}

	public void getProjectList() throws ClassNotFoundException, SQLException {
		//getProjectList = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@211.238.142.251:1521:orcl", "c##wapadmin",
				"2130admin");

		String sql = String.format("select * from project");

		PreparedStatement pst = con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();

		while (rs.next()) {
			Project temp = new Project(rs.getString("id"), rs.getString("title"), rs.getString("skill"),
					rs.getString("cost"), rs.getString("attach"), rs.getDate("start_date"), rs.getString("favor_type"),
					rs.getDate("pro_date"), rs.getDate("end_date"), rs.getString("goal"), rs.getString("plan_statue"),
					rs.getString("exp"), rs.getString("sim"), rs.getString("gov"), rs.getString("content"),
					rs.getString("period"), rs.getString("statue"));
			getProjectList.add(temp);
			System.out.println(temp);
		}
		con.close();
	}
}
