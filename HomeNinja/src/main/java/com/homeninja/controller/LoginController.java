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

@Controller
public class LoginController {

	
   @Resource public SiteUserService siteUserService;
	 

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
		Gson gson=new Gson();
		SiteUsers userDetail=gson.fromJson(myObject,
		 SiteUsers.class);
		 
		  //check user exist in db or not SiteUsers user =
		SiteUsers user = siteUserService.validateLogin(userDetail.getUserName(),
		 userDetail.getPassword());
		 
		
		 if (user != null) { return "home"; } else { return "login"; }
		 
	}

}
