package com.homeninja.entities;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "job_category")
public class JobCategory implements Comparable<JobCategory> {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String jobCat;
	private String userTypeId;
	
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

	@Override
	public int compareTo(JobCategory jobCategory) {
		return this.id == jobCategory.id ? 0
				: (this.id > jobCategory.id ? 1 : -1);

	}

}
