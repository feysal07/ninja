package com.homeninja.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "master_data_value")
public class MasterDataValue {
	@Id
	private long masterDataId;
	private String mnemonic;
	private String value;
	private long orderId;
	private int isActive;
	public long getMasterDataId() {
		return masterDataId;
	}
	public void setMasterDataId(long masterDataId) {
		this.masterDataId = masterDataId;
	}
	public String getMnemonic() {
		return mnemonic;
	}
	public void setMnemonic(String mnemonic) {
		this.mnemonic = mnemonic;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public long getOrderId() {
		return orderId;
	}
	public void setOrderId(long orderId) {
		this.orderId = orderId;
	}
	public int getIsActive() {
		return isActive;
	}
	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}
	

	
}
