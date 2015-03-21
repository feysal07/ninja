package com.homeninja.vo;


public class JobCategoryWithSelection implements Comparable<JobCategoryWithSelection>{
	
	private int id;
	private String jobCat;
	private String userTypeId;
	private String isSet;
	
	/*@OneToMany(cascade= {CascadeType.ALL}, mappedBy = "parent")
	Set<JobSubCategory> jobSubCategorySet;
	*/

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getJobCat() {
		return jobCat;
	}

	public void setJobCat(String jobCat) {
		this.jobCat = jobCat;
	}

	public String getUserTypeId() {
		return userTypeId;
	}

	public void setUserTypeId(String userTypeId) {
		this.userTypeId = userTypeId;
	}
	
	

	public String getIsSet() {
		return isSet;
	}

	public void setIsSet(String isSet) {
		this.isSet = isSet;
	}

	@Override
	public int compareTo(JobCategoryWithSelection jobCategoryWithSelection) {
		return this.id == jobCategoryWithSelection.id ? 0
				: (this.id > jobCategoryWithSelection.id ? 1 : -1);

	}


}
