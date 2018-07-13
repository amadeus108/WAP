package com.wap.partner.service;

import java.sql.*;
import java.util.*;

import com.wap.web.entity.*;

public class InterestedProjectService {
	
	public List<Project> getIPList() {
		List<Project> list = new ArrayList();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String id = "c##wapadmin";
			String pwd = "2130admin";
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@211.238.142.251:1521:orcl", id, pwd);
			String sql = "select title,reg_date from (\r\n" + 
		            "    select rownum num, n.*from(\r\n" + 
		            "        select * from notice order by reg_date desc\r\n" + 
		            "    ) n \r\n" + 
		            ") where num between ? and ?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, (pageNo-1)*3+1);
			st.setInt(2, pageNo*3);
			
			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				Project project = new Project(rs.getString("title"), rs.getDate("reg_date"));
				list.add(project);
			}
			rs.close();
			st.close();
			con.close();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return list;
	}
}
