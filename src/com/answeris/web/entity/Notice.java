package com.answeris.web.entity;

import java.util.*;

public class Notice {
	private String id;
	private String title;
	private String content;
	private String writerid;
	private Date regdate;
	private int hit;

	public Notice() {
	}

	//for selecting
	public Notice(String id, String title, String content, String writerid, Date regdate, int hit) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.writerid = writerid;
		this.regdate = regdate;
		this.hit = hit;
	}

	//for inserting
	public Notice(String title, String content, String writerid) {
		super();
		this.title = title;
		this.content = content;
		this.writerid = writerid;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getWriterid() {
		return writerid;
	}

	public void setWriterid(String writerid) {
		this.writerid = writerid;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	@Override
	public String toString() {
		return "Notice [id=" + id + ", title=" + title + ", content=" + content + ", writerid=" + writerid
				+ ", regdate=" + regdate + ", hit=" + hit + "]";
	}
	
	

}
