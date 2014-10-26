package com.homeninja.service.impl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.commons.httpclient.util.URIUtil;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.homeninja.dao.MasterDataDAO;
import com.homeninja.helping.entities.GeoLocation;
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

	@Override
	public GeoLocation getGeoLocation(String address) {
		GeoLocation geoLocation=new GeoLocation();
		try {
	        URL url = new URL("http://maps.googleapis.com/maps/api/geocode/json?address="
	                        + URIUtil.encodeQuery(address) + "&sensor=true");
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Accept", "application/json");

	        if (conn.getResponseCode() != 200) {
	            throw new RuntimeException("Failed : HTTP error code : " + conn.getResponseCode());
	        }
	        BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));

	        String output = "";
	        StringBuilder locationJson=new StringBuilder();
	        int i=0;
	       while ((output = br.readLine()) != null) {
	            if(output.contains("location") && i==0){
	        		locationJson.append("{");
	        		i++;
	        		continue;
	        	}
	        	if(i>0 && i<=3){
	        		locationJson.append(output);
	        		i++;
	        		if(i>3)
	        		break;
	        	}
	        	
	        }
	       String location= locationJson.toString();
	       int index = location.lastIndexOf(",");
	       location=location.substring(0,index);
	       Gson gson=new Gson();
	       geoLocation=gson.fromJson(location, GeoLocation.class);
	       conn.disconnect();
	    } catch (MalformedURLException e) {
	        e.printStackTrace();
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
		return geoLocation;
	}

	public static void main(String[] args) {
		GeoLocationServiceImpl obj=new GeoLocationServiceImpl();
		obj.getGeoLocation("BTM 2nd stage bangalore");
	}
}
