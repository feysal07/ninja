package com.homeninja.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.homeninja.entities.SiteUsers;
import com.homeninja.service.EmailService;
import com.homeninja.service.SiteUserService;

@Controller
public class ForgotPasswordController {

	@Resource
	SiteUserService siteUserService;
	
	@Resource
	EmailService emailService;

	private static final Logger logger = LoggerFactory
			.getLogger(LoginController.class);

	@RequestMapping(value = "/forgotPassword", method = RequestMethod.GET)
	public String forgotPassword() {
		logger.info("inside forgotPassword method");
		return "forgotPassword";
	}

	@RequestMapping(value = "/sendForgotPassword", method = RequestMethod.POST, consumes = "application/json")
	
	@ResponseBody
	public String sendForgotPassword(@RequestBody String myObject) {
		logger.info("inside sendForgotPassword method");
		Gson gson = new Gson();
		SiteUsers userDetail = gson.fromJson(myObject, SiteUsers.class);

		if (!siteUserService.isEmailExists(userDetail.getUserName())) {
			return "user-doesnot-exist";
		}
		

		
		emailService.sendEmail(userDetail);
		return "home";
	}
}
