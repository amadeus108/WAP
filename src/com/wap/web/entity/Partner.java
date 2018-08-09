package com.wap.web.entity;

public class Partner {
	
	private String id;
	private String pwd;
	private String email;
	private String intro;
	private String pro_img;
	private String type;
	private String name;
	private String gender;
	private String year;
	private String month;
	private String day;
	private String manager;
	private String company;
	private String ceo;
	private String sul_date;
	private String ye_name;
	private String account;
	private String last_addr;
	private int addr;
	private int sec_addr;
	private String addr_name;
	private String sec_addr_name;
	
	
	public Partner() {	}
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getPro_img() {
		return pro_img;
	}

	public void setPro_img(String pro_img) {
		this.pro_img = pro_img;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getCeo() {
		return ceo;
	}

	public void setCeo(String ceo) {
		this.ceo = ceo;
	}

	public String getSul_date() {
		return sul_date;
	}

	public void setSul_date(String sul_date) {
		this.sul_date = sul_date;
	}

	public String getYe_name() {
		return ye_name;
	}

	public void setYe_name(String ye_name) {
		this.ye_name = ye_name;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getLast_addr() {
		return last_addr;
	}

	public void setLast_addr(String last_addr) {
		this.last_addr = last_addr;
	}
	
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getYear() {
		return year;
	}


	public void setYear(String year) {
		this.year = year;
	}


	public String getMonth() {
		return month;
	}


	public void setMonth(String month) {
		this.month = month;
	}


	public String getDay() {
		return day;
	}


	public void setDay(String day) {
		this.day = day;
	}


	public int getAddr() {
		return addr;
	}


	public void setAddr(int addr) {
		this.addr = addr;
	}


	public int getSec_addr() {
		return sec_addr;
	}


	public void setSec_addr(int sec_addr) {
		this.sec_addr = sec_addr;
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


	//for insertPartnerMember
	public Partner(String email,String id,String pwd) {
		this.id = id;
		this.pwd = pwd;
		this.email = email;
	}

	public Partner(String id, String pwd, String email, String intro, String pro_img, String type, String manager,
			String company, String ceo, String sul_date, String ye_name, String account, String last_addr) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.email = email;
		this.intro = intro;
		this.pro_img = pro_img;
		this.type = type;
		this.manager = manager;
		this.company = company;
		this.ceo = ceo;
		this.sul_date = sul_date;
		this.ye_name = ye_name;
		this.account = account;
		this.last_addr = last_addr;
	}

	//for insertInfo
	public Partner(String id, String pro_img, String type, String name, String gender, String year,String month,String day, int addr,
			int sec_addr, String last_addr) {
		super();
		this.id = id;
		this.pro_img = pro_img;
		this.type = type;
		this.name = name;
		this.gender = gender;
		this.year = year;
		this.month = month;
		this.day = day;
		this.addr = addr;
		this.sec_addr = sec_addr;
		this.last_addr = last_addr;
	}
	
	//for getPartnerInfo
    public Partner(String pro_img,String type,String name,String gender,String year,String month,String day,String addr_name,String sec_addr_name,String last_addr) {
    	super();
    	this.pro_img = pro_img;
    	this.type = type;
    	this.name = name;
    	this.gender = gender;
    	this.year = year;
    	this.month = month;
    	this.day = day;
    	this.addr_name = addr_name;
    	this.sec_addr_name = sec_addr_name;
    	this.last_addr = last_addr;
    }


	@Override
	public String toString() {
		return "Partner [id=" + id + ", pwd=" + pwd + ", email=" + email + ", intro=" + intro + ", pro_img=" + pro_img
				+ ", type=" + type + ", name=" + name + ", gender=" + gender + ", year=" + year + ", month=" + month
				+ ", day=" + day + ", manager=" + manager + ", company=" + company + ", ceo=" + ceo + ", sul_date="
				+ sul_date + ", ye_name=" + ye_name + ", account=" + account + ", last_addr=" + last_addr + ", addr="
				+ addr + ", sec_addr=" + sec_addr + ", addr_name=" + addr_name + ", sec_addr_name=" + sec_addr_name
				+ "]";
	}


	
	
	
	
		
	
	
}
