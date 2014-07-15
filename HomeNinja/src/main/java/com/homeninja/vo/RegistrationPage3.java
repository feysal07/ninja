package com.homeninja.vo;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.hibernate.mapping.Array;

import com.homeninja.entities.UserCompanyMap;
import com.homeninja.entities.UserJobCategoryMap;
import com.homeninja.entities.UserJobSubCategoryMap;
import com.homeninja.entities.UserType;

public class RegistrationPage3 {
	private long userId;
	private UserType userType;
	private UserCompanyMap userCompanyMap;
	private List<UserJobCategoryVO> userJobCategoryList = new ArrayList<UserJobCategoryVO>() ;
	private List<UserJobSubCategoryVO> userJobSubCategoryList = new ArrayList<UserJobSubCategoryVO>();


	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public UserType getUserType() {
		return userType;
	}

	public void setUserType(UserType userType) {
		this.userType = userType;
	}

	public UserCompanyMap getUserCompanyMap() {
		return userCompanyMap;
	}

	public void setUserCompanyMap(UserCompanyMap userCompanyMap) {
		this.userCompanyMap = userCompanyMap;
	}

	public List<UserJobCategoryVO> getUserJobCategoryList() {
		return userJobCategoryList;
	}

	public void setUserJobCategoryList(List<UserJobCategoryVO> userJobCategoryList) {
		this.userJobCategoryList = userJobCategoryList;
	}

	public List<UserJobSubCategoryVO> getUserJobSubCategoryList() {
		return userJobSubCategoryList;
	}

	public void setUserJobSubCategoryList(
			List<UserJobSubCategoryVO> userJobSubCategoryList) {
		this.userJobSubCategoryList = userJobSubCategoryList;
	}


}
