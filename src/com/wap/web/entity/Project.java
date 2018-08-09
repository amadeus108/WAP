package com.wap.web.entity;

import java.util.Date;

public class Project {
	private int id;
	private String title;
	private String skill;
	private String cost;
	private String attach;
	private Date start_date;
	private String favor_type;
	private Date pro_date;
	private Date end_date;
	private String goal;
	private String plan_statue;
	private String exp;
	private String sim;
	private String gov;
	private String content;
	private String period;
	private String statue;
	private String addr_name;
	private String sec_addr_name;
	private String cate_name;
	private String sub_cate_name;
	private int count;
	private String insert_id;

	public Project() {
	}

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

	public String getCost() {
		return cost;
	}

	public void setCost(String cost) {
		this.cost = cost;
	}

	public String getAttach() {
		return attach;
	}

	public void setAttach(String attach) {
		this.attach = attach;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public String getFavor_type() {
		return favor_type;
	}

	public void setFavor_type(String favor_type) {
		this.favor_type = favor_type;
	}

	public Date getPro_date() {
		return pro_date;
	}

	public void setPro_date(Date pro_date) {
		this.pro_date = pro_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public String getGoal() {
		return goal;
	}

	public void setGoal(String goal) {
		this.goal = goal;
	}

	public String getPlan_statue() {
		return plan_statue;
	}

	public void setPlan_statue(String plan_statue) {
		this.plan_statue = plan_statue;
	}

	public String getExp() {
		return exp;
	}

	public void setExp(String exp) {
		this.exp = exp;
	}

	public String getSim() {
		return sim;
	}

	public void setSim(String sim) {
		this.sim = sim;
	}

	public String getGov() {
		return gov;
	}

	public void setGov(String gov) {
		this.gov = gov;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPeriod() {
		return period;
	}

	public void setPeriod(String period) {
		this.period = period;
	}

	public String getStatue() {
		return statue;
	}

	public void setStatue(String statue) {
		this.statue = statue;
	}

	public String getAddr_name() {
		return addr_name;
	}

	public void setAddr_name(String addr_name) {
		this.addr_name = addr_name;
	}

	public String getSec_addr_name() {
		return sec_addr_name;
	}

	public void setSec_addr_name(String sec_addr_name) {
		this.sec_addr_name = sec_addr_name;
	}

	public String getCate_name() {
		return cate_name;
	}

	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}

	public String getSub_cate_name() {
		return sub_cate_name;
	}

	public void setSub_cate_name(String sub_cate_name) {
		this.sub_cate_name = sub_cate_name;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getInsert_id() {
		return insert_id;
	}

	public void setInsert_id(String insert_id) {
		this.insert_id = insert_id;
	}

	//for getInterestedProjectList
	public Project(int id,String title, String cost, Date end_date, String period) {
		super();
		this.id = id;
		this.title = title;
		this.cost = cost;
		this.end_date = end_date;
		this.period = period;
	}

	public Project(int id, String title, String skill, String cost, String attach, Date start_date, String favor_type,
			Date pro_date, Date end_date, String goal, String plan_statue, String exp, String sim, String gov,
			String content, String period, String statue) {
		super();
		this.id = id;
		this.title = title;
		this.skill = skill;
		this.cost = cost;
		this.attach = attach;
		this.start_date = start_date;
		this.favor_type = favor_type;
		this.pro_date = pro_date;
		this.end_date = end_date;
		this.goal = goal;
		this.plan_statue = plan_statue;
		this.exp = exp;
		this.sim = sim;
		this.gov = gov;
		this.content = content;
		this.period = period;
		this.statue = statue;
	}
	
	
	

	// for getInterestedProject
	public Project(int id, String title, String cost, String period, Date end_date, String addr_name,
			String sec_addr_name, String cate_name, String sub_cate_name, int count) {
		super();
		this.id = id;
		this.title = title;
		this.cost = cost;
		this.end_date = end_date;
		this.period = period;
		this.end_date = end_date;
		this.addr_name = addr_name;
		this.sec_addr_name = sec_addr_name;
		this.cate_name = cate_name;
		this.sub_cate_name = sub_cate_name;
		this.count = count;
	}
	// for getProjectListAll
		public Project(int id, String title, String cost, String period, Date end_date, String addr_name,
				String sec_addr_name, String cate_name, String sub_cate_name) {
			super();
			this.id = id;
			this.title = title;
			this.cost = cost;
			this.end_date = end_date;
			this.period = period;
			this.end_date = end_date;
			this.addr_name = addr_name;
			this.sec_addr_name = sec_addr_name;
			this.cate_name = cate_name;
			this.sub_cate_name = sub_cate_name;
		}

	// for getProjectView
	public Project(String title, String cost, Date start_date, Date pro_date, Date end_date, String plan_statue,
			String exp, String sim, String gov, String content, String period, String cate_name, String sub_cate_name,
			String addr_name, String sec_addr_name, String insert_id) {
		super();
		this.title = title;
		this.cost = cost;
		this.start_date = start_date;
		this.pro_date = pro_date;
		this.end_date = end_date;
		this.plan_statue = plan_statue;
		this.exp = exp;
		this.sim = sim;
		this.gov = gov;
		this.content = content;
		this.period = period;
		this.cate_name = cate_name;
		this.sub_cate_name = sub_cate_name;
		this.addr_name = addr_name;
		this.sec_addr_name = sec_addr_name;
		this.insert_id = insert_id;
	}
	
	//for indexservice
//	public Project(int id, String title, String skill, String cost, String attach, Date start_date, String favor_type,
//	         Date pro_date, Date end_date, String goal, String plan_statue, String exp, String sim, String gov,
//	         String content, String period, String statue) {
//	      super();
//	      this.id = id;
//	      this.title = title;
//	      this.skill = skill;
//	      this.cost = cost;
//	      this.attach = attach;
//	      this.start_date = start_date;
//	      this.favor_type = favor_type;
//	      this.pro_date = pro_date;
//	      this.end_date = end_date;
//	      this.goal = goal;
//	      this.plan_statue = plan_statue;
//	      this.exp = exp;
//	      this.sim = sim;
//	      this.gov = gov;
//	      this.content = content;
//	      this.period = period;
//	      this.statue = statue;
//	   }

	@Override
	public String toString() {
		return "Project [id=" + id + ", title=" + title + ", skill=" + skill + ", cost=" + cost + ", attach=" + attach
				+ ", start_date=" + start_date + ", favor_type=" + favor_type + ", pro_date=" + pro_date + ", end_date="
				+ end_date + ", goal=" + goal + ", plan_statue=" + plan_statue + ", exp=" + exp + ", sim=" + sim
				+ ", gov=" + gov + ", content=" + content + ", period=" + period + ", statue=" + statue + ", addr_name="
				+ addr_name + ", sec_addr_name=" + sec_addr_name + ", cate_name=" + cate_name + ", sub_cate_name="
				+ sub_cate_name + ", count=" + count + ", insert_id=" + insert_id + "]";
	}

}
