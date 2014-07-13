package com.homeninja.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

@Entity
@Table(name = "advance_setting_user_map")
public class AdvanceSettingUserMap {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private long userId;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="advanceSettingId")	
	@Fetch(FetchMode.JOIN)	
	private AdvanceSetting advanceSetting;
	private int advanceSettingValue;
	
	
/*	public AdvanceSettingUserMap(long id, long userId, AdvanceSetting advanceSetting) {
		this.id = id;
		this.userId = userId;
		this.advanceSetting = advanceSetting;
		
	}*/
	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	public AdvanceSetting getAdvanceSetting() {
		return advanceSetting;
	}
	public void setAdvanceSetting(AdvanceSetting advanceSetting) {
		this.advanceSetting = advanceSetting;
	}
	public int getAdvanceSettingValue() {
		return advanceSettingValue;
	}
	public void setAdvanceSettingValue(int advanceSettingValue) {
		this.advanceSettingValue = advanceSettingValue;
	}

}
