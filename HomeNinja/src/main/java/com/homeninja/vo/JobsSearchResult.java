package com.homeninja.vo;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


public class JobsSearchResult {
	private long pageCount;
	private int pageNumber;

	private List<JobsSearch> jobsSearchList;

	public long getPageCount() {
		return pageCount;
	}

	public void setPageCount(long pageCount) {
		this.pageCount = pageCount;
	}
		
	public List<JobsSearch> getJobsSearchList() {
		return jobsSearchList;
	}

	public void setJobsSearchList(List<JobsSearch> jobsSearchList) {
		this.jobsSearchList = jobsSearchList;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	

}
