package com.homeninja.service.impl;

import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.homeninja.dao.MasterDataDAO;
import com.homeninja.dao.SiteUserDAO;
import com.homeninja.service.GeoLocationService;
import com.homeninja.vo.City;
import com.homeninja.vo.State;

@Service
public class GeoLocationServiceImpl implements GeoLocationService {
	@Resource MasterDataDAO masterDataDAO;


	@Override
	public Set<State> getStates() {
		// TODO Auto-generated method stub
		return masterDataDAO.getStates();
	}
	
	@Override
	public Set<City> getCitiesForState(long stateOrderId) {
		// TODO Auto-generated method stub
		return masterDataDAO.getCitiesForState(stateOrderId);
	}
	
	@Override
	public Set<City> getCities() {
		// TODO Auto-generated method stub
		return masterDataDAO.getCities();
	}

}
