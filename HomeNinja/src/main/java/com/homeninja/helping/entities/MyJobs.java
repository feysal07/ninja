package com.homeninja.helping.entities;

public class MyJobs {
	private int sNo;
	private String jobTitle;
	private String jobDetails;
	private String jobCategory;
	private String jobSubCategory;
	private String maxLimitReached;
	private String postDate;
	private String jobId;
	
	public int getsNo() {
		return sNo;
	}
	public void setsNo(int sNo) {
		this.sNo = sNo;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public String getJobDetails() {
		return jobDetails;
	}
	public void setJobDetails(String jobDetails) {
		this.jobDetails = jobDetails;
	}
	public String getMaxLimitReached() {
		return maxLimitReached;
	}
	public void setMaxLimitReached(String maxLimitReached) {
		this.maxLimitReached = maxLimitReached;
	}
	public String getPostDate() {
		return postDate;
	}
	public void setPostDate(String postDate) {
		this.postDate = postDate;
	}
	public String getJobId() {
		return jobId;
	}
	public void setJobId(String jobId) {
		this.jobId = jobId;
	}
	public String getJobCategory() {
		return jobCategory;
	}
	public void setJobCategory(String jobCategory) {
		this.jobCategory = jobCategory;
	}
	public String getJobSubCategory() {
		return jobSubCategory;
	}
	public void setJobSubCategory(String jobSubCategory) {
		this.jobSubCategory = jobSubCategory;
	}

}
