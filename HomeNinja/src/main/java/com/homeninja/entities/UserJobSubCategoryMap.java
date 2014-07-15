package com.homeninja.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user_jobsubcategory_map")
public class UserJobSubCategoryMap {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private long userId;
	private long jobSubCategoryId;
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
	public long getJobSubCategoryId() {
		return jobSubCategoryId;
	}
	public void setJobSubCategoryId(long jobSubCategoryId) {
		this.jobSubCategoryId = jobSubCategoryId;
	}
	

}
