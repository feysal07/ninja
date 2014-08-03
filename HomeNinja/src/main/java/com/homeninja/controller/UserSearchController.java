package com.homeninja.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.homeninja.entities.SiteUsers;
import com.homeninja.vo.UsersSearchCriteria;
import com.homeninja.entities.UsersSearch;
import com.homeninja.service.UsersSearchService;

@Controller
public class UserSearchController {

	@Resource
	UsersSearchService usersSearchService;

	private static final Logger logger = LoggerFactory
			.getLogger(RegisterController.class);

	@RequestMapping(value = "/searchUsers", method = RequestMethod.GET)
	public @ResponseBody
	String searchUsersByCriteria(@RequestBody String myObject) {
		logger.info("inside searchUsersByCriteria method");
		Gson gson = new Gson();

		UsersSearchCriteria usersSearchCriteria = gson.fromJson(myObject,
				UsersSearchCriteria.class);
		
		usersSearchCriteria = new UsersSearchCriteria();
		usersSearchCriteria.setPincode("476001");
		List<String> jobCategories = new ArrayList<String>();
		jobCategories.add("Air-conditioning Specialist");
		usersSearchCriteria.setJobCategoryList(jobCategories);
		
		List<String> jobSubCategories = new ArrayList<String>();
		jobSubCategories.add("Contract Maintenance");
		usersSearchCriteria.setJobSubCategoryList(jobSubCategories);

		 Set<UsersSearch> usersSearchSet = usersSearchService.searchUsersByCriteria(usersSearchCriteria);
		return "home";
	}
	
	
	@RequestMapping(value = "/usersearch", method = RequestMethod.GET)
	ModelAndView Register(Model model) throws IOException {
		ModelAndView mav = new ModelAndView("usersearch");
		SiteUsers siteUser = new SiteUsers();
		mav.addObject("siteUser", siteUser);
		return mav;
	}

}
