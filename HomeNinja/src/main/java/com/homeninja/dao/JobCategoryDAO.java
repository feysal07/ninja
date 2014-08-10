package com.homeninja.dao;

import java.util.Set;

import com.homeninja.entities.JobCategory;
import com.homeninja.entities.JobSubCategory;
import com.homeninja.entities.UserJobCategoryMap;
import com.homeninja.entities.UserJobSubCategoryMap;

public interface JobCategoryDAO {
	public Set<JobCategory> getJobCategory();

	public Set<JobSubCategory> getJobSubCategory(JobCategory jobCategory);
	
	public Set<JobSubCategory> getJobSubCategory();

	public boolean saveUserJobCategory(UserJobCategoryMap userJobCategoryMap);

	public boolean saveUserJobSubCategory(
			UserJobSubCategoryMap userJobSubCategoryMap);

	public Set<UserJobCategoryMap> getUserJobCategoryMap(long userId);
	
	public Set<UserJobSubCategoryMap> getUserJobSubCategoryMap(long userId);
	
	public boolean removeJobCategory(UserJobCategoryMap userJobCategoryMap);
	
	public boolean removeJobSubCategory(UserJobSubCategoryMap userJobsubCategoryMap);
}
