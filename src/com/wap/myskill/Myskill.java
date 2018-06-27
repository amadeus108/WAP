package com.wap.myskill;

public class Myskill {
	private int id;
	private String sort;
	private String proficiency;
	private String exp;
	
	public Myskill() {	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getProficiency() {
		return proficiency;
	}

	public void setProficiency(String proficiency) {
		this.proficiency = proficiency;
	}

	public String getExp() {
		return exp;
	}

	public void setExp(String exp) {
		this.exp = exp;
	}

	public Myskill(int id, String sort, String proficiency, String exp) {
		super();
		this.id = id;
		this.sort = sort;
		this.proficiency = proficiency;
		this.exp = exp;
	}

	@Override
	public String toString() {
		return "Myskill [id=" + id + ", sort=" + sort + ", proficiency=" + proficiency + ", exp=" + exp + "]";
	}
	
	
}
