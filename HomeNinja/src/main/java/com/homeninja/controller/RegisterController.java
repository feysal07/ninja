package com.homeninja.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.homeninja.entities.AdvanceSettingUserMap;
import com.homeninja.entities.JobCategory;
import com.homeninja.entities.JobSubCategory;
import com.homeninja.entities.SiteUsers;
import com.homeninja.entities.UserJobCategoryMap;
import com.homeninja.entities.UserJobSubCategoryMap;
import com.homeninja.entities.UserType;
import com.homeninja.service.AdvanceSettingService;
import com.homeninja.service.GeoLocationService;
import com.homeninja.service.JobCategoryService;
import com.homeninja.service.SiteUserService;
import com.homeninja.utils.Utils;
import com.homeninja.vo.City;
import com.homeninja.vo.RegistrationPage3;
import com.homeninja.vo.State;
import com.homeninja.vo.UploadedFile;
import com.homeninja.vo.UserJobCategoryVO;
import com.homeninja.vo.UserJobSubCategoryVO;

@Controller

public class RegisterController implements ServletContextAware {

	UploadedFile ufile;

	private long siteUserId;

	@Resource
	public SiteUserService siteUserService;

	@Resource
	public GeoLocationService geoLocationService;

	@Resource
	public AdvanceSettingService advanceSettingService;

	@Resource
	public JobCategoryService jobCategoryService;
	
	ServletContext servletContext = null;

