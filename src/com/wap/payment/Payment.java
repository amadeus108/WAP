package com.wap.payment;

import java.util.Date;

public class Payment {
	private int id;
	private String cost;
	private Date reg_date;
	
	public Payment() {	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCost() {
		return cost;
	}

	public void setCost(String cost) {
		this.cost = cost;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public Payment(int id, String cost, Date reg_date) {
		super();
		this.id = id;
		this.cost = cost;
		this.reg_date = reg_date;
	}

	@Override
	public String toString() {
		return "Payment [id=" + id + ", cost=" + cost + ", reg_date=" + reg_date + "]";
	}
	
	
	
}
