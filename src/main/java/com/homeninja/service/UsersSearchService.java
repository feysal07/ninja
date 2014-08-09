package com.homeninja.service;

import java.util.Set;

import com.homeninja.entities.UsersSearch;
import com.homeninja.vo.UsersSearchCriteria;
import com.homeninja.vo.UsersSearchResult;

public interface UsersSearchService {
	 public UsersSearchResult searchUsersByCriteria(UsersSearchCriteria usersSearchCriteria);

}
