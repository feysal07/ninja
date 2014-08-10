package com.homeninja.controller;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.social.connect.Connection;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.FacebookProfile;
import org.springframework.social.facebook.api.PagedList;
import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.social.facebook.connect.FacebookConnectionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.homeninja.entities.SiteUsers;
import com.homeninja.service.SiteUserService;
import com.homeninja.utils.Utils;

@Controller
@SessionAttributes("userInfo")
public class LoginController {

	private Facebook facebook;

	@Resource
	private ConnectionRepository connectionRepository;

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
	String dologin(HttpServletResponse response, @RequestBody String myObject, Model model) {
		logger.info("inside dologin method");
		model.addAttribute("userInfo", "userDetail");
		Gson gson = new Gson();
		SiteUsers userDetail = gson.fromJson(myObject, SiteUsers.class);
		if (userDetail == null) {
			return "login-fail-nouser";
		} else if (userDetail.getUserName() == null
				|| userDetail.getUserName().trim().length() == 0) {
			return "login-fail-nouser";
		} else if (userDetail.getPassword() == null
				|| userDetail.getPassword().trim().length() == 0) {
			return "login-fail-nopassword";
		}

		// check user exist in db or not SiteUsers user =
		SiteUsers user = siteUserService.validateLogin(
				userDetail.getUserName(),
				Utils.md5Encryption((userDetail.getPassword())));

		if (user != null) {
			model.addAttribute("userInfo", "userDetail");
			return "home";
		} else {
			return "login-fail-usernoexist";
		}

	}

	@RequestMapping(value = "/doLoginUsingFacebook", method = RequestMethod.GET)
	public  @ResponseBody String doLoginUsingFacebook() {
		logger.info("inside doLoginUsingFacebook method");
		Connection<Facebook> connection = connectionRepository
				.findPrimaryConnection(Facebook.class);
		facebook = connection != null ? connection.getApi()
				: new FacebookTemplate();
		if (!facebook.isAuthorized()) {
			return "facebook-login";
		}
		System.out.println(facebook.userOperations().getUserProfile());
		/*
		 * PagedList<FacebookProfile> friends = facebook.friendOperations()
		 * .getFriendProfiles(); model.addAttribute("friends", friends);
		 */

		FacebookProfile facebookProfile = facebook.userOperations()
				.getUserProfile();
		String userName = facebookProfile.getFirstName() + " "
				+ facebookProfile.getLastName();
		String userEmail = facebookProfile.getEmail();
		String userId = facebookProfile.getId();
		SiteUsers userDetail = new SiteUsers();
		userDetail.setUserName(userName);
		userDetail.setLoginViaFB("Y");
		if (userEmail != null) {
			userDetail.setLoginEmail(userEmail);
			userDetail.setUserName(userEmail);
		} else {
			userDetail.setLoginEmail(userId);
			userDetail.setUserName(userId);
		}

		if (!siteUserService.isEmailExists(userDetail.getUserName())) {
			// good user
			if (!siteUserService.addUser(userDetail)) {
				return "register";
			}

		}

		return "home";

	}
}
