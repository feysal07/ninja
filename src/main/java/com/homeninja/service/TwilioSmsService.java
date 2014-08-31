package com.homeninja.service;

import java.io.IOException;

import com.twilio.sdk.TwilioRestException;

public interface TwilioSmsService {
	public void sentSms(String phoneNo, String textMessage)
			throws TwilioRestException, IOException ;
}
