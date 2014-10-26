package com.homeninja.service;

import java.util.Set;

import com.homeninja.helping.entities.GeoLocation;
import com.homeninja.vo.City;
import com.homeninja.vo.State;

public interface GeoLocationService {
	public Set<State> getStates();
	public Set<City> getCitiesForState(long stateOrderId);
	public Set<City> getCities();
	public GeoLocation getGeoLocation(String address);

}
