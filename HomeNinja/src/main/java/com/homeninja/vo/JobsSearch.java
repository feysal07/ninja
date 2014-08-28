package com.homeninja.vo;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class JobsSearch {
	private long id;
	private String title;
	private String jobDetails;
	private Date postDate;
	private String location;
	private int state;
	private int city;
	private long postBy;
	private int jobCategoryId;
	private int requestCount;
	private int requestLimit;
	private boolean maxRequestReached;
	private String jobSubCategories;
	private List<String> jobSubCategoriesList = new ArrayList<String>();

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getJobDetails() {
		return jobDetails;
	}

	public void setJobDetails(String jobDetails) {
		this.jobDetails = jobDetails;
	}

	public Date getPostDate() {
		return postDate;
	}

	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

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

	public long getPostBy() {
		return postBy;
	}

	public void setPostBy(long postBy) {
		this.postBy = postBy;
	}

	public int getJobCategoryId() {
		return jobCategoryId;
	}

	public void setJobCategoryId(int jobCategoryId) {
		this.jobCategoryId = jobCategoryId;
	}

	public int getRequestCount() {
		return requestCount;
	}

	public void setRequestCount(int requestCount) {
		this.requestCount = requestCount;
	}

	public int getRequestLimit() {
		return requestLimit;
	}

	public void setRequestLimit(int requestLimit) {
		this.requestLimit = requestLimit;
	}

	public boolean isMaxRequestReached() {
		return maxRequestReached;
	}

	public void setMaxRequestReached(boolean maxRequestReached) {
		this.maxRequestReached = maxRequestReached;
	}

	public String getJobSubCategories() {
		return jobSubCategories;
	}

	public void setJobSubCategories(String jobSubCategories) {
		this.jobSubCategories = jobSubCategories;
		
		this.jobSubCategories = jobSubCategories;
		if (jobSubCategories != null) {
			List<String> subCatList = Arrays
					.asList(jobSubCategories.split("-"));
			for (String subCategory : subCatList) {
				this.getJobSubCategoriesList().add(subCategory);

			}
		}
		
	}

	public List<String> getJobSubCategoriesList() {
		return jobSubCategoriesList;
	}

	public void setJobSubCategoriesList(List<String> jobSubCategoriesList) {
		this.jobSubCategoriesList = jobSubCategoriesList;
	}
	

}
