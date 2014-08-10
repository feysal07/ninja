package com.homeninja.vo;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


public class UsersSearchResult {
	private long pageCount;
	private int pageNumber;

	private List<UsersSearch> usersSearchList;

	public long getPageCount() {
		return pageCount;
	}

	public void setPageCount(long pageCount) {
		this.pageCount = pageCount;
	}

	public List<UsersSearch> getUsersSearchList() {
		return usersSearchList;
	}

	public void setUsersSearchList(List<UsersSearch> usersSearchList) {
		this.usersSearchList = usersSearchList;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	

}
