package com.homeninja.service.impl;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.homeninja.dao.SiteUserDAO;
import com.homeninja.entities.Address;
import com.homeninja.entities.SiteUsers;
import com.homeninja.entities.UserJobCategoryMap;
import com.homeninja.entities.UserJobSubCategoryMap;
import com.homeninja.entities.UserType;
import com.homeninja.service.SiteUserService;



@Service
public class SiteUserServiceImpl  implements  SiteUserService{

	@Resource SiteUserDAO siteUserDAO;
	
	@Override
	public long addUser(SiteUsers registerUser) {
		// TODO Auto-generated method stub
		return siteUserDAO.addUser(registerUser);
	}

	@Override
	public boolean updateUser(SiteUsers registerUser) {
		// TODO Auto-generated method stub
		return siteUserDAO.updateUser(registerUser);
	}
	
	@Override	
	public SiteUsers validateLogin(String username, String password) {
		// TODO Auto-generated method stub
		return siteUserDAO.validateLogin(username, password);
	}

	@Override
	public boolean isEmailExists(String loginEmail) {
		// TODO Auto-generated method stub
		return siteUserDAO.isEmailExists(loginEmail);
	}

	@Override
	public SiteUsers findbyExample(SiteUsers siteUsers){
		// TODO Auto-generated method stub
		return siteUserDAO.findbyExample(siteUsers);
	}

	@Override
	public Set<UserType> getUserType() {
		return siteUserDAO.getUserType();
	}
	
	@Override
	public UserType getUserType( long id){
		return siteUserDAO.getUserType(id);
	}

	@Override
	public SiteUsers getSiteUsersById(SiteUsers siteUsers) {
		// TODO Auto-generated method stub
		return siteUserDAO.getSiteUsersById(siteUsers);
	}

	@Override
	public boolean resetPassword(String email,String newPassword) {
		// TODO Auto-generated method stub
		return siteUserDAO.resetPassword(email,newPassword);
	}

	@Override
	public SiteUsers getSiteUsersById(long userId) {
		// TODO Auto-generated method stub
		return siteUserDAO.getSiteUsersById(userId);
	}

	@Override
	public boolean saveUserAddress(Address address) {
		return siteUserDAO.saveUserAddress(address);
	}

	@Override
	public List<UserJobCategoryMap> getUserJobCategories(long userId) {
		// TODO Auto-generated method stub
		return  siteUserDAO.getUserJobCategories(userId);
	}

	@Override
	public List<UserJobSubCategoryMap> getUserJobSubCategories(long userId) {
		// TODO Auto-generated method stub
		return  siteUserDAO.getUserJobSubCategories(userId);
	}


	@Override
	public boolean isUsernameExist(String username) {
		// TODO Auto-generated method stub
		return siteUserDAO.isUsernameExist(username);
	}

	@Override
	public String getUserPhoneNo(long userId) {
		// TODO Auto-generated method stub
		return siteUserDAO.getUserPhoneNo(userId);
	}

	
	
}
