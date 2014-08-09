package com.homeninja.service.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.homeninja.entities.SiteUsers;
import com.homeninja.entities.UsersSearch;
import com.homeninja.dao.UsersSearchDAO;
import com.homeninja.service.UsersSearchService;
import com.homeninja.vo.UsersSearchCriteria;
import com.homeninja.vo.UsersSearchResult;

@Service
public class UsersSearchServiceImpl implements UsersSearchService {

	@Resource
	UsersSearchDAO usersSearchDAO;

	@Override
	 public UsersSearchResult searchUsersByCriteria(
			UsersSearchCriteria usersSearchCriteria) {
		UsersSearchResult usersSearchResultList = usersSearchDAO
				.searchUsersByCriteria(usersSearchCriteria);

		return usersSearchResultList;
	}
	

}
