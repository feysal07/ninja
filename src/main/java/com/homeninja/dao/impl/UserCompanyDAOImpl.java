package com.homeninja.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.homeninja.dao.UserCompanyDAO;
import com.homeninja.entities.SiteUsers;
import com.homeninja.entities.UserCompanyMap;
import com.homeninja.entities.UserType;

@Service
@Transactional
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
	
	@Override
	public UserCompanyMap getUserCompanyByUserId(SiteUsers siteUsers){
		UserCompanyMap userCompanyMap = new UserCompanyMap();
		Query getUserCompany = sessionFactory.getCurrentSession().createQuery(
				"from UserCompanyMap where userId = :id");
		getUserCompany.setParameter("id", siteUsers.getUserId());
		List<UserCompanyMap> userCompanyList = getUserCompany.list();
		if(userCompanyList != null && userCompanyList.size() > 0){
			userCompanyMap = userCompanyList.get(0);
		}
		return userCompanyMap;
	}

}
