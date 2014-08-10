package com.homeninja.dao.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.homeninja.dao.JobCategoryDAO;
import com.homeninja.entities.JobCategory;
import com.homeninja.entities.JobSubCategory;
import com.homeninja.entities.MasterDataValue;
import com.homeninja.entities.UserJobCategoryMap;
import com.homeninja.entities.UserJobSubCategoryMap;
import com.homeninja.vo.State;

@Service
@Transactional
public class JobCategoryDAOImpl implements JobCategoryDAO {

	@Resource
	private SessionFactory sessionFactory;

	@Override
	public Set<JobCategory> getJobCategory() {
		try {
			Set<JobCategory> jobCategorySet = new HashSet<JobCategory>();

			Query query = sessionFactory.getCurrentSession().createQuery(
					"from JobCategory jc order by jc.id");
			List<JobCategory> jobCategorylist = query.list();
			for (JobCategory jobCategory : jobCategorylist) {
				jobCategorySet.add(jobCategory);
			}
			return jobCategorySet;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Set<JobSubCategory> getJobSubCategory(JobCategory jobCategory) {
		try {
			Set<JobSubCategory> jobSubCategorySet = new HashSet<JobSubCategory>();

			Query query = sessionFactory.getCurrentSession().createQuery(
			// "from JobSubCategory where jobCatId = :jobCatId");
					"from JobSubCategory");
			// query.setParameter("jobCatId", jobCategory.getId());
			List<JobSubCategory> jobSubCategoryList = query.list();
			for (JobSubCategory jobSubCategory : jobSubCategoryList) {
				jobSubCategorySet.add(jobSubCategory);
			}
			return jobSubCategorySet;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public Set<JobSubCategory> getJobSubCategory() {
		try {
			Set<JobSubCategory> jobSubCategorySet = new HashSet<JobSubCategory>();

			Query query = sessionFactory.getCurrentSession().createQuery(
			// "from JobSubCategory where jobCatId = :jobCatId");
					"from JobSubCategory");
			List<JobSubCategory> jobSubCategoryList = query.list();
			for (JobSubCategory jobSubCategory : jobSubCategoryList) {
				jobSubCategorySet.add(jobSubCategory);
			}
			return jobSubCategorySet;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean saveUserJobCategory(UserJobCategoryMap userJobCategoryMap) {
		try {
			this.sessionFactory.getCurrentSession().saveOrUpdate(
					userJobCategoryMap);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean saveUserJobSubCategory(
			UserJobSubCategoryMap userJobSubCategoryMap) {
		try {
			this.sessionFactory.getCurrentSession().saveOrUpdate(
					userJobSubCategoryMap);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public Set<UserJobCategoryMap> getUserJobCategoryMap(long userId) {
		try {
			Set<UserJobCategoryMap> jobUserJobCategoryMapSet = new HashSet<UserJobCategoryMap>();

			Query query = sessionFactory.getCurrentSession().createQuery(
			// "from JobSubCategory where jobCatId = :jobCatId");
					"from UserJobCategoryMap where userId=:userId");
			query.setParameter("userId", userId);
			List<UserJobCategoryMap> userJobCategoryMapList = query.list();
			for (UserJobCategoryMap userJobCategoryMap : userJobCategoryMapList) {
				jobUserJobCategoryMapSet.add(userJobCategoryMap);
			}
			return jobUserJobCategoryMapSet;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Set<UserJobSubCategoryMap> getUserJobSubCategoryMap(long userId) {
		try {
			Set<UserJobSubCategoryMap> jobUserJobSubCategoryMapSet = new HashSet<UserJobSubCategoryMap>();

			Query query = sessionFactory.getCurrentSession().createQuery(
			// "from JobSubCategory where jobCatId = :jobCatId");
					"from UserJobSubCategoryMap where userId=:userId");
			query.setParameter("userId", userId);
			List<UserJobSubCategoryMap> userJobSubCategoryMapList = query
					.list();
			for (UserJobSubCategoryMap userJobSubCategoryMap : userJobSubCategoryMapList) {
				jobUserJobSubCategoryMapSet.add(userJobSubCategoryMap);
			}
			return jobUserJobSubCategoryMapSet;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean removeJobCategory(UserJobCategoryMap userJobCategoryMap) {
		try {
			this.sessionFactory.getCurrentSession().delete(userJobCategoryMap);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean removeJobSubCategory(
			UserJobSubCategoryMap userJobsubCategoryMap) {
		try {
			this.sessionFactory.getCurrentSession().delete(
					userJobsubCategoryMap);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
