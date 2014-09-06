package com.homeninja.vo;

import java.util.List;

public class UsersSearchCriteria {

	private Long state;
	private Long city;
	private String pincode;
	private List<String> jobCategoryList;
	private List<String> jobSubCategoryList;
	private long userTypeId;
	private int pageSize;
	private int pageNumber;
	private int countResult;

	public Long getState() {
		return state;
	}

	public void setState(Long state) {
		this.state = state;
	}

	public Long getCity() {
		return city;
	}

	public void setCity(Long city) {
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

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public int getCountResult() {
		return countResult;
	}

	public void setCountResult(int countResult) {
		this.countResult = countResult;
	}

}
