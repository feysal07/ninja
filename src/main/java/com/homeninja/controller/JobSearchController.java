package com.homeninja.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.homeninja.entities.JobCategory;
import com.homeninja.entities.JobSubCategory;
import com.homeninja.entities.Jobs;
import com.homeninja.entities.JobsSubCategoryMap;
import com.homeninja.entities.MessageLimits;
import com.homeninja.helping.entities.JobSearchCriteria;
import com.homeninja.service.GeoLocationService;
import com.homeninja.service.JobCategoryService;
import com.homeninja.service.JobSearchService;
import com.homeninja.vo.City;
import com.homeninja.vo.JobsSearchCriteria;
import com.homeninja.vo.JobsSearchResult;
import com.homeninja.vo.State;
import com.homeninja.vo.UserInfo;
import com.homeninja.vo.UsersSearchCriteria;
import com.homeninja.vo.UsersSearchResult;

@Controller
@SessionAttributes("userInfo")
public class JobSearchController {
	@Resource
	public JobSearchService jobSearchService;

	@Resource
	public JobCategoryService jobCategoryService;

	@Resource
	public GeoLocationService geoLocationService;

	private static final Logger logger = LoggerFactory
			.getLogger(JobSearchController.class);
	
	@ModelAttribute("stateHashMap")
	Map allStates() {
		Map <Long, String> states = new HashMap<Long, String>();
		Set statesSet = geoLocationService.getStates();
		Iterator stateSetItr = statesSet.iterator();
		while (stateSetItr.hasNext()){
			State state = (State)stateSetItr.next();
			states.put(state.getMasterDataId(), state.getName());
		}


		return states;
	}
	
	@ModelAttribute("cityHashMap")
	Map allCities() {
		Map <Long, String> cities = new HashMap<Long, String>();
		Set citiesSet = geoLocationService.getCities();
		Iterator stateSetItr = citiesSet.iterator();
		while (stateSetItr.hasNext()){
			City city = (City)stateSetItr.next();
			cities.put(city.getMasterDataId(), city.getName());
		}


		return cities;
	}

	@ModelAttribute("jobCatHashMap")
	Map getAllJobCat() {
		Map <Long, String> jobCategories = new HashMap<Long, String>();
		Set jobCategorySet = jobCategoryService.getJobCategory();
		Iterator jobCategorySetSetItr = jobCategorySet.iterator();
		while (jobCategorySetSetItr.hasNext()){
			JobCategory jobCategory = (JobCategory)jobCategorySetSetItr.next();
			jobCategories.put(jobCategory.getId(), jobCategory.getJobCat());
		}


		return jobCategories;
	}
	
	@ModelAttribute("jobSubCatHashMap")
	Map getAllJobSubCat() {
		Map <Long, String> jobSubCategories = new HashMap<Long, String>();
		Set jobSubCategorySet = jobCategoryService.getJobSubCategory();
		Iterator jobSubCategorySetSetItr = jobSubCategorySet.iterator();
		while (jobSubCategorySetSetItr.hasNext()){
			JobSubCategory jobSubCategory = (JobSubCategory)jobSubCategorySetSetItr.next();
			jobSubCategories.put(jobSubCategory.getId(), jobSubCategory.getJobSubCat());
		}


		return jobSubCategories;
	}

	// private JobPostDAO jobPostDao;
	@RequestMapping(value = "/jobSearch", method = RequestMethod.GET)
	public String jobSearch(Model model) throws IOException {
		logger.debug("inside Register Method");
		/*Map modelMap = model.asMap();
		
		if(!modelMap.containsKey("userInfo")){
			return "login";
		}
		
		if(modelMap.containsKey("userInfo")){
			UserInfo userInfo = (UserInfo)modelMap.get("userInfo");
			if(userInfo.getLoggedIn() == null){
				return "login";
			}
			else if(!userInfo.getLoggedIn().equalsIgnoreCase("true")){
				return "login";
			}
		}*/
		return "jobsearch";
	}

	@RequestMapping(value = "/doSearchJob", method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody String doSearchJob(@RequestBody String myObject) throws IOException {
		logger.debug("inside Register Method");
		return "jobsearch";
	}
	
	@RequestMapping(value = "/jobsearchresult", method = RequestMethod.POST)
	String userSearchResult(ModelMap model,
			@RequestParam(value = "state", required=false) Integer state,
			@RequestParam(value = "city", required=false) Integer city,
			@RequestParam(value = "jobCategoryId" , required=false) Integer categories,
			@RequestParam(value = "jobSubCatIds[]", required=false) Integer[] subcategories,
			@RequestParam(value = "pageNumber", required=false) int pageNumber)
			throws IOException {
		logger.info("inside jobSearchResult method");
		
		JobsSearchCriteria jobsSearchCriteria = new JobsSearchCriteria();
		jobsSearchCriteria.setState(state);
		jobsSearchCriteria.setCity(city);
		jobsSearchCriteria.setPageNumber(pageNumber);
		jobsSearchCriteria.setPageSize(10);
		List<Integer> jobCategoryList = new ArrayList<Integer>();
		List<Integer> jobSubCategoryList = new ArrayList<Integer>();
		if(categories != null){
			jobCategoryList.add(categories);
		}
		
		if (subcategories != null && subcategories.length > 0) {
			for(int i = 0; i < subcategories.length ; i++){
				jobSubCategoryList.add(subcategories[i]);
			}
			
		}
		
		jobsSearchCriteria.setJobCategoryList(jobCategoryList);
		jobsSearchCriteria.setJobSubCategoryList(jobSubCategoryList);

		JobsSearchResult jobsSearchResult = jobSearchService
				.searchJobsByCriteria(jobsSearchCriteria);
		if (jobsSearchResult == null){
			jobsSearchResult = new JobsSearchResult();
		}

		model.addAttribute("jobsSearchSet", jobsSearchResult);
		return "jobsearchresult";
	}
	
	
}
