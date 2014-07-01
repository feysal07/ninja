package com.homeninja.service;


import java.util.List;

import com.homeninja.entities.ContactPurpose;
import com.homeninja.entities.ContactUs;


public interface ContactUsService {

	public boolean sendContactUsMail(ContactUs contactUs);
	public boolean saveMessage(ContactUs contactUsForm);
	public List<ContactPurpose> getContactPurpose();

	
	
}
