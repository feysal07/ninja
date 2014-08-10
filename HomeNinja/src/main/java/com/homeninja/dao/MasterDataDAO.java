package com.homeninja.dao;

import java.util.Set;

import com.homeninja.entities.SiteUsers;
import com.homeninja.vo.City;
import com.homeninja.vo.State;

public interface MasterDataDAO {

	public Set<State> getStates();

	public Set<City> getCitiesForState(long stateOrderId);
	
	public Set<City> getCities();
}
