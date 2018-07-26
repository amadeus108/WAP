package com.wap.web.entity;

public class Client {
	private String id;
	private String pwd;
	private String email;
	private String com_name;
	private String phone;
	private String fax;
	private String ceo;
	private String manager;
	private String m_phone;
	private String type;
	private String sul_date;
	private String tax_email;
	private String pro_img;
	private String last_addr;
	private String ye_name;
	private String account;
	
	public Client() {
		
	}
	
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
	public String getCom_name() {
		return com_name;
	}
	public void setCom_name(String com_name) {
		this.com_name = com_name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getCeo() {
		return ceo;
	}
	public void setCeo(String ceo) {
		this.ceo = ceo;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSul_date() {
		return sul_date;
	}
	public void setSul_date(String sul_date) {
		this.sul_date = sul_date;
	}
	public String getTax_email() {
		return tax_email;
	}
	public void setTax_email(String tax_email) {
		this.tax_email = tax_email;
	}
	public String getPro_img() {
		return pro_img;
	}
	public void setPro_img(String pro_img) {
		this.pro_img = pro_img;
	}
	public String getLast_addr() {
		return last_addr;
	}
	public void setLast_addr(String last_addr) {
		this.last_addr = last_addr;
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
	
	//for insertClientMember
	public Client(String email,String id,String pwd) {
		this.id = id;
		this.pwd = pwd;
		this.email = email;
	}
	
	public Client(String id, String pwd, String email, String com_name, String phone, String fax, String ceo, String manager,
			String m_phone, String type, String sul_date, String tax_email, String pro_img, String last_addr,
			String ye_name, String account) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.email = email;
		this.com_name = com_name;
		this.phone = phone;
		this.fax = fax;
		this.ceo = ceo;
		this.manager = manager;
		this.m_phone = m_phone;
		this.type = type;
		this.sul_date = sul_date;
		this.tax_email = tax_email;
		this.pro_img = pro_img;
		this.last_addr = last_addr;
		this.ye_name = ye_name;
		this.account = account;
	}
	
	@Override
	public String toString() {
		return "Client [id=" + id + ", pwd=" + pwd + ", email=" + email + ", com_name=" + com_name + ", phone=" + phone
				+ ", fax=" + fax + ", ceo=" + ceo + ", manager=" + manager + ", m_phone=" + m_phone + ", type=" + type
				+ ", sul_date=" + sul_date + ", tax_email=" + tax_email + ", pro_img=" + pro_img + ", last_addr="
				+ last_addr + ", ye_name=" + ye_name + ", account=" + account + "]";
	}

}
