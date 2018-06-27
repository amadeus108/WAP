package com.wap.notice;

import java.util.Date;

public class Notice {
	private int id;
	private Date reg_date;
	private String title;
	private String content;
	
	public Notice() {	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Notice(int id, Date reg_date, String title, String content) {
		super();
		this.id = id;
		this.reg_date = reg_date;
		this.title = title;
		this.content = content;
	}

	@Override
	public String toString() {
		return "Notice [id=" + id + ", reg_date=" + reg_date + ", title=" + title + ", content=" + content + "]";
	}
	
	
	
}
