package com.homeninja.service;

import java.util.Set;

import com.homeninja.entities.SiteUsers;
import com.homeninja.entities.UserType;
import com.homeninja.vo.UploadedFile;




public interface SiteUserService {

	 	public boolean addUser(SiteUsers registerUser );
	 	public boolean updateUser(SiteUsers registerUser );
	    public SiteUsers validateLogin(String username, String password);
	    public boolean isEmailExists(String userName);	
	    public SiteUsers findbyExample(SiteUsers siteUsers);
	    public Set<UserType> getUserType();
	    public SiteUsers getSiteUsersById(SiteUsers siteUsers);
		
}
