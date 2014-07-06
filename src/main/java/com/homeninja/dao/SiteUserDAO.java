package com.homeninja.dao;

import org.springframework.stereotype.Service;

import com.homeninja.entities.SiteUsers;
import com.homeninja.vo.UploadedFile;



public interface SiteUserDAO {

	    public boolean addUser(SiteUsers user );
	    public boolean updateUser(SiteUsers user );
	    public SiteUsers validateLogin(String username, String password);
	    public boolean isEmailExists(String userName);	
	    public SiteUsers findbyExample(SiteUsers siteUsers);
}
