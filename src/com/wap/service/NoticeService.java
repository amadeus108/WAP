package com.wap.service;

import java.sql.*;
import java.util.*;

import com.wap.web.entity.*;

public class NoticeService {
	public List<Notice> getNoticeList() {
		List<Notice> list = new ArrayList();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String id = "c##wapadmin";
			String pwd = "2130admin";
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@211.238.142.251:1521:orcl", id, pwd);
			String sql = "select title,reg_date from notice";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				Notice notice = new Notice(rs.getString("title"), rs.getDate("reg_date"));
				list.add(notice);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
}
