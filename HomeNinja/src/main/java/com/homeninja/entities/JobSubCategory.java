package com.homeninja.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "job_sub_category")
public class JobSubCategory {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private long jobCatId;
	private String jobSubCat;
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
	

}
