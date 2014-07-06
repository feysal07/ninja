package com.homeninja.service;

import java.util.Set;

import com.homeninja.vo.City;
import com.homeninja.vo.State;

public interface GeoLocationService {
	public Set<State> getStates();
	public Set<City> getCitiesForState(long stateOrderId);

}
