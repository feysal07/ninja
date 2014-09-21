package com.homeninja.vo;

public class UserJobCategoryVO {
	
	public UserJobCategoryVO() {
		// TODO Auto-generated constructor stub
		super();
	}
	
	public UserJobCategoryVO(String isSet){
		this.jobCategoryIsSet = isSet;
	}
	private String jobCategoryIsSet;

	public String getJobCategoryIsSet() {
		return jobCategoryIsSet;
	}

	public void setJobCategoryIsSet(String jobCategoryIsSet) {
		this.jobCategoryIsSet = jobCategoryIsSet;
	}
	
}
