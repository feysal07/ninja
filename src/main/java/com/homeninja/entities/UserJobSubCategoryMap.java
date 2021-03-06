package com.homeninja.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="user_jobsubcategory_map")
public class UserJobSubCategoryMap {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private long userId;
	private long jobSubCategoryId;
	
	@ManyToOne(fetch = FetchType.EAGER,cascade = CascadeType.MERGE)
	@JoinColumn(name="jobSubCategoryId" ,referencedColumnName="id" , insertable = false, updatable = false)
	private JobSubCategory jobSubCategory;
	
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
	/*public JobSubCategory getJobSubCategory() {
		return jobSubCategory;
	}
	public void setJobSubCategory(JobSubCategory jobSubCategory) {
		this.jobSubCategory = jobSubCategory;
	}*/
	public JobSubCategory getJobSubCategory() {
		return jobSubCategory;
	}
	public void setJobSubCategory(JobSubCategory jobSubCategory) {
		this.jobSubCategory = jobSubCategory;
	}
	

}
