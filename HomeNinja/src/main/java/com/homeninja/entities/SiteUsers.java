package com.homeninja.entities;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

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
	private String loginViaFB;
	private String isActive;
	private byte [] profilPic;
	private String aboutMe;
	/*private String nextProject;
	private String myFavoriteStyle;*/
	private Date createdDate;
	private Date modifiedDate;
	private long companyId;
	@OneToMany(cascade = CascadeType.ALL,fetch=FetchType.EAGER)
	@JoinColumn(name="userId")
	private List<Address> address;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name="userId")
	private List<UserJobCategoryMap> userJobCategoryMap;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name="userId")
	private List<UserJobSubCategoryMap> userJobSubCategoryMap;
	
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
	@Lob
	@Type(type = "binary")
	public void setProfilPic(byte[] profilPic) {
		this.profilPic = profilPic;
	}
	
	public String getAboutMe() {
		return aboutMe;
	}
	public void setAboutMe(String aboutMe) {
		this.aboutMe = aboutMe;
	}
	/*public String getNextProject() {
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
	}*/
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
	public List<UserJobCategoryMap> getUserJobCategoryMap() {
		return userJobCategoryMap;
	}
	public void setUserJobCategoryMap(List<UserJobCategoryMap> userJobCategoryMap) {
		this.userJobCategoryMap = userJobCategoryMap;
	}
	public List<UserJobSubCategoryMap> getUserJobSubCategoryMap() {
		return userJobSubCategoryMap;
	}
	public void setUserJobSubCategoryMap(
			List<UserJobSubCategoryMap> userJobSubCategoryMap) {
		this.userJobSubCategoryMap = userJobSubCategoryMap;
	}
	public List<Address> getAddress() {
		return address;
	}
	public void setAddress(List<Address> address) {
		this.address = address;
	}
	public long getCompanyId() {
		return companyId;
	}
	public void setCompanyId(long companyId) {
		this.companyId = companyId;
	}
	
	
}
