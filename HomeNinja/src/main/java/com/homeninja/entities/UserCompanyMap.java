package com.homeninja.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="user_company_map")
public class UserCompanyMap {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private long userId;
	private String companyName;
	private String aboutCompany;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getAboutCompany() {
		return aboutCompany;
	}
	public void setAboutCompany(String aboutCompany) {
		this.aboutCompany = aboutCompany;
	}
	

}
