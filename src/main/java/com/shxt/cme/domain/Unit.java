package com.shxt.cme.domain;

public class Unit {
	
	private String unitKey;  //单位主键
	private String unitCode;  //单位代码
	private String unitName; //单位名称
	private String postcode; //邮编
	private String unitState;//单位状态：0启用，1停用
	private String telephone;//联系电话
	private String email;//电子邮件
	private String unitAddress;//单位地址
	private String upUnitKey;//单位代码
	private String createrKey;//创建者
	private String createDate;//创建时间
	private String modifierKey;//修改者
	private String modifyDate;//修改时间
	private String deleteFlag;//删除标记：0未删除，1删除
	private String upUnitName;//上级单位名称
	private String upTelephone;//上级单位联系方式
	private String upQQ;   //上级单位QQ
	private String qq;   //QQ号码
	
	public String getUpQQ() {
		return upQQ;
	}
	public void setUpQQ(String upQQ) {
		this.upQQ = upQQ;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getUpUnitName() {
		return upUnitName;
	}
	public void setUpUnitName(String upUnitName) {
		this.upUnitName = upUnitName;
	}
	public String getUpTelephone() {
		return upTelephone;
	}
	public void setUpTelephone(String upTelephone) {
		this.upTelephone = upTelephone;
	}
	public String getUnitKey() {
		return unitKey;
	}
	public void setUnitKey(String unitKey) {
		this.unitKey = unitKey;
	}
	public String getUnitCode() {
		return unitCode;
	}
	public void setUnitCode(String unitCode) {
		this.unitCode = unitCode;
	}
	public String getUnitName() {
		return unitName;
	}
	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getUnitState() {
		return unitState;
	}
	public void setUnitState(String unitState) {
		this.unitState = unitState;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUnitAddress() {
		return unitAddress;
	}
	public void setUnitAddress(String unitAddress) {
		this.unitAddress = unitAddress;
	}
	public String getUpUnitKey() {
		return upUnitKey;
	}
	public void setUpUnitKey(String upUnitKey) {
		this.upUnitKey = upUnitKey;
	}
	public String getCreaterKey() {
		return createrKey;
	}
	public void setCreaterKey(String createrKey) {
		this.createrKey = createrKey;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getModifierKey() {
		return modifierKey;
	}
	public void setModifierKey(String modifierKey) {
		this.modifierKey = modifierKey;
	}
	public String getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}
	public String getDeleteFlag() {
		return deleteFlag;
	}
	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	
	
	
}
