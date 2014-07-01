package com.homeninja.service;

import com.homeninja.entities.SiteUsers;




public interface SiteUserService {

	 	public boolean addUser(SiteUsers registerUser );
	 	public boolean updateUser(SiteUsers registerUser );
	    public SiteUsers validateLogin(String username, String password);
	    public boolean isEmailExists(String userName);	
		
}
