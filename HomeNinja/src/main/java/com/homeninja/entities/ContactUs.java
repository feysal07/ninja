package com.homeninja.entities;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="contact_us")
public class ContactUs {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private String name;
	private Date submitDate;
	private String email;
	private String message;
	private String subject;
	private int contactPurpose;
	private long siteUserId;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Date getSubmitDate() {
		return submitDate;
	}
	public void setSubmitDate(Date submitDate) {
		this.submitDate = submitDate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getContactPurpose() {
		return contactPurpose;
	}
	public void setContactPurpose(int contactPurpose) {
		this.contactPurpose = contactPurpose;
	}
	public long getSiteUserId() {
		return siteUserId;
	}
	public void setSiteUserId(long siteUserId) {
		this.siteUserId = siteUserId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}	

}
