package com.homeninja.service;

import com.homeninja.entities.SiteUsers;
import com.homeninja.vo.UploadedFile;




public interface SiteUserService {

	 	public boolean addUser(SiteUsers registerUser );
	 	public boolean updateUser(SiteUsers registerUser );
	    public SiteUsers validateLogin(String username, String password);
	    public boolean isEmailExists(String userName);	
	    public SiteUsers findbyExample(SiteUsers siteUsers);
		
}
