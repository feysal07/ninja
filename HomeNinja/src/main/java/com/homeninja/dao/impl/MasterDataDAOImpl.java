package com.homeninja.dao.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.homeninja.dao.MasterDataDAO;
import com.homeninja.entities.MasterDataValue;
import com.homeninja.entities.SiteUsers;
import com.homeninja.vo.City;
import com.homeninja.vo.State;

@Service
@Transactional
public class MasterDataDAOImpl implements MasterDataDAO{

	@Resource
	private SessionFactory sessionFactory;
	
	@Override
	public Set<State> getStates() {
		try {
			Set<State> stateSet = new HashSet<State>();
			
			Query query = sessionFactory.getCurrentSession().createQuery(
					"from MasterDataValue where mnemonic = 'STATES_NAME'");
			List list = query.list();
			for (Object object : list) {
				MasterDataValue masterDataValue = (MasterDataValue)object;
				State state = new  State();
				state.setName(masterDataValue.getValue());
				state.setMasterDataId(masterDataValue.getMasterDataId());
				state.setStateOrderId(masterDataValue.getOrderId());
				stateSet.add(state);
				
			}
			return stateSet;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	
	}
	
	@Override
	public Set<City> getCitiesForState(long stateOrderId){
		try{
			Set<City> citySet = new HashSet<City>();
			List list =  sessionFactory.getCurrentSession().createCriteria("com.homeninja.entities.MasterDataValue").
			 add(Restrictions.eq("mnemonic", "CITY_NAME")).
			 add(Restrictions.eq("orderId", stateOrderId)).list();
			
			for (Object object : list) {
				MasterDataValue masterDataValue = (MasterDataValue)object;
				City city = new  City();
				city.setName(masterDataValue.getValue());
				city.setMasterDataId(masterDataValue.getMasterDataId());
				citySet.add(city);
				
			}
			return citySet;
		}catch(HibernateException e){
			e.printStackTrace();
			return null;
		}
		
	}
	
	
	@Override
	public Set<City> getCities(){
		try{
			Set<City> citySet = new HashSet<City>();
			List list =  sessionFactory.getCurrentSession().createCriteria("com.homeninja.entities.MasterDataValue").
			 add(Restrictions.eq("mnemonic", "CITY_NAME"))
			 .list();
			
			for (Object object : list) {
				MasterDataValue masterDataValue = (MasterDataValue)object;
				City city = new  City();
				city.setName(masterDataValue.getValue());
				city.setMasterDataId(masterDataValue.getMasterDataId());
				citySet.add(city);
				
			}
			return citySet;
		}catch(HibernateException e){
			e.printStackTrace();
			return null;
		}
		
	}

}
