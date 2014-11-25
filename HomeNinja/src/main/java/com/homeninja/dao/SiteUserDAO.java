package com.homeninja.dao;

import java.util.List;
import java.util.Set;

import com.homeninja.entities.Address;
import com.homeninja.entities.SiteUsers;
import com.homeninja.entities.UserJobCategoryMap;
import com.homeninja.entities.UserJobSubCategoryMap;
import com.homeninja.entities.UserType;



public interface SiteUserDAO {

	    public long addUser(SiteUsers user );
	    public boolean updateUser(SiteUsers user );
	    public SiteUsers validateLogin(String username, String password);
	    public boolean isEmailExists(String loginEmail);	
	    public SiteUsers findbyExample(SiteUsers siteUsers);
	    public Set<UserType> getUserType();
	    public SiteUsers getSiteUsersById(SiteUsers siteUsers);
		public boolean resetPassword(String email,String newPassword);
		public SiteUsers getSiteUsersById(long userId);
		public boolean saveUserAddress(Address address);
		public UserType getUserType( long id);
		public List<UserJobCategoryMap> getUserJobCategories(long userId);
		public List<UserJobSubCategoryMap> getUserJobSubCategories(long userId);
		public boolean isUsernameExist(String username);
		public String getUserPhoneNo(long userId);
		
}
