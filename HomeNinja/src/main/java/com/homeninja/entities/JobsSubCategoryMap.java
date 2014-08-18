package com.homeninja.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "jobs_jobsubcategory_map")
public class JobsSubCategoryMap {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private long jobId;
	private int jobSubCategoryId;

	public JobsSubCategoryMap(int jobSubCategoryId){
		this.jobSubCategoryId=jobSubCategoryId;	
	}
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getJobId() {
		return jobId;
	}

	public void setJobId(long jobId) {
		this.jobId = jobId;
	}

	public int getJobSubCategoryId() {
		return jobSubCategoryId;
	}

	public void setJobSubCategoryId(int jobSubCategoryId) {
		this.jobSubCategoryId = jobSubCategoryId;
	}

}
