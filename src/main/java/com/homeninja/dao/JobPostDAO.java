package com.homeninja.dao;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.homeninja.entities.JobCategory;
import com.homeninja.entities.Jobs;
import com.homeninja.entities.JobsSubCategoryMap;
import com.homeninja.entities.MessageLimits;
import com.homeninja.helping.entities.JobSearchCriteria;

public interface JobPostDAO {
    public boolean saveOrUpdatePostedJob(Jobs jobPost);
	public List<Jobs> getAllPostedJobs();
	public boolean saveOrUpdateJobSubCatIds(JobsSubCategoryMap obj);
	public List<MessageLimits> getMessageLimits();
	public List<Jobs> getJobPostByCriteria(JobSearchCriteria jobSearchCriteria);
	public boolean availableToSendMessage(int jobId);
	public List<Jobs> getAllPostedJobsByMe(long userId);
	public JobCategory getJobCategoryById(long jobCatId);
	
	
}
