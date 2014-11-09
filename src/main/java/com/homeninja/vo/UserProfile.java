package com.homeninja.vo;

import java.util.Date;

public class UserProfile {

	private long userId;
	private String firstName;
	private String lastName;
	private long userType;
	private String loginEmail;
	private String phoneNumber;
	private String password;
	private String gender;
	private String loginViaFB;
	private String isActive;
	private byte [] profilPic;
	private String aboutMe;
	private String nextProject;
	private String myFavoriteStyle;
	private Date createdDate;
	private Date modifiedDate;
	private String jobCategory;
	private String jobSubCategory;
	private String address;
	private String state;
	private String city;
	private String pincode;
	
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
	public byte[] getProfilPic() {
		return profilPic;
	}
	public void setProfilPic(byte[] profilPic) {
		this.profilPic = profilPic;
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
	public String getJobCategory() {
		return jobCategory;
	}
	public void setJobCategory(String jobCategory) {
		this.jobCategory = jobCategory;
	}
	public String getJobSubCategory() {
		return jobSubCategory;
	}
	public void setJobSubCategory(String jobSubCategory) {
		this.jobSubCategory = jobSubCategory;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
}
