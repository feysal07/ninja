package com.homeninja.service;

import java.util.Set;

import com.homeninja.entities.UsersSearch;
import com.homeninja.vo.UsersSearchCriteria;

public interface UsersSearchService {
	public Set<UsersSearch> searchUsersByCriteria(UsersSearchCriteria usersSearchCriteria);

}
