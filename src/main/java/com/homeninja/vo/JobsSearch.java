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
	
	private Long stateL;
	private Long cityL;
	private long postBy;
	private int jobCategoryId;
	private Long jobCategory;
	private int requestCount;
	private int requestLimit;
	private boolean maxRequestReached;
	private String jobSubCategories;
	private List<String> jobSubCategoriesList = new ArrayList<String>();
	private double longitude;
	private double latitude;
	private int index;
	private boolean showInterestDisabled;

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
		this.stateL = state * 1L;
	}
	
	

	public int getCity() {
		return city;
	}

	public void setCity(int city) {
		this.city = city;
		this.cityL = city * 1L;
	}
	
	

	public Long getStateL() {
		return stateL;
	}

	public void setStateL(Long stateL) {
		this.stateL = stateL;
	}

	public Long getCityL() {
		return cityL;
	}

	public void setCityL(Long cityL) {
		this.cityL = cityL;
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
		setJobCategory(jobCategoryId * 1L);
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

	public Long getJobCategory() {
		return jobCategory;
	}

	public void setJobCategory(Long jobCategory) {
		this.jobCategory = jobCategory;
	}

	public List<String> getJobSubCategoriesList() {
		return jobSubCategoriesList;
	}

	public void setJobSubCategoriesList(List<String> jobSubCategoriesList) {
		this.jobSubCategoriesList = jobSubCategoriesList;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

    public boolean isShowInterestDisabled() {
        return showInterestDisabled;
    }

    public void setShowInterestDisabled(boolean showInterestDisabled) {
        if(requestCount >= requestLimit || requestLimit == 0) {
            this.showInterestDisabled = true;
        } else {
            this.showInterestDisabled = false;
        }
    }



}
