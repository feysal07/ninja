package com.homeninja.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.homeninja.dao.UsersSearchDAO;
import com.homeninja.entities.SiteUsers;
import com.homeninja.entities.UsersSearch;
import com.homeninja.vo.UsersSearchCriteria;

@Transactional
@Service
public class UsersSearchDAOImpl implements UsersSearchDAO {

	@Resource
	private SessionFactory sessionFactory;

	@Override
	public boolean addUsersSearch(UsersSearch usersSearch) {
		try {
			this.sessionFactory.getCurrentSession().save(usersSearch);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean updateUsersSearch(UsersSearch usersSearch) {
		try {
			this.sessionFactory.getCurrentSession().update(usersSearch);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public List<UsersSearch> searchUsersByCriteria(UsersSearchCriteria usersSearchCriteria) {
		try {

					
			Criteria criteriaForUser =	sessionFactory
					.getCurrentSession()
					.createCriteria("com.homeninja.entities.UsersSearch");
			if(usersSearchCriteria != null && usersSearchCriteria.getState() != null){
				criteriaForUser.add(Restrictions.like("state", usersSearchCriteria.getState()));
			}
			
			if(usersSearchCriteria != null && usersSearchCriteria.getCity() != null){
				criteriaForUser.add(Restrictions.like("city", usersSearchCriteria.getCity(),MatchMode.START));
			}
			if(usersSearchCriteria != null && usersSearchCriteria.getPincode() != null){
				criteriaForUser.add(Restrictions.like("pincode", usersSearchCriteria.getPincode(),MatchMode.START));
			}
			if(usersSearchCriteria != null &&
					usersSearchCriteria.getJobCategoryList() != null
					&& usersSearchCriteria.getJobCategoryList().size() != 0)
			{
				List<String> jobCategoryList = usersSearchCriteria.getJobCategoryList();
				for (String jobCategory : jobCategoryList) {
					criteriaForUser.add(Restrictions.like("jobCategories", jobCategory,MatchMode.ANYWHERE));
				}
			}
			
			if(usersSearchCriteria != null &&
					usersSearchCriteria.getJobSubCategoryList() != null
					&& usersSearchCriteria.getJobSubCategoryList().size() != 0)
			{
				List<String> jobSubCategoryList = usersSearchCriteria.getJobSubCategoryList();
				for (String jobSubCategory : jobSubCategoryList) {
					criteriaForUser.add(Restrictions.like("jobSubCategories", jobSubCategory,MatchMode.ANYWHERE));
				}
			}
			
			if(usersSearchCriteria != null && usersSearchCriteria.getUserTypeId() != 0){
				criteriaForUser.add(Restrictions.eq("pincode", usersSearchCriteria.getUserTypeId()));
			}
					
			List<UsersSearch> results = criteriaForUser.list();
					
			if (results.size() > 0) {
				return results;
			}
			return null;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

}
