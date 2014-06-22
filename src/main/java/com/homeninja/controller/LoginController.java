package com.homeninja.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.homeninja.entities.SiteUsers;
import com.homeninja.service.SiteUserService;
import com.homeninja.utils.Utils;

@Controller
public class LoginController {

	@Resource
	public SiteUserService siteUserService;

	private static final Logger logger = LoggerFactory
			.getLogger(LoginController.class);

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		logger.info("inside login method");
		return "login";
	}

	@RequestMapping(value = "/doLogin", method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody
	String dologin(HttpServletResponse response, @RequestBody String myObject) {
		logger.info("inside dologin method");
		Gson gson = new Gson();
		SiteUsers userDetail = gson.fromJson(myObject, SiteUsers.class);
		if (userDetail == null){
			return "login-fail-nouser";			
		}
		else if(userDetail.getUserName() == null || userDetail.getUserName().trim().length() == 0){
			return "login-fail-nouser";	
		}
		else if(userDetail.getPassword() == null || userDetail.getPassword().trim().length() == 0){
			return "login-fail-nopassword";	
		}
		
		// check user exist in db or not SiteUsers user =
		SiteUsers user = siteUserService.validateLogin(
				userDetail.getUserName(),
				Utils.md5Encryption((userDetail.getPassword())));

		if (user != null) {
			return "home";
		} else {
			return "login-fail-usernoexist";
		}

	}

}