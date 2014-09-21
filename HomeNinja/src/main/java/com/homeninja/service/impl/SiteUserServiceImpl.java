package com.homeninja.service.impl;

import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.homeninja.dao.SiteUserDAO;
import com.homeninja.entities.Address;
import com.homeninja.entities.SiteUsers;
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
	public boolean isEmailExists(String userName) {
		// TODO Auto-generated method stub
		return siteUserDAO.isEmailExists(userName);
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

	
	
}
