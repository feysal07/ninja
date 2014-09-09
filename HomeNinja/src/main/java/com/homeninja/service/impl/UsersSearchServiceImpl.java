package com.homeninja.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.homeninja.dao.UsersSearchDAO;
import com.homeninja.entities.UsersSearch;
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

	@Override
	public UsersSearch getUserSearchRecordById(long userId) {
		// TODO Auto-generated method stub
		return usersSearchDAO.getUserSearchRecordById(userId);
	}

	@Override
	public boolean updateUsersSearch(UsersSearch usersSearch) {
		// TODO Auto-generated method stub
		return usersSearchDAO.updateUsersSearch(usersSearch);
	}

	@Override
	public boolean addUsersSearch(UsersSearch usersSearch) {
		// TODO Auto-generated method stub
		return usersSearchDAO.addUsersSearch(usersSearch);
	}
	

}
