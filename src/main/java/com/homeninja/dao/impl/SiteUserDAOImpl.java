package com.homeninja.dao.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Example;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.homeninja.dao.SiteUserDAO;
import com.homeninja.entities.SiteUsers;
import com.homeninja.entities.UserJobCategoryMap;
import com.homeninja.entities.UserType;
import com.homeninja.vo.UploadedFile;

@Service
@Transactional
public class SiteUserDAOImpl implements SiteUserDAO {

	@Resource
	private SessionFactory sessionFactory;

	@Override
	public boolean addUser(SiteUsers user) {
		try {
			this.sessionFactory.getCurrentSession().save(user);
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	@Override
	public boolean updateUser(SiteUsers user) {
		try {
			this.sessionFactory.getCurrentSession().update(user);
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	@Override
	public SiteUsers validateLogin(String username, String password) {
		SiteUsers user = null;
		try {
			Query query = sessionFactory.getCurrentSession().createQuery(
					"from SiteUsers where username = :username ");
			query.setParameter("username", username);
			List list = query.list();
			if (list.size() > 0) {
				user = (SiteUsers) list.get(0);
			}

			if (user != null && user.getPassword() != null
					&& !user.getPassword().equals(password)) {
				user = null;
			}
			return user;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean isEmailExists(String userName) {
		try {

			Query query = sessionFactory.getCurrentSession().createQuery(
					"from SiteUsers where username = :username ");
			query.setParameter("username", userName);
			List list = query.list();
			if (list.size() > 0) {
				return true;
			}
			return false;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public SiteUsers findbyExample(SiteUsers siteUsers) {
		try {

			List<SiteUsers> results = (List<SiteUsers>) sessionFactory
					.getCurrentSession()
					.createCriteria("com.homeninja.entities.SiteUsers")
					.add(Example.create(siteUsers)).list();
			if (results.size() > 0) {
				return results.get(0);
			}
			return null;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Set<UserType> getUserType() {
		Set<UserType> userTypeSet = new HashSet<UserType>();
		Query getUserType = sessionFactory.getCurrentSession().createQuery(
				"from UserType");
		List<UserType> userTypeList = getUserType.list();
		for (UserType userType : userTypeList) {
			userTypeSet.add(userType);
		}
		return userTypeSet;
	}
	
 	@Override
	public SiteUsers getSiteUsersById(SiteUsers siteUsers) {
		try {

			Query query = sessionFactory.getCurrentSession().createQuery(
					"from SiteUsers where userId=:userId");
			query.setParameter("userId", siteUsers.getUserId());
			List<SiteUsers> userSiteUsersList = query.list();
			if (userSiteUsersList.size() > 0) {
				return userSiteUsersList.get(0);
			}
			return null;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

}
