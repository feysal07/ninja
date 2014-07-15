package com.homeninja.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_jobcategory_map")
public class UserJobCategoryMap {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private long userId;
	private long jobCategoryID;

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

	public long getJobCategoryID() {
		return jobCategoryID;
	}

	public void setJobCategoryID(long jobCategoryID) {
		this.jobCategoryID = jobCategoryID;
	}




	

}
