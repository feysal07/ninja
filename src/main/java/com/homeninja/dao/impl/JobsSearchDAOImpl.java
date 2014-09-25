package com.homeninja.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Disjunction;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.homeninja.dao.JobsSearchDAO;
import com.homeninja.entities.JobCategory;
import com.homeninja.entities.Jobs;
import com.homeninja.entities.SiteUsers;
import com.homeninja.entities.UsersSearch;
import com.homeninja.vo.JobsSearchCriteria;
import com.homeninja.vo.JobsSearchResult;
import com.homeninja.vo.UsersSearchCriteria;
import com.homeninja.vo.UsersSearchResult;

@Transactional
@Service
public class JobsSearchDAOImpl implements JobsSearchDAO {
 
	@Resource
	private SessionFactory sessionFactory;


	
	@Override
	public JobsSearchResult searchJobsByCriteria(
			JobsSearchCriteria jobsSearchCriteria) {
		
		JobsSearchResult  jobsSearchResult = new JobsSearchResult();
		jobsSearchResult.setJobsSearchList(new ArrayList<com.homeninja.vo.JobsSearch>());
		try {

			Criteria criteriaForUser =	sessionFactory
					.getCurrentSession()
					.createCriteria("com.homeninja.entities.Jobs");
			if(jobsSearchCriteria != null && jobsSearchCriteria.getState() != null && jobsSearchCriteria.getState() != 0){
				criteriaForUser.add(Restrictions.eq("state", jobsSearchCriteria.getState()));
			}
			
			if(jobsSearchCriteria != null && jobsSearchCriteria.getCity() != null && jobsSearchCriteria.getCity() != 0){
				criteriaForUser.add(Restrictions.eq("city", jobsSearchCriteria.getCity()));
			}
			if(jobsSearchCriteria != null && jobsSearchCriteria.getPincode() != null && !jobsSearchCriteria.getPincode().isEmpty()){
				criteriaForUser.add(Restrictions.eq("pincode", jobsSearchCriteria.getPincode()));
			}
			if(jobsSearchCriteria != null &&
					jobsSearchCriteria.getJobCategoryList() != null
					&& jobsSearchCriteria.getJobCategoryList().size() != 0)
			{
				List<Integer> jobCategoryList = jobsSearchCriteria.getJobCategoryList();
				for (Integer jobCategory : jobCategoryList) {
					criteriaForUser.add(Restrictions.eq("jobCategory.id", jobCategory * 1L));
					 
				}
			}
 			/*Criteria criteriaSubCat =	sessionFactory
					.getCurrentSession()
					.createCriteria("com.homeninja.entities.JobsSubCategoryMap");
			List<Criterion> subCatCriterionList = new ArrayList<Criterion>();*/
			Disjunction dis = Restrictions.disjunction();
			if(jobsSearchCriteria != null &&
					jobsSearchCriteria.getJobSubCategoryList() != null
					&& jobsSearchCriteria.getJobSubCategoryList().size() != 0)
			{
				List<String> jobSubCategoryList = jobsSearchCriteria.getJobSubCategoryList();
				//criteriaForUser.add(Restrictions.in("JobsSubCategoryMap", jobSubCategoryList));
				for (String jobSubCategory : jobSubCategoryList) {
					//criteriaForUser.add(Restrictions.like("jobSubCategories", jobSubCategory));
					dis.add(Restrictions.like("jobSubCategories", jobSubCategory,MatchMode.ANYWHERE));
					//Criterion criterionSubCat = Restrictions.like("JobsSubCategoryMap.id", jobSubCategory.toString());
					
					/*dis.add(criterionSubCat);*/
				}
			}
			criteriaForUser.add(dis);
			/*LogicalExpression orExp = null;
			for ( int i = 0; i < subCatCriterionList.size() ; i++) {
				 orExp = Restrictions.or(orExp, subCatCriterionList.get(i));
			}
			criteriaForUser.add(orExp);*/
			
			criteriaForUser.setProjection(Projections.rowCount());
			Long count = (Long) criteriaForUser.uniqueResult();
			jobsSearchResult.setPageCount(count);	
			jobsSearchResult.setPageNumber(jobsSearchCriteria.getPageNumber());
			
			criteriaForUser.setProjection(null);
			
			criteriaForUser.addOrder(Order.asc("id"));
			criteriaForUser.setFirstResult((jobsSearchCriteria.getPageNumber() - 1 ) * 10);
			criteriaForUser.setMaxResults(jobsSearchCriteria.getPageSize());
			
			List<Object[]> results = criteriaForUser.list();

					
			if (results.size() > 0) {
				for (int i = 0; i < results.size(); i++) {
					com.homeninja.vo.JobsSearch SearchVO =
							new com.homeninja.vo.JobsSearch();
					BeanUtils.copyProperties(results.get(i)[1], SearchVO);
					jobsSearchResult.getJobsSearchList().add(SearchVO);
				}
				
				return jobsSearchResult;
			}
			return null;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}




	

}
