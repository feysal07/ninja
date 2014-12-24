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
import com.homeninja.service.AmazonSESMailService;
import com.homeninja.service.SiteUserService;

@Controller
public class ForgotPasswordController {

	@Resource
	SiteUserService siteUserService;
	
	@Resource
	AmazonSESMailService amazonSESMailService;

	private static final Logger logger = LoggerFactory
			.getLogger(LoginController.class);

	@RequestMapping(value = "/forgot-password", method = RequestMethod.GET)
	public String forgotPassword() {
		logger.info("inside forgotPassword method");
		return "forgotPassword";
	}

	@RequestMapping(value = "/send-forgot-password", method = RequestMethod.POST, consumes = "application/json")
	
	@ResponseBody
	public String sendForgotPassword(@RequestBody String myObject) throws Exception {
		logger.info("inside sendForgotPassword method");
		String userEmail = myObject;
		if (!siteUserService.isEmailExists(userEmail)) {
			return "user-doesnot-exist";
		}
		
        String subject="Password Reset";
        String mailFrom="support@homeninja.in";
        String randomPassword=com.homeninja.utils.Utils.randomString(8);
        String encryptedPassword=com.homeninja.utils.Utils.md5Encryption(randomPassword);
        StringBuilder messageContent=new StringBuilder();
        messageContent.append("Hi User,");
        messageContent.append(System.getProperty("line.separator"));
        messageContent.append("your passowrd has been reset sucessfully");
        messageContent.append(System.getProperty("line.separator"));
        messageContent.append("-----------------------");
        messageContent.append(System.getProperty("line.separator"));
        messageContent.append("Username :"+userEmail);
        messageContent.append(System.getProperty("line.separator"));
        messageContent.append("Password :"+randomPassword);
        
        //reset password for the user
        if(siteUserService.resetPassword(userEmail, encryptedPassword)){
        	//hardcoded need to remove
        	String mailTo="bharatverma2488@gmail.com";
        	amazonSESMailService.sendMail(subject, messageContent.toString(), mailFrom, mailTo);
        }
		return "password-reset";
	}
}
