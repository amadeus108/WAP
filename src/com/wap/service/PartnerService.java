package com.wap.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class PartnerService {
	String id;
	String pwd;
	String email;
	final static String selectSQL = "select * from employee";
	
	public PartnerService()
	{
		
	}
	
	public PartnerService(String id) {
		super();
		this.id = id;
	}

	public PartnerService(String id, String pwd, String email) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.email = email;
	}

	public PartnerService(String id, String pwd) {
		super();
		this.id = id;
		this.pwd = pwd;
		
		String driver = "oracle.jdbc.driver.OracleDriver"; //
		
		String url ="jdbc:oracle:thin:@localhost:1521:xe"; //1521 포트번호
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try{
			Class.forName(driver); //1단계 드라이버로딩
			conn = DriverManager.getConnection(url,"testdb","testdb123"); // 연결
			stmt = conn.createStatement(); //
			rs = stmt.executeQuery(selectSQL); //
			System.out.println("번호 \t 이름 \t 직책 \t 부서번호 \t 이메일");
			System.out.println("---------------------------------");
			
			while(rs.next())
			{
				System.out.print(rs.getInt(1) + "\t"); // 1부터시작
				System.out.print(rs.getString(2) + "\t");
				System.out.print(rs.getString(3) + "\t");
				System.out.print(rs.getString(4) + "\t");
				System.out.print(rs.getString(5) + "\n");
					
			}
		}catch(Exception e)
		{
			System.out.println(e);
		}
		finally{
			try
			{
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
				
			}catch(Exception ex)
			{
				System.out.println(ex);
			}
		}
		
	}
	
	
	//insert
	
	//select
	
	//jdbc연동
	
	//select = resultset,st.executeQuery(sql), 
	//update,insert,delete = int result, executeUpdate
}
