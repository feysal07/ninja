package com.homeninja.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.homeninja.entities.SiteUsers;
import com.homeninja.service.SiteUserService;
import com.homeninja.utils.Utils;
import com.homeninja.vo.UserInfo;

@Controller
@SessionAttributes("userInfo")
public class LoginController {

	//private Facebook facebook;

	/*@Resource
	private ConnectionRepository connectionRepository*/;

	@Resource
	public SiteUserService siteUserService;

	private static final Logger logger = LoggerFactory
			.getLogger(LoginController.class);

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		logger.info("inside login method");
		return "login";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(Model model) {
		ModelAndView mav = new ModelAndView();
		logger.info("inside login method");
		Map modelMap = model.asMap();
		if(modelMap.containsKey("userInfo")){
		 UserInfo userInfo = (UserInfo)modelMap.get("userInfo");
		 userInfo.setLoggedIn("false");
			
		}
	
		mav.setViewName("login");
		mav.addObject(model);
		return mav;
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
			UserInfo userInfo = new UserInfo();
			userInfo.setUserEmailId(user.getLoginEmail());
			userInfo.setUserName(user.getFirstName() + " " + user.getLastName());
			userInfo.setUserEmailId(user.getLoginEmail());
			userInfo.setLoggedIn("true");
			userInfo.setUserId(user.getUserId());
			model.addAttribute("userInfo",userInfo);
			return "home";
		} else {
			return "login-fail-usernoexist";
		}

	}

	/*@RequestMapping(value = "/doLoginUsingFacebook", method = RequestMethod.GET)
	public  String doLoginUsingFacebook( Model model) {
		logger.info("inside doLoginUsingFacebook method");
		Connection<Facebook> connection = connectionRepository
				.findPrimaryConnection(Facebook.class);
		facebook = connection != null ? connection.getApi()
				: new FacebookTemplate();
		if (!facebook.isAuthorized()) {
			return "facebook-login";
		}
		System.out.println(facebook.userOperations().getUserProfile());
		
		 * PagedList<FacebookProfile> friends = facebook.friendOperations()
		 * .getFriendProfiles(); model.addAttribute("friends", friends);
		 

		FacebookProfile facebookProfile = facebook.userOperations()
				.getUserProfile();
		String userFirstName = facebookProfile.getFirstName() ;
		String userLastName =  facebookProfile.getLastName();
		
		String userEmail = facebookProfile.getEmail();
		String userId = facebookProfile.getId();
		SiteUsers userDetail = new SiteUsers();
		//userDetail.setUserName(userName);
		userDetail.setFirstName(userFirstName);
		userDetail.setLastName(userLastName);
		userDetail.setLoginViaFB("Y");
		if (userEmail != null) {
			userDetail.setLoginEmail(userEmail);
			userDetail.setUserName(userEmail);
		} else {
			userDetail.setLoginEmail(userId);
			userDetail.setUserName(userId);
		}
		byte [] facebookProfileImage = facebook.userOperations().getUserProfileImage();
		userDetail.setProfilPic(facebookProfileImage);
		
		
		if (!siteUserService.isEmailExists(userDetail.getUserName())) {
			// good user
			if (!siteUserService.addUser(userDetail)) {
				return "register";
			}

		}
		
		UserInfo userInfo = new UserInfo();
		userInfo.setUserEmailId(userDetail.getLoginEmail());
		userInfo.setUserName(userDetail.getFirstName() + " " + userDetail.getLastName());
		userInfo.setUserEmailId(userDetail.getLoginEmail());
		userInfo.setLoggedIn("true");
		model.addAttribute("userInfo",userInfo);

		return "home";

	}*/
	
	

}
