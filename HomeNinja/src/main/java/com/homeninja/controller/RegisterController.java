package com.homeninja.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.homeninja.entities.SiteUsers;
import com.homeninja.service.SiteUserService;
import com.homeninja.utils.Utils;

@Controller
public class RegisterController {

	@Resource
	public SiteUserService siteUserService;

	/*
	 * @Autowired public SessionService sessionService;
	 */
	private static final Logger logger = LoggerFactory
			.getLogger(RegisterController.class);

	@RequestMapping(value = "/Register", method = RequestMethod.GET)
	protected String Register(Model model) throws IOException {
		return "register";
	}

	// handle the signup post
	@RequestMapping(value = "/doRegister", method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody
	String doRegister(HttpServletRequest req, @RequestBody String myObject,
			Model model) throws IOException {

		logger.info("inside dologin method");
		Gson gson = new Gson();
		
		SiteUsers registerUser = gson.fromJson(myObject, SiteUsers.class);
		
		String email = registerUser.getLoginEmail();
		if (email == null || email.length() == 0) {
			return "register-emailnotentered";
		}
		
		if (registerUser.getPassword() == null
				|| registerUser.getPassword().length() == 0) {
			return "register-passwordnotentered";
		}
		registerUser
				.setPassword(Utils.md5Encryption(registerUser.getPassword()));


		
		if (!siteUserService.isEmailExists(email)) {
			// good user
			if (!siteUserService.addUser(registerUser)) {
				return "register";
			}

		}
		if (siteUserService.isEmailExists(email)) {
			return "register-alreadyexist";
		}
		return "home";
	}
}