package com.homeninja.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.homeninja.entities.ContactPurpose;
import com.homeninja.entities.ContactUs;
import com.homeninja.service.ContactUsService;
import com.homeninja.service.impl.AmazonSESMailServiceImpl;


@Controller
public class ContactUsController {
	
	public static final int OTHER=4;
	@Resource
	public ContactUsService  contactUsService;
	
	@Resource
	public AmazonSESMailServiceImpl  amazonSESMail;
	
	/*@Resource
	public PropertyFileReader  propertyFileReader;*/

	@RequestMapping(value = "/contact-us", method = RequestMethod.GET)
	public String contactUs(Model model){
		return "contactUs";
	}
	
	@RequestMapping(value = "/contact-purpose", method = RequestMethod.GET)
	public @ResponseBody
	List<ContactPurpose> getContactPurpose() {
		List<ContactPurpose> ddlContactPurpose=contactUsService.getContactPurpose(); 
		return ddlContactPurpose;
	}
	
	@RequestMapping(value = "/submit-query", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public String submitContactUs(@RequestBody String myObject,Model model) throws Exception{
		
		String supporMail="support@homeninja.in";//propertyFileReader.getPropertyValue("SUPPORT_MAIL_ID","mail.properties");
		Date date = new Date();
		Gson gson=new Gson();
		ContactUs contactUsForm=gson.fromJson(myObject,ContactUs.class);
		if(contactUsForm.getContactPurpose()==0){
			contactUsForm.setContactPurpose(OTHER);
		}
		contactUsForm.setSubmitDate(date);
		
		//TODO:hard-coded for demo
		contactUsForm.setEmail("bharatverma2488@gmail.com");
		// save to db
		contactUsService.saveMessage(contactUsForm);
		
		boolean status=amazonSESMail.sendMail(contactUsForm.getSubject(), 
				contactUsForm.getMessage(), supporMail, contactUsForm.getEmail());
		//send mail
		//boolean status=contactUsService.sendContactUsMail(contactUsForm);
		model.addAttribute("status", status);
		return "contactUs";
	}
	
	
}
