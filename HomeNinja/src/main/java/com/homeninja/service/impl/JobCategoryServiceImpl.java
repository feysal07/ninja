package com.homeninja.service.impl;

import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.homeninja.dao.JobCategoryDAO;
import com.homeninja.entities.JobCategory;
import com.homeninja.entities.JobSubCategory;
import com.homeninja.entities.UserJobCategoryMap;
import com.homeninja.entities.UserJobSubCategoryMap;
import com.homeninja.service.JobCategoryService;

@Service
public final class JobCategoryServiceImpl implements JobCategoryService {

	@Resource
	private JobCategoryDAO jobCategoryDAO;

	@Override
	public Set<JobCategory> getJobCategory() {
		return jobCategoryDAO.getJobCategory();
	}

	@Override
	public Set<JobSubCategory> getJobSubCategory(JobCategory jobCategory) {
		// TODO Auto-generated method stub
		return jobCategoryDAO.getJobSubCategory(jobCategory);
	}

	@Override
	public boolean saveUserJobCategory(UserJobCategoryMap userJobCategoryMap) {
		return jobCategoryDAO.saveUserJobCategory(userJobCategoryMap);
	}

	@Override
	public boolean saveUserJobSubCategory(
			UserJobSubCategoryMap userJobSubCategoryMap) {
		return jobCategoryDAO.saveUserJobSubCategory(userJobSubCategoryMap);
	}

	@Override
	public Set<UserJobCategoryMap> getUserJobCategoryMap(long userId) {
		// TODO Auto-generated method stub
		return jobCategoryDAO.getUserJobCategoryMap(userId);
	}

	@Override
	public Set<UserJobSubCategoryMap> getUserJobSubCategoryMap(long userId) {
		// TODO Auto-generated method stub
		return jobCategoryDAO.getUserJobSubCategoryMap(userId);
	}
	
	

}
