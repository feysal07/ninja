package com.homeninja.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.springframework.stereotype.Service;

import com.homeninja.service.TwilioSmsService;
import com.homeninja.utils.PropertyFileReader;
import com.twilio.sdk.TwilioRestClient;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.resource.factory.MessageFactory;
import com.twilio.sdk.resource.instance.Message;
@Service
public class TwilioSmsServiceImpl implements TwilioSmsService{ 
 
	
 public void sentSms(String phoneNo, String textMessage)
			throws TwilioRestException, IOException {
		
		PropertyFileReader propertyFileReader=new PropertyFileReader();
		Properties prop = propertyFileReader.getPropValues("sms.property");

		String accSID = prop.getProperty("ACCOUNT_SID");
		String authTocken = prop.getProperty("AUTH_TOKEN");
		String fromContact = prop.getProperty("CONTACT_NO");
		TwilioRestClient client = new TwilioRestClient(accSID, authTocken);

		// Build the parameters
		List<NameValuePair> params = new ArrayList<NameValuePair>();
		params.add(new BasicNameValuePair("To", phoneNo));
		params.add(new BasicNameValuePair("From", fromContact));
		params.add(new BasicNameValuePair("Body", textMessage));

		MessageFactory messageFactory = client.getAccount().getMessageFactory();
		Message message = messageFactory.create(params);
		System.out.println(message.getSid());

	} 

	
 
}