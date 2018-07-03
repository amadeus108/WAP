package com.wap.client.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Scanner;

import com.wap.web.entity.Client;
import com.wap.web.entity.ProjectService;

public class ClientDAO {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		ClientDAO client = new ClientDAO();
		ProjectService project = new ProjectService();

		Scanner scan = new Scanner(System.in);
		System.out.print("menu selection : ");

		int seletNum = scan.nextInt();
		switch (seletNum) {
		case 1:
			client.insertInfo();
			break;
		case 2:
			client.getClientsList();
			break;
		case 3:
			project.getProjectList();
			break;
		case 4:
			client.login();
		}

	}

	void login() throws ClassNotFoundException, SQLException {
		Scanner scan = new Scanner(System.in);
		System.out.print("id = ");
		String id = scan.nextLine();
		System.out.println("pwd = ");
		String pwd = scan.nextLine();
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@211.238.142.251:1521:orcl", "c##wapadmin",
				"2130admin");
		
		String sql = String.format("select id,pwd from client where id =");

		PreparedStatement pst = con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		
		

	}

	private void insertInfo() throws ClassNotFoundException, SQLException {
		Scanner scan = new Scanner(System.in);
		System.out.print("id =");
		String id = scan.nextLine();
		System.out.print("pwd =");
		String pwd = scan.nextLine();
		System.out.print("email =");
		String email = scan.nextLine();

		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@211.238.142.251:1521:orcl", "c##wapadmin",
				"2130admin");
		String sql = "insert into client(id,pwd,email) values(?,?,?)";
		PreparedStatement pst = con.prepareStatement(sql);

		pst.setString(1, id);
		pst.setString(2, pwd);
		pst.setString(3, email);
		pst.executeUpdate();

		con.close();
	}

	List<Client> getClientsList() throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@211.238.142.251:1521:orcl", "c##wapadmin",
				"2130admin");
		String sql = String.format("select * from client");

		PreparedStatement pst = con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();

		String id = "";
		String pwd = "";
		String email = "";
		

		while (rs.next()) {
			Client client = new Client(rs.getString("id"), rs.getString("pwd"), rs.getString("email"),
					rs.getString("com_name"), rs.getString("phone"), rs.getString("fax"), rs.getString("ceo"),
					rs.getString("manager"), rs.getString("m_phone"), rs.getString("type"), rs.getString("sul_date"),
					rs.getString("tax_email"), rs.getString("pro_img"), rs.getString("last_addr"),
					rs.getString("ye_name"), rs.getString("account"));

			this.getClientsList().add(client);
			
		}
		con.close();
		return null;
	}
}