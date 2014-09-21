package com.homeninja.service;

import java.util.Set;

import com.homeninja.entities.Address;
import com.homeninja.entities.SiteUsers;
import com.homeninja.entities.UserType;




public interface SiteUserService {

	 	public long addUser(SiteUsers registerUser );
	 	public boolean updateUser(SiteUsers registerUser );
	    public SiteUsers validateLogin(String username, String password);
	    public boolean isEmailExists(String userName);	
	    public SiteUsers findbyExample(SiteUsers siteUsers);
	    public Set<UserType> getUserType();
	    public SiteUsers getSiteUsersById(SiteUsers siteUsers);
	    public boolean resetPassword(String email,String newPassword);
		public SiteUsers getSiteUsersById(long userId);
		public boolean saveUserAddress(Address address);
		public UserType getUserType( long id);
		
}
