package com.homeninja.controller;

import java.io.IOException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.homeninja.entities.Address;
import com.homeninja.entities.SiteUsers;
import com.homeninja.service.GeoLocationService;
import com.homeninja.service.SiteUserService;
import com.homeninja.utils.Utils;
import com.homeninja.vo.City;
import com.homeninja.vo.State;
import com.homeninja.vo.UploadedFile;

@Controller
public class RegisterController {

	UploadedFile ufile;
	
	private long siteUserId;

	@Resource
	public SiteUserService siteUserService;
	
	@Resource
	public GeoLocationService geoLocationService;

	/*
	 * @Autowired public SessionService sessionService;
	 */
	private static final Logger logger = LoggerFactory
			.getLogger(RegisterController.class);
	
	@RequestMapping(value = "/states", method = RequestMethod.GET)
	public @ResponseBody
	Set<State> findAllStates() {
		logger.debug("finding all states");
		Set<State> stateset = new HashSet<State>();
		stateset = geoLocationService.getStates();
		return stateset;
	}
	
	@RequestMapping(value = "/citiesforStates", method = RequestMethod.GET)
	public @ResponseBody
	Set<City> getCitiesForState(@RequestParam(value = "stateOrderId", required = true) long stateOrderId
			) {
		logger.debug("finding all Cities For State");
		Set<City> citySet = new HashSet<City>();
		citySet = geoLocationService.getCitiesForState(stateOrderId);
		return citySet;
	}

	@RequestMapping(value = "/Register", method = RequestMethod.GET)
	ModelAndView Register(Model model) throws IOException {
		ModelAndView mav = new ModelAndView("register-page1");
		SiteUsers siteUser = new SiteUsers();
		mav.addObject("siteUser", siteUser);
		return mav;
	}
	


	@RequestMapping(value = "/RegisterPage2", method = RequestMethod.GET)
	ModelAndView RegisterPage2(
			@ModelAttribute("siteUser") SiteUsers registerUser)
			throws IOException {
		ModelAndView mav = new ModelAndView("register-page2");
		mav.addObject("siteUser", registerUser);
		
		mav.addObject("userAddress", registerUser.getAddress());
		return mav;
	}

	// handle the signup post
	@RequestMapping(value = "/doRegisterPage2", method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody
	String doRegisterPage2(HttpServletRequest req, @RequestBody String myObject)
			throws IOException {

		logger.info("inside dologin method");
		Gson gson = new Gson();

		SiteUsers siteusers = gson.fromJson(myObject, SiteUsers.class);

		siteUserService.updateUser(siteusers);
		return "home";
	}
	
	@RequestMapping(value = "/saveSection1", method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody
	String saveSection1(HttpServletResponse response, @RequestBody String myObject) {
		logger.info("inside saveSection1 method");
		Gson gson = new Gson();
		SiteUsers userDetail = gson.fromJson(myObject, SiteUsers.class);

		// check user exist in db or not SiteUsers user =
		SiteUsers siteUsersFromDB = new SiteUsers();
		siteUsersFromDB.setUserId(userDetail.getUserId());
	
		 siteUsersFromDB = siteUserService.findbyExample(siteUsersFromDB);
		if(siteUsersFromDB!= null){
			userDetail.setUserId(siteUsersFromDB.getUserId());
		}
		else{
			return "save-fail";
		}
		boolean saveSection1Flag = siteUserService.updateUser(userDetail);

		if (saveSection1Flag) {
			return "register-success";
		} else {
			return "save-fail";
		}

	}
	
	@RequestMapping(value = "/saveSection2", method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody
	String saveSection2(HttpServletResponse response, @RequestBody String myObject) {
		logger.info("inside saveSection1 method");
		Gson gson = new Gson();
		SiteUsers userDetail = gson.fromJson(myObject, SiteUsers.class);

		// check user exist in db or not SiteUsers user =
		SiteUsers siteUsersFromDB = new SiteUsers();
		siteUsersFromDB.setUserId(userDetail.getUserId());
	
		 siteUsersFromDB = siteUserService.findbyExample(siteUsersFromDB);
		if(siteUsersFromDB!= null){
			userDetail.setUserId(siteUsersFromDB.getUserId());
		}
		else{
			return "save-fail";
		}
		boolean saveSection2Flag = siteUserService.updateUser(userDetail);

		if (saveSection2Flag) {
			return "register-success";
		} else {
			return "save-fail";
		}

	}
	

	@RequestMapping(value = "/doRegisterPage1", method = RequestMethod.GET)
	public @ResponseBody
	ModelAndView doRegister1(HttpServletRequest req, // @RequestBody String
														// myObject,
			@ModelAttribute("siteUser") SiteUsers registerUser)
			throws IOException {
		return doRegisterPage1(req, registerUser);
	}

	@RequestMapping(value = "/doRegisterPage1", method = RequestMethod.POST)
	public @ResponseBody
	ModelAndView doRegisterPage1(HttpServletRequest req,
			@ModelAttribute("siteUser") SiteUsers registerUser)
			throws IOException {

		logger.info("inside doRegisterPage1 method");

		ModelAndView mav = new ModelAndView();

		String email = registerUser.getLoginEmail();
		registerUser
				.setPassword(Utils.md5Encryption(registerUser.getPassword()));
		registerUser.setUserName(email);
		mav.addObject("siteUser", registerUser);
		
		

		if (!siteUserService.isEmailExists(email)) {
			// good user
			if (!siteUserService.addUser(registerUser)) {
				mav.setViewName("register-page1");
			} else {
				mav.setViewName("register-page2");
			}

		} else {
			mav.setViewName("register-page1");
		}
		
		this.siteUserId = registerUser.getUserId();
		return mav;
	}

	@RequestMapping(value = "/uploadprofilepicture", method = RequestMethod.GET)
	public @ResponseBody
	String upload1(MultipartHttpServletRequest request,
			HttpServletResponse response, @RequestBody String myObject) {
		return upload(request, response, myObject);
	}

	@RequestMapping(value = "/uploadprofilepicture", method = RequestMethod.POST)
	public @ResponseBody
	String upload(MultipartHttpServletRequest request,
			HttpServletResponse response, @RequestBody String myObject) {

		Gson gson = new Gson();
		// 0. notice, we have used MultipartHttpServletRequest
		SiteUsers registerUser = new SiteUsers();
		// 1. get the files from the request object
		Iterator<String> itr = request.getFileNames();



		MultipartFile mpf = request.getFile(itr.next());
		System.out.println(mpf.getOriginalFilename() + " uploaded!");

		try {
			// just temporary save file info into ufile
			ufile = new UploadedFile();
			ufile.length = mpf.getBytes().length;
			System.out.println("length:" + ufile.length);
			ufile.bytes = mpf.getBytes();
			ufile.type = mpf.getContentType();
			ufile.name = mpf.getOriginalFilename();
			registerUser.setUserId(siteUserId);
			registerUser.setProfilPic(ufile.bytes);
			boolean uploadImageFlag = siteUserService.updateUser(registerUser);

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// 2. send it back to the client as <img> that calls get method
		// we are using getTimeInMillis to avoid server cached image

		return "http://localhost:18080/HomeNinja/getimage/"
				+ Calendar.getInstance().getTimeInMillis();

	}

	@RequestMapping(value = "/getimage/{value}", method = RequestMethod.GET)
	public void get(HttpServletResponse response, @PathVariable String value) {
		try {
			response.setContentType("image/jpg");
			response.setContentLength(ufile.length);
			FileCopyUtils.copy(ufile.bytes, response.getOutputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}