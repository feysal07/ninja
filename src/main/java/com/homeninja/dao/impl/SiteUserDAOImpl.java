package com.homeninja.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.homeninja.dao.SiteUserDAO;
import com.homeninja.entities.SiteUsers;

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
}
