package com.homeninja.dao;

import java.util.List;

import com.homeninja.entities.SiteUsers;
import com.homeninja.entities.UsersSearch;
import com.homeninja.vo.JobsSearchCriteria;
import com.homeninja.vo.JobsSearchResult;
import com.homeninja.vo.UsersSearchCriteria;
import com.homeninja.vo.UsersSearchResult;

public interface JobsSearchDAO {
	
	public JobsSearchResult searchJobsByCriteria(JobsSearchCriteria jobsSearchCriteria);
}
