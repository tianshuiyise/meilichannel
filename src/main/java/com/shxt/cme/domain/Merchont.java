package com.shxt.cme.domain;

public class Merchont {
	
	public String merchontId;
	public String accoutNum;
	public String realName;
	public int merchontType;
	public String id;
	public String userId;
	public String phone;
	public Merchont() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param merchontId
	 * @param accoutNum
	 * @param realName
	 * @param merchontType
	 * @param id
	 * @param userId
	 * @param phone
	 */
	public Merchont(String merchontId, String accoutNum, String realName,
			int merchontType, String id, String userId, String phone) {
		super();
		this.merchontId = merchontId;
		this.accoutNum = accoutNum;
		this.realName = realName;
		this.merchontType = merchontType;
		this.id = id;
		this.userId = userId;
		this.phone = phone;
	}

	/**
	 * @return the userId
	 */
	public String getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}
	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMerchontId() {
		return merchontId;
	}
	public void setMerchontId(String merchontId) {
		this.merchontId = merchontId;
	}
	public String getAccoutNum() {
		return accoutNum;
	}
	public void setAccoutNum(String accoutNum) {
		this.accoutNum = accoutNum;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public int getMerchontType() {
		return merchontType;
	}
	public void setMerchontType(int merchontType) {
		this.merchontType = merchontType;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}


}
