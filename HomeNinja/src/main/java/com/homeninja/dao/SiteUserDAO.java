package com.homeninja.dao;

import org.springframework.stereotype.Service;

import com.homeninja.entities.SiteUsers;



@Service
public interface SiteUserDAO {

	    public boolean addUser(SiteUsers user );
	    public SiteUsers validateLogin(String username, String password);
	    public boolean isEmailExists(String userName);	
}
