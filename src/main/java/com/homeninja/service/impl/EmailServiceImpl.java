package com.homeninja.service.impl;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.annotation.Resource;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.homeninja.entities.SiteUsers;
import com.homeninja.service.EmailService;
import com.homeninja.service.SiteUserService;
import com.homeninja.utils.PropertyFileReader;
import com.homeninja.utils.Utils;

@Service
public class EmailServiceImpl implements EmailService {
    
    private static final Logger LOGGER = LoggerFactory
            .getLogger(EmailServiceImpl.class);

	@Resource
	SiteUserService siteUserService;

	private Properties propertiesSetup() throws IOException{
		
		final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
	      
		PropertyFileReader propertyFileReader=new PropertyFileReader();
		Properties prop = propertyFileReader.getPropValues("mail.properties");

		String smtpHost = prop.getProperty("MAIL_HOST");
		String fallback = prop.getProperty("MAIL_SMTP_FALLBACK");
		String smtpPort = prop.getProperty("MAIL_PORT");
		String smtpAuth = prop.getProperty("MAIL_AUTH");
		String emailDebug = prop.getProperty("MAIL_DEBUG");
		String storeProtocol = prop.getProperty("MAIL_STORE_PROTOCOL");
		String transportProtocol = prop.getProperty("MAIL_TRANSPORT_PROTOCOL");
		
	    // Get a Properties object
		Properties props = System.getProperties();
		props.setProperty("mail.smtp.host", smtpHost);
		props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
		props.setProperty("mail.smtp.socketFactory.fallback", fallback);
		props.setProperty("mail.smtp.port", smtpPort);
		props.setProperty("mail.smtp.socketFactory.port", smtpPort);
		props.put("mail.smtp.auth", smtpAuth);
		props.put("mail.debug", emailDebug);
		props.put("mail.store.protocol", storeProtocol);
		props.put("mail.transport.protocol", transportProtocol);
		
		return props;
	}
	
	
	@Override
	public boolean sendResetPasswordEmail(SiteUsers siteUsers) throws IOException {
		boolean isEmailSent = false;
		
		Properties props = propertiesSetup();

		Session session = Session.getInstance(props,
				new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(
								"personpratik@gmail.com", "processduration");
					}
				});

		try {

			Message message = new MimeMessage(session);

			populateMessageForPasswordReset(message, siteUsers);

			Transport.send(message);
			isEmailSent = true;

		} catch (MessagingException e) {
			isEmailSent = false;

		}

		return isEmailSent;

	}

	private void populateMessageForPasswordReset(Message message,
			SiteUsers siteUsers) throws AddressException, MessagingException {
		String fromEmailAddress = "personpratik@gmail.com";
		String toEmailAddress = "personpratik@gmail.com";

		String subject = "Password Reset on your HomeNinja Account";
		siteUsers = siteUserService.findbyExample(siteUsers);

		StringBuilder textEmail = new StringBuilder("Dear");
		if (siteUsers != null && siteUsers.getFirstName() != null) {
			textEmail.append(siteUsers.getFirstName());
		} else {
			textEmail.append(siteUsers.getLoginEmail());
		}

		textEmail.append(",\n\n");

		textEmail.append("Your new password is ");
		String newPassword = Utils.getRandomId();

		siteUsers.setPassword(Utils.md5Encryption(newPassword));
		
		siteUserService.updateUser(siteUsers);
		
		textEmail.append(newPassword);

		message.setFrom(new InternetAddress(fromEmailAddress));
		message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(toEmailAddress));
		message.setSubject(subject);
		message.setText(textEmail.toString());
	}
	
	
	public void sendInterestEmail(String receiverEmailAddress, String emailContent) throws IOException {
		  
		PropertyFileReader propertyFileReader=new PropertyFileReader();
		Properties prop = propertyFileReader.getPropValues("mail.properties");

		String senderEmail = prop.getProperty("SUPPORT_MAIL_ID");
		String emailSubject = prop.getProperty("MAIL_SUBJECT");
		final String username = prop.getProperty("MAIL_SMTP_USERNAME");
		final String password = prop.getProperty("MAIL_SMTP_PASSWORD");
		
		Properties props = propertiesSetup();
	         
	    try{
	       Session session = Session.getDefaultInstance
	      		 (props, new Authenticator(){
	       			 protected PasswordAuthentication getPasswordAuthentication() {
	                       return new PasswordAuthentication(username, password); }
	       			 }
	      		 );

		   // -- Create a new message --
		   Message msg = new MimeMessage(session);
	
		   // -- Set Sender and Receiver fields --
		   msg.setFrom(new InternetAddress(senderEmail));
		   msg.setRecipients(Message.RecipientType.TO, 
		                          InternetAddress.parse(receiverEmailAddress,false));
		   msg.setSubject(emailSubject);
		   msg.setText(emailContent);
		   msg.setSentDate(new Date());
		         
		   Transport.send(msg);     
		   LOGGER.info("Message sent.");
		   
	      }catch (MessagingException e){ 
	          e.printStackTrace();
	    	  LOGGER.error(e.getMessage());
	      }
	}
	
}
