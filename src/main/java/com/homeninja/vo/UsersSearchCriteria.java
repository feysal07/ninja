package com.homeninja.vo;

import java.util.List;

public class UsersSearchCriteria {

	private String state;
	private String city;
	private String pincode;
	private List<String> jobCategoryList;
	private List<String> jobSubCategoryList;
	private long userTypeId;

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

	public List<String> getJobCategoryList() {
		return jobCategoryList;
	}

	public void setJobCategoryList(List<String> jobCategoryList) {
		this.jobCategoryList = jobCategoryList;
	}

	public List<String> getJobSubCategoryList() {
		return jobSubCategoryList;
	}

	public void setJobSubCategoryList(List<String> jobSubCategoryList) {
		this.jobSubCategoryList = jobSubCategoryList;
	}

	public long getUserTypeId() {
		return userTypeId;
	}

	public void setUserTypeId(long userTypeId) {
		this.userTypeId = userTypeId;
	}

}
