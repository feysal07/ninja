package com.homeninja.dao;

import java.util.Set;

import org.springframework.stereotype.Service;

import com.homeninja.entities.SiteUsers;
import com.homeninja.entities.UserType;
import com.homeninja.vo.State;
import com.homeninja.vo.UploadedFile;



public interface SiteUserDAO {

	    public boolean addUser(SiteUsers user );
	    public boolean updateUser(SiteUsers user );
	    public SiteUsers validateLogin(String username, String password);
	    public boolean isEmailExists(String userName);	
	    public SiteUsers findbyExample(SiteUsers siteUsers);
	    public Set<UserType> getUserType();
	    public SiteUsers getSiteUsersById(SiteUsers siteUsers);
		public boolean resetPassword(String email,String newPassword);
}
