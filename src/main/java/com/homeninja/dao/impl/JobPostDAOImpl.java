package com.homeninja.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.homeninja.dao.JobPostDAO;
import com.homeninja.entities.JobCategory;
import com.homeninja.entities.Jobs;
import com.homeninja.entities.JobsSubCategoryMap;
import com.homeninja.entities.MessageLimits;
import com.homeninja.helping.entities.JobSearchCriteria;
@Service
@Transactional
public class JobPostDAOImpl implements JobPostDAO {

	@Resource
	private SessionFactory sessionFactory;

	@Override
	public boolean saveOrUpdatePostedJob(Jobs jobPost) {

		
			try {
				this.sessionFactory.getCurrentSession().saveOrUpdate(jobPost);
				//this.sessionFactory.getCurrentSession().persist(jobPost);
				return true;
			} catch (HibernateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
		

	}

	@Override
	public List<Jobs> getAllPostedJobs() {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from Jobs");
		List<Jobs> allPostedJobs = query.list();
		return allPostedJobs;

	}

	@Override
	public boolean saveOrUpdateJobSubCatIds(JobsSubCategoryMap obj) {

		try {
			this.sessionFactory.getCurrentSession().saveOrUpdate(obj);
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	@Override
	public List<MessageLimits> getMessageLimits() {
		try {
			Query query =	this.sessionFactory.getCurrentSession().createQuery(
					"from MessageLimits");
			return query.list();
		} catch (Exception e) {
			return null;
		}
		
		
	}

	@Override
	public List<Jobs> getJobPostByCriteria(JobSearchCriteria jobSearchCriteria) {
		try {
			String[]  jobSearchCategories=null;
			Criteria criteriaForJob =	sessionFactory
					.getCurrentSession()
					.createCriteria("com.homeninja.entities.Jobs");
			
			if(jobSearchCriteria.getState() !=0){
				criteriaForJob.add(Restrictions.eq("state", jobSearchCriteria.getState()));
			}
			if(jobSearchCriteria.getCity() !=0){
				criteriaForJob.add(Restrictions.eq("city", jobSearchCriteria.getCity()));
			}
			if(jobSearchCriteria.getJobCategoryId() !=0){
				criteriaForJob.add(Restrictions.eq("jobCategoryId", jobSearchCriteria.getJobCategoryId()));
			}
			if(!jobSearchCriteria.getJobSubCategories().isEmpty()){
				jobSearchCategories=jobSearchCriteria.getJobSubCategories().split("-");
				for (String jsubCat : jobSearchCategories) {
					if(!jsubCat.isEmpty()){
					criteriaForJob.add(Restrictions.like("jobSubCategories", jsubCat,MatchMode.ANYWHERE));
					}
				}
				
			
			
			}
			
			return criteriaForJob.list();
		} catch (Exception e) {
			return null;
		}
		
	}

	@Override
	public boolean availableToSendMessage(int jobId) {
	try {
			Jobs job = (Jobs) this.sessionFactory.getCurrentSession().get(
					Jobs.class, jobId);
			//sent message according to the user criteria.
			if (job.getRequestLimit() >= job.getRequestCount()
					|| job.getRequestLimit()==0) {
				job.setRequestCount(job.getRequestCount() + 1);
				this.sessionFactory.getCurrentSession().saveOrUpdate(job);
				return true;
			}else{
				return false;
			}
			
		} catch (HibernateException e) {
			return false;
		}
		
	}

	@Override
	public List<Jobs> getAllPostedJobsByMe(long userId) {
		
		try {
			Query query = sessionFactory.getCurrentSession().createQuery(
					"from Jobs where postBy = :userId ");
			query.setParameter("userId", userId);
			return query.list();
		} catch (HibernateException e) {
			throw e;
		}
	
	
	}

	@Override
	public JobCategory getJobCategoryById(long jobCatId) {
		try{
			Query query = sessionFactory.getCurrentSession().createQuery(
					"from JobCategory where id = :id ");
			query.setParameter("id", jobCatId);
			return (JobCategory) query.list().get(0);
		} catch (Exception e) {
			return null;
		}
	}

}
