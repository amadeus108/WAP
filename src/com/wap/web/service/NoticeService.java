package com.wap.web.service;

import java.sql.*;
import java.util.*;

import javax.servlet.annotation.WebServlet;

import com.wap.web.entity.Notice;
import com.wap.web.entity.*;

public class NoticeService {
	
	private Notice notice;
	
	public static void main(String[] args) {

	}
	
	public List<Notice> getNoticeList(int page) {

		return getNoticeList("title", "", page);
	}
	
	public List<Notice> getNoticeList(String field, String query, int page) {
		List<Notice> list = new ArrayList();
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		String user = "c##wapadmin";
		String pwd = "2130admin";
		//String sql = "select * from (select * from (select * from notice order by reg_date asc)n order by id desc) notice";
		String sql = "select * from (\r\n" + "    select rownum num, n.* from (\r\n"
				+ "        select * from notice where " + field + " like ? order by id desc\r\n" + "    ) n \r\n"
				+ ") where num between ? and ?";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, user, pwd);
			PreparedStatement st = con.prepareStatement(sql);
			//newlec บนป็บป
			st.setString(1, "%" + query + "%");
			st.setInt(2, (page - 1) * 5 + 1);
			st.setInt(3, page * 5);
			
			
			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				Notice notice = new Notice(rs.getInt("id")
											, rs.getDate("reg_date")
											, rs.getString("title")
											, rs.getString("content")
											, rs.getString("writer_id")
											, rs.getString("category"));
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
	public int getNoticeCount(String field, String query) throws ClassNotFoundException, SQLException {
		int count = 0;
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		String user = "c##wapadmin";
		String pwd = "2130admin";
		String sql = "select count(id) count from notice where " + field + " like ?";
		
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
	
	public Notice getNoticeDetail(int id) throws ClassNotFoundException, SQLException {
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		String user = "c##wapadmin";
		String pwd = "2130admin";
		String sql = "select * from notice where id = ?";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url, user, pwd);
		PreparedStatement st = conn.prepareStatement(sql);
		st.setInt(1, id);
		
		ResultSet rs = st.executeQuery();
		
		if (rs.next()) {
			notice = new Notice(rs.getInt("id")
							, rs.getDate("reg_date")
							, rs.getString("title")
							, rs.getString("content")
							, rs.getString("writer_id")
							, rs.getString("category"));
			
			rs.close();
			st.close();
			conn.close();

		}
		return notice;
	}
	
	public List<Notice> getNoticeNotice(String category) throws ClassNotFoundException, SQLException {
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		String user = "c##wapadmin";
		String pwd = "2130admin";
		String sql = "select * from (select * from notice where category = ?) notice order by id desc";
		
		List<Notice> list = new ArrayList();
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url, user, pwd);
		PreparedStatement st = conn.prepareStatement(sql);
		st.setString(1, category);
		
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
			notice = new Notice(rs.getInt("id")
							, rs.getDate("reg_date")
							, rs.getString("title")
							, rs.getString("content")
							, rs.getString("writer_id")
							, rs.getString("category"));
			
			list.add(notice);
			
		}
		rs.close();
		st.close();
		conn.close();

		return list;
		
	}
}












