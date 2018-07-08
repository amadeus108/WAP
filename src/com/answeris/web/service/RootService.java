package com.answeris.web.service;

import java.sql.*;
import java.util.*;
import java.util.Date;

import com.answeris.web.entity.*;

public class RootService {
	public List<Notice> getNoticeList(int pageNo) {
		List<Notice> list = new ArrayList();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@211.238.142.251:1521:orcl", "c##sist",
					"dclass");
			String sql = "select * from (\r\n" + 
		            "    select rownum num, n.*from(\r\n" + 
		            "        select * from notice order by reg_date desc\r\n" + 
		            "    ) n \r\n" + 
		            ") where num between ? and ?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, (pageNo-1)*10+1);      //1->1, 2->11, 3->21,4->31  
			st.setInt(2, pageNo*10);
			
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
