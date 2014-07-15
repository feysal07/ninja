package com.homeninja.service;

import java.util.Set;

import com.homeninja.entities.JobCategory;
import com.homeninja.entities.JobSubCategory;
import com.homeninja.entities.UserJobCategoryMap;
import com.homeninja.entities.UserJobSubCategoryMap;

public interface JobCategoryService {
	public Set<JobCategory> getJobCategory();

	public Set<JobSubCategory> getJobSubCategory(JobCategory jobCategory);

	public boolean saveUserJobCategory(UserJobCategoryMap userJobCategoryMap);

	public boolean saveUserJobSubCategory(
			UserJobSubCategoryMap userJobSubCategoryMap);
	
	public Set<UserJobCategoryMap> getUserJobCategoryMap(long userId);

}
