package com.homeninja.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

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
import org.springframework.web.servlet.ModelAndView;

import com.homeninja.entities.JobCategory;
import com.homeninja.entities.JobSubCategory;
import com.homeninja.entities.SiteUsers;
import com.homeninja.entities.UsersSearch;
import com.homeninja.service.GeoLocationService;
import com.homeninja.service.JobCategoryService;
import com.homeninja.service.UsersSearchService;
import com.homeninja.vo.City;
import com.homeninja.vo.State;
import com.homeninja.vo.UserInfo;
import com.homeninja.vo.UsersSearchCriteria;
import com.homeninja.vo.UsersSearchResult;

@Controller
@SessionAttributes("userInfo")
public class UserSearchController {

	@Resource
	UsersSearchService usersSearchService;

	@Resource
	public GeoLocationService geoLocationService;
	
	@Resource
	public JobCategoryService jobCategoryService;

	private static final Logger logger = LoggerFactory
			.getLogger(RegisterController.class);

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
	
	@RequestMapping(value = "/searchUsers", method = RequestMethod.POST)
	public @ResponseBody
	Set<UsersSearch> searchUsersByCriteria(@RequestBody String myObject,
			ModelMap model) {
		logger.info("inside searchUsersByCriteria method");
		/*
		 * Gson gson = new Gson();
		 * 
		 * UsersSearchCriteria usersSearchCriteria = gson.fromJson(myObject,
		 * UsersSearchCriteria.class);
		 * 
		 * Set<UsersSearch> usersSearchSet =
		 * usersSearchService.searchUsersByCriteria(usersSearchCriteria);
		 * model.addAttribute("usersSearchSet", usersSearchSet);
		 */
		return null;
	}

	@RequestMapping(value = "/usersearch", method = RequestMethod.GET)
	ModelAndView userSearch(Model model) throws IOException {
		ModelAndView mav = new ModelAndView("usersearch");
		SiteUsers siteUser = new SiteUsers();
		mav.addObject("siteUser", siteUser);
		
		Map modelMap = model.asMap();
		
		/*if(!modelMap.containsKey("userInfo")){
			mav.setViewName("login");
		}
		
		if(modelMap.containsKey("userInfo")){
			UserInfo userInfo = (UserInfo)modelMap.get("userInfo");
			if(userInfo.getLoggedIn() == null){
				mav.setViewName("login");
			}
			else if(!userInfo.getLoggedIn().equalsIgnoreCase("true")){
				mav.setViewName("login");
			}
		}*/
		return mav;
	}

	@RequestMapping(value = "/usersearchresult", method = RequestMethod.POST)
	String userSearchResult(ModelMap model,
			@RequestParam(value = "userTypeId",required=false,defaultValue="2") String userTypeIdString,
			@RequestParam(value = "state",required=false) Long state,
			@RequestParam(value = "city",required=false) Long city,
			@RequestParam(value = "pincode",required=false) String pincode,
			@RequestParam(value = "categories",required=false) String categories,
			@RequestParam(value = "subcategories",required=false) String subcategories,
			@RequestParam(value = "pageNumber",required=false) int pageNumber)
			throws IOException {
		logger.info("inside userSearchResult method");
		Long userTypeId = 0L;
		if(userTypeIdString != null && userTypeIdString != ""){
			userTypeId = Long.parseLong(userTypeIdString);
		}	
		
		UsersSearchCriteria usersSearchCriteria = new UsersSearchCriteria();
		usersSearchCriteria.setUserTypeId(userTypeId);	
		usersSearchCriteria.setState(state);
		usersSearchCriteria.setCity(city);
		usersSearchCriteria.setPincode(pincode);
		usersSearchCriteria.setPageNumber(pageNumber);
		usersSearchCriteria.setPageSize(10);
		List<String> jobCategoryList = new ArrayList<String>();
		List<String> jobSubCategoryList = new ArrayList<String>();
		if (!categories.equals("Select") && categories != null && categories.length() > 0) {
			jobCategoryList.add(categories);
		}
		if (!subcategories.equals("Select") && subcategories != null && subcategories.length() > 0) {
			jobSubCategoryList.add(subcategories);
		}

		usersSearchCriteria.setJobCategoryList(jobCategoryList);
		usersSearchCriteria.setJobSubCategoryList(jobSubCategoryList);
		/*
		 * Gson gson = new Gson();
		 * 
		 * UsersSearchCriteria usersSearchCriteria = gson.fromJson(myObject,
		 * UsersSearchCriteria.class);
		 */

		UsersSearchResult usersSearchResult = usersSearchService
				.searchUsersByCriteria(usersSearchCriteria);
		if (usersSearchResult == null){
			usersSearchResult = new UsersSearchResult();
		}

		model.addAttribute("usersSearchSet", usersSearchResult);
		return "usersearchresult";
	}

}
