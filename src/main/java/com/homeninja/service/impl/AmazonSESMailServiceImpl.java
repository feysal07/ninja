package com.homeninja.service.impl;

import java.util.Properties;

import javax.annotation.Resource;
import javax.mail.*;
import javax.mail.internet.*;

import org.springframework.stereotype.Service;

import com.homeninja.service.AmazonSESMailService;
import com.homeninja.utils.PropertyFileReader;

@Service
public class AmazonSESMailServiceImpl implements AmazonSESMailService {

	// Supply your SMTP credentials below. Note that your SMTP credentials are different from your AWS credentials.
    //static final String SMTP_USERNAME = "AKIAJ6CMXBP6EDNGL7TA";  // Replace with your SMTP username.
    //static final String SMTP_PASSWORD = "AjB6tG8E1+ZIUh0tDmwJ0pmtVTf6eLMX52qmilXtDUe6";  // Replace with your SMTP password.
    
    // Amazon SES SMTP host name. This example uses the us-east-1 region.
    //static final String HOST = "ses-smtp-user.20140826-120711";    
    
    // Port we will connect to on the Amazon SES SMTP endpoint. We are choosing port 25 because we will use
    // STARTTLS to encrypt the connection.
    //static final int PORT = 25;

    public boolean sendMail(String subject ,String messageContent,String mailFrom,String mailTo) 
    		throws Exception {

    	PropertyFileReader propertyFileReader=new PropertyFileReader();
    	Properties prop = propertyFileReader.getPropValues("mail.properties");
    	String SMTP_USERNAME= prop.getProperty("MAIL_SMTP_USERNAME");
    	String SMTP_PASSWORD=prop.getProperty("MAIL_SMTP_PASSWORD");
    	String HOST=prop.getProperty("MAIL_HOST");
    	int PORT =Integer.parseInt(prop.getProperty("MAIL_PORT"));
        // Create a Properties object to contain connection configuration information.
    	Properties props = System.getProperties();
    	props.put("mail.transport.protocol", "smtp");
    	props.put("mail.smtp.port", PORT); 
    	
    	// Set properties indicating that we want to use STARTTLS to encrypt the connection.
    	// The SMTP session will begin on an unencrypted connection, and then the client
        // will issue a STARTTLS command to upgrade to an encrypted connection.
    	props.put("mail.smtp.auth", "true");
    	props.put("mail.smtp.starttls.enable", "true");
    	props.put("mail.smtp.starttls.required", "true");

        // Create a Session object to represent a mail session with the specified properties. 
    	Session session = Session.getDefaultInstance(props);

        // Create a message with the specified information. 
        MimeMessage msg = new MimeMessage(session);
        msg.setFrom(new InternetAddress(mailFrom));
        msg.setRecipient(Message.RecipientType.TO, new InternetAddress(mailTo));
        msg.setSubject(subject);
        msg.setContent(messageContent,"text/plain");
            
        // Create a transport.        
        Transport transport = session.getTransport();
                    
        // Send the message.
        try
        {
            System.out.println("Attempting to send an email through the Amazon SES SMTP interface...");
            
            // Connect to Amazon SES using the SMTP username and password you specified above.
            transport.connect(HOST, SMTP_USERNAME, SMTP_PASSWORD);
        	
            // Send the email.
            transport.sendMessage(msg, msg.getAllRecipients());
            System.out.println("Email sent!");
            return true;
        }
        catch (Exception ex) {
            System.out.println("The email was not sent.");
            System.out.println("Error message: " + ex.getMessage());
            return false;
        }
        finally
        {
            // Close and terminate the connection.
            transport.close();        	
        }
    }
    
    public static void main(String[] args) throws Exception {
    	// Replace with your "From" address. This address must be verified.
         String FROM = "support@homeninja.in";   
         String TO = "bharatverma2488@gmail.com";  // Replace with a "To" address. If you have not yet requested
                                                           // production access, this address must be verified.
         String BODY = "This email was sent through the Amazon SES SMTP interface by using Java.";
         String SUBJECT = "Amazon SES test (SMTP interface accessed using Java)";
         AmazonSESMailServiceImpl obj=new AmazonSESMailServiceImpl();
         obj.sendMail(SUBJECT, BODY, FROM, TO);
	}
}