package com.homeninja.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "site_users")
public class SiteUsers {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long userId;
	private String userName;
	private String firstName;
	private String lastName;
	private long userType;
	private String loginEmail;
	private String phoneNumber;
	private String password;
	private String gender;
	private String loginViaFB;
	private String isActive;
	private String profilPic;
	private String addressId;
	private String aboutMe;
	private String nextProject;
	private String myFavoriteStyle;
	private Date createdDate;
	private Date modifiedDate;
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public long getUserType() {
		return userType;
	}
	public void setUserType(long userType) {
		this.userType = userType;
	}
	public String getLoginEmail() {
		return loginEmail;
	}
	public void setLoginEmail(String loginEmail) {
		this.loginEmail = loginEmail;
	}
	
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getLoginViaFB() {
		return loginViaFB;
	}
	public void setLoginViaFB(String loginViaFB) {
		this.loginViaFB = loginViaFB;
	}
	public String getIsActive() {
		return isActive;
	}
	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}
	public String getProfilPic() {
		return profilPic;
	}
	public void setProfilPic(String profilPic) {
		this.profilPic = profilPic;
	}
	public String getAddressId() {
		return addressId;
	}
	public void setAddressId(String addressId) {
		this.addressId = addressId;
	}
	public String getAboutMe() {
		return aboutMe;
	}
	public void setAboutMe(String aboutMe) {
		this.aboutMe = aboutMe;
	}
	public String getNextProject() {
		return nextProject;
	}
	public void setNextProject(String nextProject) {
		this.nextProject = nextProject;
	}
	public String getMyFavoriteStyle() {
		return myFavoriteStyle;
	}
	public void setMyFavoriteStyle(String myFavoriteStyle) {
		this.myFavoriteStyle = myFavoriteStyle;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	
	
}
