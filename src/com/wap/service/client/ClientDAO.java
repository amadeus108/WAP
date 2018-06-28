package com.wap.service.client;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Scanner;

import com.wap.client.Client;
import com.wap.project.Project;

public class ClientDAO {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		ClientDAO client = new ClientDAO();
		Scanner scan = new Scanner(System.in);
		int seletNum = scan.nextInt();
		switch(seletNum) {
		case 1:
			client.insert();
			break;
		case 2:
			client.getClientsList();
			break;
		}
		
	}

	private void insert() throws ClassNotFoundException, SQLException {
		Scanner scan = new Scanner(System.in);
		System.out.print("id =");
		String id = scan.nextLine();
		System.out.print("pwd =");
		String pwd = scan.nextLine();
		System.out.print("email =");
		String email = scan.nextLine();
		
		Class.forName("oracle.jdbc.driver.OracleDriver");	
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@211.238.142.251:1521:orcl","c##wapadmin","2130admin");
		String sql = "insert into client(id,pwd,email) values(?,?,?)";
		PreparedStatement pst = con.prepareStatement(sql);
			
		pst.setString(1, id);
		pst.setString(2, pwd);
		pst.setString(3, email);
		pst.executeUpdate();
		
		con.close();		
	}
	
	
	private List<Client> getClientsList() throws ClassNotFoundException, SQLException {			
		Class.forName("oracle.jdbc.driver.OracleDriver");	
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@211.238.142.251:1521:orcl","c##wapadmin","2130admin");
		String sql = String.format("select * from client");
		
		PreparedStatement pst = con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		
		String id ="";
		String pwd = "";
		String email = "";
		
		while(rs.next()) {
			id = rs.getString("ID");
			pwd = rs.getString("pwd");
			email = rs.getString("email");
			
			System.out.println(id + pwd+ email);
		}
		con.close();
		return null;
	}	
}