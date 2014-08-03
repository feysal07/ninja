package com.homeninja.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users_search")
public class UsersSearch {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private long userId;
	private String userName;
	private String description;
	private String state;
	private String city;
	private String pincode;
	private String jobCategories;
	private String jobSubCategories;
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getJobCategories() {
		return jobCategories;
	}
	public void setJobCategories(String jobCategories) {
		this.jobCategories = jobCategories;
	}
	public String getJobSubCategories() {
		return jobSubCategories;
	}
	public void setJobSubCategories(String jobSubCategories) {
		this.jobSubCategories = jobSubCategories;
	}
	

}
