package com.homeninja.service;

public interface AmazonSESMailService {

	   public boolean sendMail(String subject ,String messageContent,String mailFrom,String mailTo) 
	    		throws Exception;
}
