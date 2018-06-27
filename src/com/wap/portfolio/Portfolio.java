package com.wap.portfolio;

import java.util.Date;

public class Portfolio {
	private int id;
	private String title;
	private String skill;
	private Date start_date;
	private Date end_date;
	private String percent;
	private String content;
	private String img;
	private String explain;
	
	public Portfolio() {	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public String getPercent() {
		return percent;
	}

	public void setPercent(String percent) {
		this.percent = percent;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getExplain() {
		return explain;
	}

	public void setExplain(String explain) {
		this.explain = explain;
	}

	public Portfolio(int id, String title, String skill, Date start_date, Date end_date, String percent, String content,
			String img, String explain) {
		super();
		this.id = id;
		this.title = title;
		this.skill = skill;
		this.start_date = start_date;
		this.end_date = end_date;
		this.percent = percent;
		this.content = content;
		this.img = img;
		this.explain = explain;
	}

	@Override
	public String toString() {
		return "Portfolio [id=" + id + ", title=" + title + ", skill=" + skill + ", start_date=" + start_date
				+ ", end_date=" + end_date + ", percent=" + percent + ", content=" + content + ", img=" + img
				+ ", explain=" + explain + "]";
	}
	
	
}
