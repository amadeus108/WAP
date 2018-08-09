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

			String sql = "select p.id,p.title, p.cost, p.period,p.end_date from project p join apply a on p.id = a.project_id where a.partner_id like ? and a.apply_date is null";
			PreparedStatement st = con.prepareStatement(sql);

			st.setString(1, id);

			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				Project project = new Project(rs.getInt("id"), rs.getString("title"), rs.getString("cost"),
						rs.getDate("end_date"), rs.getString("period"));
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
			st.setString(1, id);

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
		String email = "";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, user, password);
			String sql = "select email from partner where id =?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, id);

			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				email = rs.getString("email");
			}

			con.close();
			st.close();
			rs.close();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return email;
	}

	public void insertInfo(Partner partner) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, user, password);

			String sql = "update partner set pro_img=?,type=?,name=?,gender=?,year=?,month=?,day=?,addr_id="
					+ partner.getAddr() + ",sec_addr_id=" + partner.getSec_addr() + ",last_addr=? where id = ?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, partner.getPro_img());
			st.setString(2, partner.getType());
			st.setString(3, partner.getName());
			st.setString(4, partner.getGender());
			st.setString(5, partner.getYear());
			st.setString(6, partner.getMonth());
			st.setString(7, partner.getDay());
			st.setString(8, partner.getLast_addr());
			st.setString(9, partner.getId());
			st.executeUpdate();

			con.close();
			st.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());

		}
	}

	public List<Partner> getPartnerInfo(String id) throws ClassNotFoundException, SQLException {
		List<Partner> list = new ArrayList();
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url, user, password);

		String sql = "select p.pro_img,p.type,p.name,p.gender,p.year,p.month,p.day,a.name addr_name,s.name sec_addr_name,p.last_addr from partner p \n"
				+ "                                                                            inner join address a on p.addr_id = a.id\n"
				+ "                                                                            inner join sub_address s on p.sec_addr_id = s.id\n"
				+ "                                                                            where p.id = ?";
		PreparedStatement st = con.prepareStatement(sql);

		st.setString(1, id);

		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			Partner partner = new Partner(rs.getString("pro_img"), rs.getString("type"), rs.getString("name"),
					rs.getString("gender"), rs.getString("year"), rs.getString("month"), rs.getString("day"),
					rs.getString("addr_name"), rs.getString("sec_addr_name"), rs.getString("last_addr"));

			list.add(partner);
		}

		con.close();
		st.close();
		rs.close();

		return list;
	}

	public List<Project> getInterestedProject(String id) {
		List<Project> list = new ArrayList();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, user, password);

			String sql = "select p.id,p.title, p.cost, p.period,p.end_date,ap.name addr_name,s.name sec_addr_name,c.name cate_name,sc.name sub_cate_name,a.count from project p \n"
					+ "                                             join (select aa.project_id, count(aa.partner_id) count from apply aa \n"
					+ "join (select project_id from apply where partner_id like ? and interestedproject =1) a \n"
					+ "on aa.project_id=a.project_id group by aa.project_id) a on p.id = a.project_id \n"
					+ "                                             join address ap on p.category_id = ap.id \n"
					+ "                                             join sub_address s on p.sub_addr_id = s.id\n"
					+ "                                             join category c on p.category_id = c.id\n"
					+ "                                             join sub_category sc on p.sub_cate_id = sc.id";
			PreparedStatement st = con.prepareStatement(sql);

			st.setString(1, id);

			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				Project project = new Project(rs.getInt("id"), rs.getString("title"), rs.getString("cost"),
						rs.getString("period"), rs.getDate("end_date"), rs.getString("addr_name"),
						rs.getString("sec_addr_name"), rs.getString("cate_name"), rs.getString("sub_cate_name"),
						rs.getInt("count"));
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

	public void deleteInterestProject(String id,int p_id) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, user, password);

			String sql = "delete apply where partner_id = ? and project_id = ?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, id);
			st.setInt(2, p_id);

			st.executeUpdate();

			con.close();
			st.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

}
