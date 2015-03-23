package com.homeninja.service;

import java.io.IOException;

import com.homeninja.entities.SiteUsers;

public interface EmailService {
	
	public boolean sendResetPasswordEmail(SiteUsers siteUsers) throws IOException;
	
	public void sendInterestEmail(String emailAddress, String emailContent) throws IOException; 
	

}
