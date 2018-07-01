package com.wap.web.entity;

public class Admin {
	private String id;
	private String pwd;
	
	public Admin() {
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public Admin(String id, String pwd) {
		super();
		this.id = id;
		this.pwd = pwd;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + ", pwd=" + pwd + "]";
	}
	
	
}
