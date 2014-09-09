package com.homeninja.service;

import com.homeninja.entities.UsersSearch;
import com.homeninja.vo.UsersSearchCriteria;
import com.homeninja.vo.UsersSearchResult;

public interface UsersSearchService {
	 public UsersSearchResult searchUsersByCriteria(UsersSearchCriteria usersSearchCriteria);
	 public UsersSearch getUserSearchRecordById(long userId);
	 public boolean updateUsersSearch(UsersSearch usersSearch);
	 public boolean addUsersSearch(UsersSearch usersSearch );
}
