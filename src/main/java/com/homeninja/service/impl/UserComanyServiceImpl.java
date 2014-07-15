package com.homeninja.service.impl;

import javax.annotation.Resource;

import com.homeninja.dao.UserCompanyDAO;
import com.homeninja.entities.UserCompanyMap;
import com.homeninja.service.UserCompanyService;

public class UserComanyServiceImpl implements UserCompanyService{
	@Resource 
	UserCompanyDAO userCompanyDAO;

	@Override
	public boolean saveOrUpdateUserCompanyMap(UserCompanyMap userCompanyMap) {
		// TODO Auto-generated method stub
		return userCompanyDAO.saveOrUpdateUserCompanyMap(userCompanyMap);
	}

}
