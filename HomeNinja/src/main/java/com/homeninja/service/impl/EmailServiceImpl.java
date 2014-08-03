package com.homeninja.service.impl;

import java.util.Properties;

import javax.annotation.Resource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

import com.homeninja.entities.SiteUsers;
import com.homeninja.service.EmailService;
import com.homeninja.service.SiteUserService;
import com.homeninja.utils.Utils;

@Service
public class EmailServiceImpl implements EmailService {

	@Resource
	SiteUserService siteUserService;

	@Override
	public boolean sendEmail(SiteUsers siteUsers) {
		boolean isEmailSent = false;
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

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

	public void populateMessageForPasswordReset(Message message,
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
}
