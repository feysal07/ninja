package com.homeninja.helping.entities;

public class JobSearchCriteria {
	private int state;
	private int city;
	private int jobCategoryId;
	private String jobSubCategories;
	
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getCity() {
		return city;
	}
	public void setCity(int city) {
		this.city = city;
	}
	public int getJobCategoryId() {
		return jobCategoryId;
	}
	public void setJobCategoryId(int jobCategoryId) {
		this.jobCategoryId = jobCategoryId;
	}
	public String getJobSubCategories() {
		return jobSubCategories;
	}
	public void setJobSubCategories(String jobSubCategories) {
		this.jobSubCategories = jobSubCategories;
	}
}
