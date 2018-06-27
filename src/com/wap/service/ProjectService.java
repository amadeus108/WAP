package com.wap.service;

public class ProjectService {
	private String id;
	private String title;
	private String skill;
	
	public ProjectService() {
		System.out.println(ProjectService.this);
	}
	
	public ProjectService(String id, String title, String skill) {
		super();
		this.id = id;
		this.title = title;
		this.skill = skill;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "ProjectService [id=" + id + ", title=" + title + ", skill=" + skill + "]";
	}
	
	
}
