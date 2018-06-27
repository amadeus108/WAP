package com.wap.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class PartnerService {
	String id;
	String pwd;
	String email;
	String intro;
	String pro_img;
	String type;
	String manager;
	String company;
	String ceo;
	String sul_date;
	String ye_name;
	String account;
	String last_addr;
	int addr_id;
	int sec_addr_id;
	int bank;

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
		
		
		
	}
	
	
	//insert
	
	//select
	
	//jdbc연동
	
	//select = resultset,st.executeQuery(sql), 
	//update,insert,delete = int result, executeUpdate
}
