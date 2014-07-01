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


@Controller
public class ContactUsController {
	
	public static final int OTHER=4;
	@Resource
	public ContactUsService  contactUsService;

	@RequestMapping(value = "/contactUs", method = RequestMethod.GET)
	public String contactUs(Model model){
		List<ContactPurpose> ddlContactPurpose=contactUsService.getContactPurpose();
		model.addAttribute("ddlContactPurpose", ddlContactPurpose);
		
		return "contactUs";
	}
	
	@RequestMapping(value = "/submitQuery", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public String submitContactUs(@RequestBody String myObject,Model model){
		
		Date date = new Date();
		Gson gson=new Gson();
		ContactUs contactUsForm=gson.fromJson(myObject,ContactUs.class);
		if(contactUsForm.getContactPurpose()==0){
			contactUsForm.setContactPurpose(OTHER);
		}
		contactUsForm.setSubmitDate(date);
		
		
		// save to db
		contactUsService.saveMessage(contactUsForm);
		//send mail
		boolean status=contactUsService.sendContactUsMail(contactUsForm);
		model.addAttribute("status", status);
		return "contactUs";
	}
	
	
}
