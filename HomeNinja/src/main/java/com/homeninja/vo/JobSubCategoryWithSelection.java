package com.homeninja.vo;


public class JobSubCategoryWithSelection implements Comparable<JobSubCategoryWithSelection>{
	
	private long id;
	private long jobCatId;
	private String jobSubCat;
	private String isSet;
	

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getJobCatId() {
		return jobCatId;
	}

	public void setJobCatId(long jobCatId) {
		this.jobCatId = jobCatId;
	}

	public String getJobSubCat() {
		return jobSubCat;
	}

	public void setJobSubCat(String jobSubCat) {
		this.jobSubCat = jobSubCat;
	}

	public String getIsSet() {
		return isSet;
	}

	public void setIsSet(String isSet) {
		this.isSet = isSet;
	}

	@Override
	public int compareTo(JobSubCategoryWithSelection jobCategoryWithSelection) {
		return this.id == jobCategoryWithSelection.id ? 0
				: (this.id > jobCategoryWithSelection.id ? 1 : -1);

	}


}
