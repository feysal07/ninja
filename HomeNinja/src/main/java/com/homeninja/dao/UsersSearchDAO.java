package com.homeninja.dao;

import java.util.List;

import com.homeninja.entities.SiteUsers;
import com.homeninja.entities.UsersSearch;
import com.homeninja.vo.UsersSearchCriteria;
import com.homeninja.vo.UsersSearchResult;

public interface UsersSearchDAO {
	
	 public boolean addUsersSearch(UsersSearch usersSearch );
	    public boolean updateUsersSearch(UsersSearch usersSearch );
	    public UsersSearchResult searchUsersByCriteria(UsersSearchCriteria usersSearchCriteria);

}
