package com.wap.web.entity;

public class InterestedProject {

	private int favor;
	private String project_id;
	private String partner_id;
	public int getFavor() {
		return favor;
	}
	public void setFavor(int favor) {
		this.favor = favor;
	}
	public String getProject_id() {
		return project_id;
	}
	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}
	public String getPartner_id() {
		return partner_id;
	}
	public void setPartner_id(String partner_id) {
		this.partner_id = partner_id;
	}
	@Override
	public String toString() {
		return "InterestedProject [favor=" + favor + ", project_id=" + project_id + ", partner_id=" + partner_id + "]";
	}
	public InterestedProject(int favor, String project_id, String partner_id) {
		super();
		this.favor = favor;
		this.project_id = project_id;
		this.partner_id = partner_id;
	}
	
	
}
