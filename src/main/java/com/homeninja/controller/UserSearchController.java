package com.homeninja.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

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
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.homeninja.entities.JobCategory;
import com.homeninja.entities.JobSubCategory;
import com.homeninja.entities.SiteUsers;
import com.homeninja.vo.UsersSearchCriteria;
import com.homeninja.vo.UsersSearchResult;
import com.homeninja.entities.UsersSearch;
import com.homeninja.service.UsersSearchService;

@Controller
public class UserSearchController  {
	
	


	@Resource
	UsersSearchService usersSearchService;

	private static final Logger logger = LoggerFactory
			.getLogger(RegisterController.class);

	@RequestMapping(value = "/searchUsers", method = RequestMethod.POST)
	public @ResponseBody
	Set<UsersSearch> searchUsersByCriteria(@RequestBody String myObject, ModelMap model) {
		logger.info("inside searchUsersByCriteria method");
/*		Gson gson = new Gson();

		UsersSearchCriteria usersSearchCriteria = gson.fromJson(myObject,
				UsersSearchCriteria.class);
		
		 Set<UsersSearch> usersSearchSet = usersSearchService.searchUsersByCriteria(usersSearchCriteria);
		 model.addAttribute("usersSearchSet", usersSearchSet);*/
		 return null;
	}
	
	
	@RequestMapping(value = "/usersearch", method = RequestMethod.GET)
	ModelAndView userSearch(Model model) throws IOException {
		ModelAndView mav = new ModelAndView("usersearch");
		SiteUsers siteUser = new SiteUsers();
		mav.addObject("siteUser", siteUser);
		return mav;
	}
	
	@RequestMapping(value = "/usersearchresult", method = RequestMethod.POST)
	
	String userSearchResult(ModelMap model, @RequestParam(value = "userTypeId") long userTypeId,
			 @RequestParam(value = "state") String state,
			 @RequestParam(value = "city") String city,
			 @RequestParam(value = "pincode") String pincode,
			 @RequestParam(value = "categories") String categories,
			 @RequestParam(value = "subcategories") String subcategories,
			 @RequestParam(value = "pageNumber") int pageNumber) throws IOException {
		logger.info("inside userSearchResult method");
		UsersSearchCriteria usersSearchCriteria = new UsersSearchCriteria();
		usersSearchCriteria.setUserTypeId(userTypeId);
		usersSearchCriteria.setState(state);
		usersSearchCriteria.setCity(city);
		usersSearchCriteria.setPincode(pincode);
		usersSearchCriteria.setPageNumber(pageNumber);
		usersSearchCriteria.setPageSize(10);
		List<String> jobCategoryList = new ArrayList<String>();
		List<String> jobSubCategoryList = new ArrayList<String>();
		if(categories != null && categories.length() > 0){
			jobCategoryList.add(categories);
		}
		if(subcategories != null && subcategories.length() > 0){
			jobSubCategoryList.add(subcategories);
		}
		
		
		usersSearchCriteria.setJobCategoryList(jobCategoryList);
		usersSearchCriteria.setJobSubCategoryList(jobSubCategoryList);
/*		Gson gson = new Gson();

		UsersSearchCriteria usersSearchCriteria = gson.fromJson(myObject,
				UsersSearchCriteria.class);*/
		
		 UsersSearchResult  usersSearchResult = usersSearchService.searchUsersByCriteria(usersSearchCriteria);
		
		model.addAttribute("usersSearchSet", usersSearchResult);
		return "usersearchresult";
	}




}
