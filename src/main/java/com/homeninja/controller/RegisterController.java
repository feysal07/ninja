package com.homeninja.controller; 

import java.io.IOException;
import java.util.Calendar;
import java.util.Iterator;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.homeninja.entities.Address;
import com.homeninja.entities.SiteUsers;
import com.homeninja.service.SiteUserService;
import com.homeninja.utils.Utils;
import com.homeninja.vo.UploadedFile;

@Controller
public class RegisterController {
	
	UploadedFile ufile;

	@Resource
	public SiteUserService siteUserService;

	/*
	 * @Autowired public SessionService sessionService;
	 */
	private static final Logger logger = LoggerFactory
			.getLogger(RegisterController.class);
	
	@RequestMapping(value = "/Register", method = RequestMethod.GET)
	ModelAndView  Register(Model model) throws IOException {
		 ModelAndView mav = new ModelAndView("register") ;
		SiteUsers siteUser = new SiteUsers();
		mav.addObject("siteUser",siteUser);
		return mav;
	}

	@RequestMapping(value = "/RegisterPage2", method = RequestMethod.GET)
	ModelAndView  RegisterPage2(@ModelAttribute("siteUser") SiteUsers registerUser) throws IOException {
		//return "register-page2";
		 ModelAndView mav = new ModelAndView("register-page2") ;
		//Address userAddress = new Address();
		mav.addObject("siteUser", registerUser);
		mav.addObject("userAddress",registerUser.getAddress());
		return mav;
	}

	// handle the signup post
	@RequestMapping(value = "/doRegisterPage2", method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody
	String doRegisterPage2(HttpServletRequest req, @RequestBody String myObject
			) throws IOException {

		logger.info("inside dologin method");
		Gson gson = new Gson();
		
		SiteUsers siteusers = gson.fromJson(myObject, SiteUsers.class);
		
		siteUserService.updateUser(siteusers);
/*		if (!siteUserService.addUser(registerUser)) {
			return "register";
		}*/
		
/*		String email = userAddress.getLoginEmail();
		if (email == null || email.length() == 0) {
			return "register-emailnotentered";
		}
		
		if (userAddress.getPassword() == null
				|| userAddress.getPassword().length() == 0) {
			return "register-passwordnotentered";
		}*/



		
/*		if (!siteUserService.isEmailExists(email)) {
			// good user
			if (!siteUserService.addUser(registerUser)) {
				return "register";
			}

		}
		if (siteUserService.isEmailExists(email)) {
			return "register-alreadyexist";
		}*/
		return "home";
	}
	
//	@RequestMapping(value = "/doRegister", method = RequestMethod.POST, consumes = "application/json")
	@RequestMapping(value = "/doRegister", method = RequestMethod.POST)
	public @ResponseBody
	ModelAndView doRegister(HttpServletRequest req, //@RequestBody String myObject,
			@ModelAttribute("siteUser") SiteUsers registerUser) throws IOException {

		logger.info("inside dologin method");
		Gson gson = new Gson();
		
		//SiteUsers registerUser = gson.fromJson(myObject, SiteUsers.class);
		 ModelAndView mav = new ModelAndView() ;
		 
		String email = registerUser.getLoginEmail();
		/*if (email == null || email.length() == 0) {
			return "register-emailnotentered";
		}
		
		if (registerUser.getPassword() == null
				|| registerUser.getPassword().length() == 0) {
			return "register-passwordnotentered";
		}*/
		registerUser
				.setPassword(Utils.md5Encryption(registerUser.getPassword()));


		mav.addObject("siteUser", registerUser);
		mav.addObject("userAddress",registerUser.getAddress());
		mav.addObject("siteUser",registerUser);
		
		if (!siteUserService.isEmailExists(email)) {
			// good user
			if (!siteUserService.addUser(registerUser)) {
				mav.setViewName("register");
			}
			else{
				mav.setViewName("register-page2");
			}

		}
		if (siteUserService.isEmailExists(email)) {
			mav.setViewName("register");
		}
		return mav;
	}
	
	@RequestMapping(value = "/uploadprofilepicture", method = RequestMethod.POST)
	   public @ResponseBody String upload(MultipartHttpServletRequest request, HttpServletResponse response) {                
	 
	     //0. notice, we have used MultipartHttpServletRequest
	 
	     //1. get the files from the request object
	     Iterator<String> itr =  request.getFileNames();
	 
	     MultipartFile mpf = request.getFile(itr.next());
	     System.out.println(mpf.getOriginalFilename() +" uploaded!");
	 
	     try {
	                //just temporary save file info into ufile
	    	 ufile = new UploadedFile();
	    	ufile.length = mpf.getBytes().length;
	        ufile.bytes= mpf.getBytes();
	        ufile.type = mpf.getContentType();
	        ufile.name = mpf.getOriginalFilename();
	 
	    } catch (IOException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	 
	     //2. send it back to the client as <img> that calls get method
	     //we are using getTimeInMillis to avoid server cached image
	 
	     return "http://localhost:18080/HomeNinja/getimage/"+Calendar.getInstance().getTimeInMillis();
	 
	  }
	 
	
	 @RequestMapping(value = "/getimage/{value}", method = RequestMethod.GET)
	    public void get(HttpServletResponse response, @PathVariable String value) {
	        try {
	            response.setContentType(ufile.type);
	            response.setContentLength(ufile.length);
	            FileCopyUtils.copy(ufile.bytes, response.getOutputStream());
	        } catch (IOException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	    }
}