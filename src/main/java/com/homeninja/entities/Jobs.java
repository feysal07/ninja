package com.homeninja.entities;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "jobs")
public class Jobs {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private String title;
	private String jobDetails;
	private Date postDate;
	private String location;
	private int state;
	private int city;
	private long postBy;
	private String pincode;
	private int jobCategoryId;
	private int requestCount;
	private int requestLimit;
	private boolean maxRequestReached;
	private String jobSubCategories;
	private double longitude;
	private double latitude;
	
	@Transient
	private String strCity;
	
	@Transient
	private String strState;
	
	@Transient
	private String strJobCategory;
	
	@Transient
	private boolean showInterestDisabled;
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="jobId")
	private List<JobsSubCategoryMap> JobsSubCategoryMap;
	
	
	
	@Transient
	private int[] jobSubCatIds;

	public long getPostBy() {
		return postBy;
	}

	public void setPostBy(long postBy) {
		this.postBy = postBy;
	}

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

	public List<JobsSubCategoryMap> getJobsSubCategoryMap() {
		return JobsSubCategoryMap;
	}

	public void setJobsSubCategoryMap(List<JobsSubCategoryMap> jobsSubCategoryMap) {
		JobsSubCategoryMap = jobsSubCategoryMap;
	}

	public int[] getJobSubCatIds() {
		return jobSubCatIds;
	}

	public void setJobSubCatIds(int[] jobSubCatIds) {
		this.jobSubCatIds = jobSubCatIds;
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

	public boolean isMaxRequestReached() {
		return maxRequestReached;
	}

	public void setMaxRequestReached(boolean maxRequestReached) {
		this.maxRequestReached = maxRequestReached;
	}

	public int getRequestLimit() {
		return requestLimit;
	}

	public void setRequestLimit(int requestLimit) {
		this.requestLimit = requestLimit;
	}

	public String getJobSubCategories() {
		return jobSubCategories;
	}

	public void setJobSubCategories(String jobSubCategories) {
		this.jobSubCategories = jobSubCategories;
	}

	/*public JobCategory getJobCategory() {
		return jobCategory;
	}

	public void setJobCategory(JobCategory jobCategory) {
		this.jobCategory = jobCategory;
	}*/

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
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

	public String getStrCity() {
		return strCity;
	}

	public void setStrCity(String strCity) {
		this.strCity = strCity;
	}

	public String getStrState() {
		return strState;
	}

	public void setStrState(String strState) {
		this.strState = strState;
	}

	public String getStrJobCategory() {
		return strJobCategory;
	}

	public void setStrJobCategory(String strJobCategory) {
		this.strJobCategory = strJobCategory;
	}

    public boolean isShowInterestDisabled() {
        return showInterestDisabled;
    }

    public void setShowInterestDisabled(boolean showInterestDisabled) {
        this.showInterestDisabled = showInterestDisabled;
    }

	
	

}
