package com.homeninja.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "site_users")
public class SiteUsers {
	
	@Id
	private String userId;
	private String userName;
	private String firstName;
	private String lastName;
	private String userType;
	private String loginEmail;
	private String password;
	private String gender;
	private String loginViaFB;
	private String isActive;
	private String profilPic;
	private String addressId;
	private String aboutMe;
	private String nextProject;
	private String myFavoriteStyle;
	private String createdDate;
	private String modifiedDate;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
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
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getLoginEmail() {
		return loginEmail;
	}
	public void setLoginEmail(String loginEmail) {
		this.loginEmail = loginEmail;
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
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public String getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(String modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	
	
}
