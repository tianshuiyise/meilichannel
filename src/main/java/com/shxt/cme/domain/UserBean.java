package com.shxt.cme.domain;

public class UserBean {
	private String userKey;		//用户标识
	private String userName;	//系统用户名	
	private String password;	//密码
    private String relateUnitKey;
    private String  userType;
    private String upUserKey;
    private String userState;
    private String  roleType;
    
	public String getRelateUnitKey() {
		return relateUnitKey;
	}
	public void setRelateUnitKey(String relateUnitKey) {
		this.relateUnitKey = relateUnitKey;
	}
	public String getUserKey() {
		return userKey;
	}
	public void setUserKey(String userKey) {
		this.userKey = userKey;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getUpUserKey() {
		return upUserKey;
	}
	public void setUpUserKey(String upUserKey) {
		this.upUserKey = upUserKey;
	}
	public String getUserState() {
		return userState;
	}
	public void setUserState(String userState) {
		this.userState = userState;
	}
	public String getRoleType() {
		return roleType;
	}
	public void setRoleType(String roleType) {
		this.roleType = roleType;
	}
    
}
