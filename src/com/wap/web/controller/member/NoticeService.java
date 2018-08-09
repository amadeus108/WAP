package com.wap.web.controller.member;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.servlet.*;

import com.wap.web.entity.*;

public class NoticeService {
	private String url;
	private String user;
	private String password;

	public NoticeService(ServletContext servletContext) throws IOException {
		InputStream fis = servletContext.getResourceAsStream("/WEB-INF/db.properties");

		Properties prop = new Properties();

		prop.load(fis);

		fis.close();

		url = prop.getProperty("url");
		user = prop.getProperty("user");
		password = prop.getProperty("password");
	}
	
	public List<Notice> getNoticeList(int pageNo) {
		List<Notice> list = new ArrayList();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con = DriverManager.getConnection(url, user, password);
			String sql = "select id,title,reg_date from (\r\n" + 
		            "    select rownum num, n.*from(\r\n" + 
		            "        select * from notice order by reg_date desc\r\n" + 
		            "    ) n \r\n" + 
		            ") where num between ? and ?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, (pageNo-1)*3+1);
			st.setInt(2, pageNo*3);
			
			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				Notice notice = new Notice(rs.getInt("id"), rs.getString("title"), rs.getDate("reg_date"));
				list.add(notice);
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
