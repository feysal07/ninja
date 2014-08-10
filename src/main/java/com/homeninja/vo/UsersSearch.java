package com.homeninja.vo;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.StringTokenizer;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class UsersSearch {
	private long id;
	private long userId;
	private String userName;
	private String description;
	private long state;
	private long city;
	private String pincode;
	private String jobCategories;
	private List<Long> jobCategoriesList = new ArrayList<Long>();
	private String jobSubCategories;
	private List<Long> jobSubCategoriesList = new ArrayList<Long>();
	private String aboutMe;
	private long userTypeId;

	public String getAboutMe() {
		return aboutMe;
	}

	public void setAboutMe(String aboutMe) {
		this.aboutMe = aboutMe;
	}

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

	public long getState() {
		return state;
	}

	public void setState(long state) {
		this.state = state;
	}

	public long getCity() {
		return city;
	}

	public void setCity(long city) {
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
		if (jobCategories != null) {
			List<String> catList = Arrays.asList(jobCategories.split(","));
			for (String category : catList) {
				Long categoryInteger = Long.parseLong(category);
				this.getJobCategoriesList().add(categoryInteger);

			}
		}

	}

	public List<Long> getJobCategoriesList() {
		return jobCategoriesList;
	}

	public void setJobCategoriesList(List<Long> jobCategoriesList) {
		this.jobCategoriesList = jobCategoriesList;
		

	}

	public String getJobSubCategories() {

		return jobSubCategories;
	}

	public void setJobSubCategories(String jobSubCategories) {
		this.jobSubCategories = jobSubCategories;
		if (jobSubCategories != null) {
			List<String> subCatList = Arrays.asList(jobSubCategories.split(","));
			for (String subCategory : subCatList) {
				Long subCategoryInteger = Long.parseLong(subCategory);
				this.getJobSubCategoriesList().add(subCategoryInteger);

			}
		}
	}

	
	public List<Long> getJobSubCategoriesList() {
		return jobSubCategoriesList;
	}

	public void setJobSubCategoriesList(List<Long> jobSubCategoriesList) {
		this.jobSubCategoriesList = jobSubCategoriesList;
	}

	public long getUserTypeId() {
		return userTypeId;
	}

	public void setUserTypeId(long userTypeId) {
		this.userTypeId = userTypeId;
	}

}
