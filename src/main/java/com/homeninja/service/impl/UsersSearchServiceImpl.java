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

@Service
public class UsersSearchServiceImpl implements UsersSearchService {

	@Resource
	UsersSearchDAO usersSearchDAO;

	@Override
	public Set<UsersSearch> searchUsersByCriteria(
			UsersSearchCriteria usersSearchCriteria) {
		Set<UsersSearch>  usersSearchSet = new HashSet<UsersSearch>();
		List<UsersSearch> usersSearchList = usersSearchDAO
				.searchUsersByCriteria(usersSearchCriteria);
		if (usersSearchList != null) {
			for (UsersSearch usersSearch : usersSearchList) {
				usersSearchSet.add(usersSearch);
			}
		}
		return usersSearchSet;
	}
	

}
