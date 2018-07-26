package com.wap.web.entity;

import java.util.Date;

public class Apply {
	private Date apply_date;
	private String apply_cost;
	private String apply_period;
	private String apply_content;
	private Date clientdate;
	private Date partnerdate;
	
	//just for partner-main page list;
	private String title;
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	

	public Apply() {	}

	public Date getApply_date() {
		return apply_date;
	}

	public void setApply_date(Date apply_date) {
		this.apply_date = apply_date;
	}

	public String getApply_cost() {
		return apply_cost;
	}

	public void setApply_cost(String apply_cost) {
		this.apply_cost = apply_cost;
	}

	public String getApply_period() {
		return apply_period;
	}

	public void setApply_period(String apply_period) {
		this.apply_period = apply_period;
	}

	public String getApply_content() {
		return apply_content;
	}

	public void setApply_content(String apply_content) {
		this.apply_content = apply_content;
	}

	public Date getClientdate() {
		return clientdate;
	}

	public void setClientdate(Date clientdate) {
		this.clientdate = clientdate;
	}

	public Date getPartnerdate() {
		return partnerdate;
	}

	public void setPartnerdate(Date partnerdate) {
		this.partnerdate = partnerdate;
	}
	
	//for partner-main list selecting;
	public Apply(String title,String apply_cost,String apply_period, Date apply_date) {
		super();
		this.apply_date = apply_date;
		this.apply_cost = apply_cost;
		this.apply_period = apply_period;
		this.title = title;
	}
	

	public Apply(Date apply_date, String apply_cost, String apply_period, String apply_content, Date clientdate,
			Date partnerdate) {
		super();
		this.apply_date = apply_date;
		this.apply_cost = apply_cost;
		this.apply_period = apply_period;
		this.apply_content = apply_content;
		this.clientdate = clientdate;
		this.partnerdate = partnerdate;
	}

	

	@Override
	public String toString() {
		return "Apply [apply_date=" + apply_date + ", apply_cost=" + apply_cost + ", apply_period=" + apply_period
				+ ", apply_content=" + apply_content + ", clientdate=" + clientdate + ", partnerdate=" + partnerdate
				+ "]";
	}
	
	
}
