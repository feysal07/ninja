package com.homeninja.dao;

import java.util.List;

import com.homeninja.entities.ContactPurpose;
import com.homeninja.entities.ContactUs;


public interface ContactUsDAO {
	
   
	public boolean saveMessage(ContactUs user);

	public List<ContactPurpose> getContactPurpose();
		
	
    	
   
}
