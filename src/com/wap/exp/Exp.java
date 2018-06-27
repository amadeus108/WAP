package com.wap.exp;

import java.util.Date;

public class Exp {
	private String id;
	private String company_name;
	private String dept;
	private String position;
	private Date ib_date;
	private Date tea_date;
	
	public Exp() {	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public Date getIb_date() {
		return ib_date;
	}

	public void setIb_date(Date ib_date) {
		this.ib_date = ib_date;
	}

	public Date getTea_date() {
		return tea_date;
	}

	public void setTea_date(Date tea_date) {
		this.tea_date = tea_date;
	}

	public Exp(String id, String company_name, String dept, String position, Date ib_date, Date tea_date) {
		super();
		this.id = id;
		this.company_name = company_name;
		this.dept = dept;
		this.position = position;
		this.ib_date = ib_date;
		this.tea_date = tea_date;
	}

	@Override
	public String toString() {
		return "Exp [id=" + id + ", company_name=" + company_name + ", dept=" + dept + ", position=" + position
				+ ", ib_date=" + ib_date + ", tea_date=" + tea_date + "]";
	}
	
	
}
