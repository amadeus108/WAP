package com.wap.web.entity;

import java.util.Date;

public class Notice {
	private int id;
	private Date reg_date;
	private String title;
	private String content;
	private int num;
	private String category;
	private String writer_id;
	
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getWriter_id() {
		return writer_id;
	}

	public void setWriter_id(String writer_id) {
		this.writer_id = writer_id;
	}

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
	
	
	

	//for notice selecting
	public Notice(int id,String title, Date reg_date) {
		super();
		this.id = id;
		this.title = title;
		this.reg_date = reg_date;	
	}

	public Notice(int id, Date reg_date, String title, String content) {
		super();
		this.id = id;
		this.reg_date = reg_date;
		this.title = title;
		this.content = content;
	}

	//for notice selecting
	public Notice(int id, Date reg_date, String title, String content, String writer_id, String category) {
		this.id = id;
		this.reg_date = reg_date;	
		this.title = title;
		this.content = content;
		this.writer_id = writer_id;
		this.category = category;
	}

	public Notice(int id, String title, Date reg_date, int num, String category) {
		super();
		this.id = id;
		this.title = title;
		this.reg_date = reg_date;
		this.num = num;
		this.category = category;
	}
	public Notice(int id, String title, Date reg_date, int num, String category, String content) {
		super();
		this.id = id;
		this.title = title;
		this.reg_date = reg_date;
		this.num = num;
		this.category = category;
		this.content = content;
	}

	@Override
	public String toString() {
		return "Notice [id=" + id + ", reg_date=" + reg_date + ", title=" + title + ", content=" + content + ", num="
				+ num + ", category=" + category + "]";
	}
	
	
	
}
