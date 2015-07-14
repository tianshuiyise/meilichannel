package com.shxt.cme.domain;

public class Merchont {
	
	public String merchontId;
	public String accoutNum;
	public String realName;
	public int merchontType;
	public String id;
	public Merchont() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Merchont(String merchontId, String accoutNum, String realName,
			int merchontType, String id) {
		super();
		this.merchontId = merchontId;
		this.accoutNum = accoutNum;
		this.realName = realName;
		this.merchontType = merchontType;
		this.id = id;
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
