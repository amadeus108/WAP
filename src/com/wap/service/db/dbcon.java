package com.wap.service.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class dbcon {
	final static String selectSQL = "select * from admin";
	public dbcon()
	{
		
		String driver = "oracle.jdbc.driver.OracleDriver"; //
		String url ="jdbc:oracle:thin:@211.238.142.251:1521:orcl"; //1521 포트번호
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try{
			Class.forName(driver); //1단계 드라이버로딩
			conn = DriverManager.getConnection(url,"c##wapadmin","2130admin"); // 연결
			stmt = conn.createStatement(); //
			rs = stmt.executeQuery(selectSQL); //
			System.out.println("ID \t pwd");
			System.out.println("---------------------------------");
			
			while(rs.next())
			{
				System.out.print(rs.getString(1) + "\t"); // 1부터시작
				System.out.print(rs.getString(2) + "\t");

					
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
	public static void main(String[] args)
	{
		dbcon db = new dbcon();
		
	}
}



