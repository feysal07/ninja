package com.homeninja.vo;

import java.util.List;

public class JobsSearchCriteria {

	private Integer state;
	private Integer city;
	private List<Integer> jobCategoryList;
	private List<String> jobSubCategoryList;
	private int pageSize;
	private int pageNumber;
	private int countResult;

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Integer getCity() {
		return city;
	}

	public void setCity(Integer city) {
		this.city = city;
	}

	public List<Integer> getJobCategoryList() {
		return jobCategoryList;
	}

	public void setJobCategoryList(List<Integer> jobCategoryList) {
		this.jobCategoryList = jobCategoryList;
	}

	public List<String> getJobSubCategoryList() {
		return jobSubCategoryList;
	}

	public void setJobSubCategoryList(List<String> jobSubCategoryList) {
		this.jobSubCategoryList = jobSubCategoryList;
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
