package com.homeninja.dao.impl;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;

import com.homeninja.dao.UserCompanyDAO;
import com.homeninja.entities.UserCompanyMap;

public class UserCompanyDAOImpl implements UserCompanyDAO{
	@Resource
	private SessionFactory sessionFactory;


	@Override
	public boolean saveOrUpdateUserCompanyMap(UserCompanyMap userCompanyMap) {
		try {
			this.sessionFactory.getCurrentSession().saveOrUpdate(
					userCompanyMap);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
