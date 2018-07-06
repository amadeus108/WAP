package com.answeris.web.service;

import java.sql.*;
import java.util.*;
import java.util.Date;

import com.answeris.web.entity.*;

public class RootService {
	public List<Notice> getNoticeList() {
		List<Notice> list = new ArrayList();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@211.238.142.251:1521:orcl", "c##sist",
					"dclass");
			String sql = "select * from notice";
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				Notice notice = new Notice(rs.getString("id"), rs.getString("title"), rs.getString("content"),
						rs.getString("writer_id"), rs.getDate("reg_date"), rs.getInt("hit"));
				list.add(notice);
			}

		} catch (Exception e) {
			System.out.println(e);
		}

		return list;
	}

}
