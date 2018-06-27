package com.wap.license;

import java.util.Date;

public class License {
	private int id;
	private String cert;
	private String cert_company;
	private Date cert_date;
	private String cert_num;
	
	public License() {	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCert() {
		return cert;
	}

	public void setCert(String cert) {
		this.cert = cert;
	}

	public String getCert_company() {
		return cert_company;
	}

	public void setCert_company(String cert_company) {
		this.cert_company = cert_company;
	}

	public Date getCert_date() {
		return cert_date;
	}

	public void setCert_date(Date cert_date) {
		this.cert_date = cert_date;
	}

	public String getCert_num() {
		return cert_num;
	}

	public void setCert_num(String cert_num) {
		this.cert_num = cert_num;
	}

	public License(int id, String cert, String cert_company, Date cert_date, String cert_num) {
		super();
		this.id = id;
		this.cert = cert;
		this.cert_company = cert_company;
		this.cert_date = cert_date;
		this.cert_num = cert_num;
	}

	@Override
	public String toString() {
		return "License [id=" + id + ", cert=" + cert + ", cert_company=" + cert_company + ", cert_date=" + cert_date
				+ ", cert_num=" + cert_num + "]";
	}
	
	
}
