package com.homeninja.service;

import com.homeninja.vo.JobsSearchCriteria;
import com.homeninja.vo.JobsSearchResult;

public interface JobSearchService {
	 public JobsSearchResult searchJobsByCriteria(JobsSearchCriteria jobsSearchCriteria);

}
