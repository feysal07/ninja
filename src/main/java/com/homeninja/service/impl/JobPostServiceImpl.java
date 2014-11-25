package com.homeninja.service.impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.homeninja.dao.JobPostDAO;
import com.homeninja.entities.JobCategory;
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
	public boolean availableToSendMessage(long jobId) {
		// TODO Auto-generated method stub
		return jobPostDAO.availableToSendMessage(jobId);
	}

	@Override
	public List<Jobs> getAllPostedJobsByMe(long userId) {
		return jobPostDAO.getAllPostedJobsByMe(userId);
	}

	@Override
	public JobCategory getJobCategoryById(long jobCatId) {
		return jobPostDAO.getJobCategoryById(jobCatId);
	}

	@Override
	public Jobs getJobPostById(long jobId) {
		
		return jobPostDAO.getJobPostById(jobId);
	}

	@Override
	public Long whoPostTheJob(long jobId) {
		return jobPostDAO.whoPostTheJob(jobId);
	}

	
}
