package com.homeninja.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.homeninja.service.JobSearchService;
import com.homeninja.vo.JobsSearchCriteria;
import com.homeninja.vo.JobsSearchResult;
import com.homeninja.vo.UsersSearchResult;
import com.homeninja.dao.JobsSearchDAO;

@Service
public class JobSearchServiceImpl implements JobSearchService{

	@Resource
	private JobsSearchDAO jobsSearchDAO;
	
	
	@Override
	public JobsSearchResult searchJobsByCriteria(
			JobsSearchCriteria jobsSearchCriteria) {
		JobsSearchResult jobsSearchResultList = jobsSearchDAO
				.searchJobsByCriteria(jobsSearchCriteria);

		return jobsSearchResultList;
	}

}
