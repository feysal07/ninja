package com.homeninja.service.impl;


import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.homeninja.dao.JobPostDAO;
import com.homeninja.entities.Jobs;
import com.homeninja.entities.JobsSubCategoryMap;
import com.homeninja.entities.MessageLimits;
import com.homeninja.helping.entities.JobSearchCriteria;
import com.homeninja.service.JobPostService;
@Service
public class JobPostServiceImpl implements JobPostService {

	@Resource
	private JobPostDAO jobPostDAO;
	
	
	@Override
	public boolean saveOrUpdatePostedJob(Jobs jobPost) {
		return jobPostDAO.saveOrUpdatePostedJob(jobPost);
	}

	@Override
	public List<Jobs> getAllPostedJobs() {
		return jobPostDAO.getAllPostedJobs();
	}

	@Override
	public boolean saveOrUpdateJobSubCatIds(JobsSubCategoryMap obj) {
		return jobPostDAO.saveOrUpdateJobSubCatIds(obj);
		
		
	}

	@Override
	public List<MessageLimits> getMessageLimits() {
		return jobPostDAO.getMessageLimits();
	}

	@Override
	public List<Jobs> getJobPostByCriteria(JobSearchCriteria jobSearchCriteria) {
		return jobPostDAO.getJobPostByCriteria(jobSearchCriteria);
	}

	@Override
	public boolean availableToSendMessage(int jobId) {
		// TODO Auto-generated method stub
		return jobPostDAO.availableToSendMessage(jobId);
	}

	
}
