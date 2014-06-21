package com.homeninja.service.impl;
/*package com.homeninja.service.impl;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;

import com.homeninja.dao.ContactUsDAO;
import com.homeninja.entites.ContactUs;
import com.homeninja.service.ContactUsService;

public class ContactUsServiceImpl implements ContactUsService {
	
	@Autowired
	public ContactUsDAO contactUsDAO;

	@Override
	public boolean sendContactUsMail(ContactUs contactUs) {
		String fromAddress = "Your Name ";// Your Email Address//
		String recipients = "bharatverma2488@gmail.com";
		String contentType = "text/plain";
		String smtpHost = "smtp.gmail.com";// Your Outgoing Mailbox//
		int smtpPort = 587;
		String username = "bharat@raremile.com";// Your Mailbox Username//
		String password = "dbase123";// Your Mailbox Password//
		try {
			Properties props = System.getProperties();
			props.put("mail.smtp.starttls.enable", "true");
			Session session = Session.getDefaultInstance(props);
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(fromAddress));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(recipients, false));
			message.setSubject("contact us query from :" + contactUs.getEmail());
			message.setContent(contactUs.getMessage(), contentType);
			message.setSentDate(new Date());
			Transport transport = session.getTransport("smtp");
			transport.connect(smtpHost, smtpPort, username, password);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
			return true;

		} catch (MessagingException messagingException) {
			System.out.print(messagingException);
			return false;
		} catch (Exception e) {
			System.out.print(e);
			return false;
		}

	}
	
	 public boolean saveMessage(ContactUs contactUsForm){
		return contactUsDAO.saveMessage(contactUsForm);
	   }
}
*/