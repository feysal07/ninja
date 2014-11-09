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
	private Long state;
	private Long city;
	private String pincode;
	private String jobCategories;
	private List<String> jobCategoriesList = new ArrayList<String>();
	private String jobSubCategories;
	private List<String> jobSubCategoriesList = new ArrayList<String>();
	private String aboutMe;
	private Long userTypeId;
	private int index;

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

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getJobCategories() {
		return jobCategories;
	}

	public List<String> getJobCategoriesList() {
		return jobCategoriesList;
	}

	public void setJobCategoriesList(List<String> jobCategoriesList) {
		this.jobCategoriesList = jobCategoriesList;
	}

	public List<String> getJobSubCategoriesList() {
		return jobSubCategoriesList;
	}

	public void setJobSubCategoriesList(List<String> jobSubCategoriesList) {
		this.jobSubCategoriesList = jobSubCategoriesList;
	}

	public void setJobCategories(String jobCategories) {
		if (jobCategories != null) {
			List<String> catList = Arrays.asList(jobCategories.split(","));
			for (String category : catList) {
				this.getJobCategoriesList().add(category);

			}
			jobCategories=jobCategories.replace("|",", ");
			this.jobCategories = jobCategories;
		}

	}



	public String getJobSubCategories() {

		return jobSubCategories;
	}

	public void setJobSubCategories(String jobSubCategories) {
		if (jobSubCategories != null) {
			List<String> subCatList = Arrays
					.asList(jobSubCategories.split(","));
			for (String subCategory : subCatList) {
				this.getJobSubCategoriesList().add(subCategory);

			}
			jobSubCategories = jobSubCategories.replace("|", ", ");
			this.jobSubCategories = jobSubCategories;
		}
	}



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

	public Long getUserTypeId() {
		return userTypeId;
	}

	public void setUserTypeId(Long userTypeId) {
		this.userTypeId = userTypeId;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}
	
	

}