	/*
	 * @Autowired public SessionService sessionService;
	 */
	private static final Logger logger = LoggerFactory
			.getLogger(RegisterController.class);
	
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}

	@RequestMapping(value = "/doRegisterPage3", method = RequestMethod.POST)
	public @ResponseBody
	ModelAndView doRegisterPage3(
			@ModelAttribute("registrationPage3") RegistrationPage3 registrationPage3) {
		logger.debug("doRegisterPage3");
		List<UserJobCategoryVO> userJobCategoryVOList = registrationPage3
				.getUserJobCategoryList();
		Set<UserJobCategoryMap> userJobCategoryMapSet = jobCategoryService
				.getUserJobCategoryMap(registrationPage3.getUserId());

		for (UserJobCategoryMap userJobCategoryMap : userJobCategoryMapSet) {
			jobCategoryService.removeJobCategory(userJobCategoryMap);
		}

		userJobCategoryMapSet = jobCategoryService
				.getUserJobCategoryMap(registrationPage3.getUserId());

		if (userJobCategoryMapSet == null || userJobCategoryMapSet.size() == 0) {
			userJobCategoryMapSet = new HashSet<UserJobCategoryMap>();
		}

		for (int i = 1; i < userJobCategoryVOList.size(); i++) {
			if (userJobCategoryVOList.get(i) != null
					&& userJobCategoryVOList.get(i).getJobCategoryIsSet() != null
					&& userJobCategoryVOList.get(i).getJobCategoryIsSet()
							.equals("true")) {
				UserJobCategoryMap userJobCategoryMapTemp = new UserJobCategoryMap();
				userJobCategoryMapTemp.setId(0);
				userJobCategoryMapTemp.setUserId(registrationPage3.getUserId());
				userJobCategoryMapTemp.setJobCategoryID(i);
				userJobCategoryMapSet.add(userJobCategoryMapTemp);
			}

		}

		for (UserJobCategoryMap userJobCategoryMap : userJobCategoryMapSet) {

			int jobCategoryId = (int) userJobCategoryMap.getJobCategoryID();
			if (userJobCategoryVOList.get(jobCategoryId).getJobCategoryIsSet()
					.equals("true")) {
				jobCategoryService.saveUserJobCategory(userJobCategoryMap);
			} else {
				jobCategoryService.removeJobCategory(userJobCategoryMap);
			}

		}

		Set<UserJobSubCategoryMap> userJobSubCategoryMapSet = jobCategoryService
				.getUserJobSubCategoryMap(registrationPage3.getUserId());

		for (UserJobSubCategoryMap userJobSubCategoryMap : userJobSubCategoryMapSet) {
			jobCategoryService.removeJobSubCategory(userJobSubCategoryMap);
		}

		userJobSubCategoryMapSet = jobCategoryService
				.getUserJobSubCategoryMap(registrationPage3.getUserId());

		if (userJobSubCategoryMapSet == null
				|| userJobSubCategoryMapSet.size() == 0) {
			userJobSubCategoryMapSet = new HashSet<UserJobSubCategoryMap>();
		}

		List<UserJobSubCategoryVO> userJobSubCategoryVOList = registrationPage3
				.getUserJobSubCategoryList();

		for (int i = 1; i < userJobSubCategoryVOList.size(); i++) {
			if (userJobSubCategoryVOList.get(i) != null
					&& userJobSubCategoryVOList.get(i).getJobSubCategoryIsSet() != null
					&& userJobSubCategoryVOList.get(i).getJobSubCategoryIsSet()
							.equals("true")) {
				UserJobSubCategoryMap userJobSubCategoryMapTemp = new UserJobSubCategoryMap();
				userJobSubCategoryMapTemp.setId(0);
				userJobSubCategoryMapTemp.setUserId(registrationPage3
						.getUserId());
				userJobSubCategoryMapTemp.setJobSubCategoryId(i);
				userJobSubCategoryMapSet.add(userJobSubCategoryMapTemp);
			}

		}

		for (UserJobSubCategoryMap userJobSubCategoryMap : userJobSubCategoryMapSet) {

			jobCategoryService.saveUserJobSubCategory(userJobSubCategoryMap);
		}

		SiteUsers siteUsers = new SiteUsers();
		siteUsers.setUserId(registrationPage3.getUserId());
		siteUsers = siteUserService.getSiteUsersById(siteUsers);
		siteUsers.setUserType(registrationPage3.getUserType().getId());

		siteUserService.updateUser(siteUsers);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");

		return mav;
	}

	@RequestMapping(value = "/getUserTypes", method = RequestMethod.GET)
	public @ResponseBody
	Set<UserType> getUserTypes() {
		logger.debug("getUserTypes");
		Set<UserType> userTypeSet = new HashSet<UserType>();
		userTypeSet = siteUserService.getUserType();
		return userTypeSet;
	}

	@RequestMapping(value = "/getJobCategories", method = RequestMethod.GET)
	public @ResponseBody
	Set<JobCategory> getJobCategories() {
		logger.debug("getJobCategories");
		Set<JobCategory> jobCategorySet = new HashSet<JobCategory>();
		jobCategorySet = jobCategoryService.getJobCategory();
		TreeSet<JobCategory> jobCategorySortedSet = new TreeSet<JobCategory>();
		jobCategorySortedSet.addAll(jobCategorySet);

		return jobCategorySortedSet;
	}

	@RequestMapping(value = "/getJobSubCategories", method = RequestMethod.GET)
	public @ResponseBody
	Set<JobSubCategory> getJobSubCategories(@RequestBody String myObject) {
		logger.debug("getJobCategories");
		Gson gson = new Gson();
		JobCategory jobCategory = gson.fromJson(myObject, JobCategory.class);
		Set<JobSubCategory> jobSubCategorySet = new HashSet<JobSubCategory>();
		jobSubCategorySet = jobCategoryService.getJobSubCategory(jobCategory);
		TreeSet<JobSubCategory> jobSubCategorySortedSet = new TreeSet<JobSubCategory>();
		jobSubCategorySortedSet.addAll(jobSubCategorySet);
		for (JobSubCategory jobSubCategory : jobSubCategorySortedSet) {
			System.out.println(jobSubCategory.getJobSubCat());
		}
		return jobSubCategorySortedSet;
	}

	@RequestMapping(value = "/getAdvanceQuestions", method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody
	Set<AdvanceSettingUserMap> getAdvanceQuestions(@RequestBody String myObject) {
		logger.debug("getAdvanceQuestions");
		Gson gson = new Gson();
		SiteUsers siteusers = gson.fromJson(myObject, SiteUsers.class);
		Set<AdvanceSettingUserMap> advanceSettingUserMapSet = new HashSet<AdvanceSettingUserMap>();
		advanceSettingUserMapSet = advanceSettingService
				.findAdvanceSettingById(siteusers.getUserId());
		return advanceSettingUserMapSet;
	}

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
	Set<City> getCitiesForState(
			@RequestParam(value = "stateOrderId", required = true) long stateOrderId) {
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

	@RequestMapping(value = "/RegisterPage3", method = RequestMethod.POST)
	ModelAndView RegisterPage3(
			@RequestParam(value = "siteUserid", required = false) long userId, @RequestBody String myObject)
			throws IOException {
		
		ModelAndView mav = new ModelAndView("register-page3");
		SiteUsers registerUser = new SiteUsers();
		registerUser.setUserId(userId);
		mav.addObject("siteUser", registerUser);
		mav.addObject("registrationPage3", new RegistrationPage3());

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
	String saveSection1(HttpServletResponse response,
			@RequestBody String myObject) {
		logger.info("inside saveSection1 method");
		Gson gson = new Gson();
		SiteUsers userDetail = gson.fromJson(myObject, SiteUsers.class);

		// check user exist in db or not SiteUsers user =
		SiteUsers siteUsersFromDB = new SiteUsers();
		siteUsersFromDB.setUserId(userDetail.getUserId());

		userDetail = siteUserService.getSiteUsersById(siteUsersFromDB);
		
		if (userDetail == null) {
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
	String saveSection2(HttpServletResponse response,
			@RequestBody String myObject) {
		logger.info("inside saveSection2 method");
		Gson gson = new Gson();
		SiteUsers userDetail = gson.fromJson(myObject, SiteUsers.class);

		// check user exist in db or not SiteUsers user =
		SiteUsers siteUsersFromDB = new SiteUsers();
		siteUsersFromDB.setUserId(userDetail.getUserId());

		userDetail = siteUserService.getSiteUsersById(siteUsersFromDB);
		if (userDetail == null) {
			return "save-fail";
		}
		if (userDetail != null) {
			if (userDetail.getAddress() != null) {
				userDetail.getAddress().setUserId(userDetail.getUserId());
			}
		}
		boolean saveSection2Flag = siteUserService.updateUser(userDetail);

		if (saveSection2Flag) {
			return "register-success";
		} else {
			return "save-fail";
		}

	}

	@RequestMapping(value = "/saveSection3", method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody
	String saveSection3(HttpServletResponse response,
			@RequestBody String myObject) {
		logger.info("inside saveSection3 method");
		boolean saveError = false;
		Gson gson = new Gson();
		Type listType = new TypeToken<List<AdvanceSettingUserMap>>() {
		}.getType();
		List<AdvanceSettingUserMap> advanceSettingUserMapList = gson.fromJson(
				myObject, listType);

		Set<AdvanceSettingUserMap> advanceSettingUserMapSet = new HashSet<AdvanceSettingUserMap>();
		long userId = advanceSettingUserMapList.get(0).getUserId();
		advanceSettingUserMapSet = advanceSettingService
				.findAdvanceSettingById(userId);
		for (AdvanceSettingUserMap advanceSettingUserMap : advanceSettingUserMapSet) {
			boolean saveSection3Flag = false;
			for (AdvanceSettingUserMap advanceSettingUserMap1 : advanceSettingUserMapList) {
				if (advanceSettingUserMap.getAdvanceSetting().getId() == advanceSettingUserMap1
						.getAdvanceSetting().getId()) {
					advanceSettingUserMap
							.setAdvanceSettingValue(advanceSettingUserMap1
									.getAdvanceSettingValue());
				}
				saveSection3Flag = advanceSettingService
						.saveOrUpdateAdvanceSettingUserMap(advanceSettingUserMap);
				if(saveSection3Flag == false){
					saveError = true;
					break;
				}
			}

		}

		
		 if (!saveError) { return "register-success"; } else { return
		 "save-fail"; }
		 

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
		
		

		if (!siteUserService.isEmailExists(email)) {
			// good user
			if (!siteUserService.addUser(registerUser)) {
				mav.addObject("error", "user-add-fail");
				mav.setViewName("register-page1");
			} else {
				mav.setViewName("register-page2");
				
				try {
					// just temporary save file info into ufile
					String filePath = this.servletContext.getRealPath("./resources/assets/img/user.jpg") ;
					File fBlob = new File (filePath);
					FileInputStream fis = new FileInputStream ( fBlob );
					ufile = new UploadedFile();
					ufile.length = fBlob.length();
					System.out.println("length:" + ufile.length);
					ByteArrayOutputStream bos = new ByteArrayOutputStream();
			        byte[] buf = new byte[1024];
			        try {
			            for (int readNum; (readNum = fis.read(buf)) != -1;) {
			                //Writes to this byte array output stream
			                bos.write(buf, 0, readNum); 
			                System.out.println("read " + readNum + " bytes,");
			            }
			        } catch (IOException ex) {
			            /*Logger.getLogger(ConvertImage.class.getName()).log(Level.SEVERE, null, ex);*/
			        }
			        
					ufile.bytes = bos.toByteArray();;
					ufile.type = "image/jpg";
					ufile.name = "user";
					//registerUser.setUserId(siteUserId);
					registerUser = siteUserService.getSiteUsersById( registerUser);
					registerUser.setProfilPic(ufile.bytes);
					boolean uploadImageFlag = siteUserService.updateUser(registerUser);

				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		} else {
			mav.addObject("error", "user-exits");
			mav.setViewName("register-page1");
		}

		this.siteUserId = registerUser.getUserId();
		

		mav.addObject("siteUser", registerUser);
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
			registerUser = siteUserService.getSiteUsersById( registerUser);
			registerUser.setProfilPic(ufile.bytes);
			boolean uploadImageFlag = siteUserService.updateUser(registerUser);

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// 2. send it back to the client as <img> that calls get method
		// we are using getTimeInMillis to avoid server cached image

		return "http://localhost:18080/HomeNinja/getimage/"
				+ registerUser.getUserId();

	}

	@RequestMapping(value = "/getimage/{value}", method = RequestMethod.GET)
	public void get(HttpServletResponse response, @PathVariable String value) {
		try {
			response.setContentType("image/jpg");
		//	response.setContentLength(ufile.length);
			SiteUsers siteUsers = new SiteUsers();
			long userIdLong = Long.parseLong(value);
			siteUsers.setUserId(userIdLong);
			siteUsers = siteUserService.getSiteUsersById( siteUsers);
			FileCopyUtils.copy(siteUsers.getProfilPic(), response.getOutputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}