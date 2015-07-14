package com.shxt.cme.domain;

/** 
 * CopyRright (c)2015-:   大连校联科技有限公司 
 * Project:                                         
 * Module ID: Experts
 * Comments:  专家信息                                        
 * JDK version used:      JDK1.7                              
 * Author：       曹尧               
 * Create Date：  2015年1月6日 
 * Modified By：                                           
 * Modified Date:                                      
 * Why & What is modified      
 * Version: 1.0                       
 */
public class Experts {
	private String createDate;           //创建时间
	private String createrKey;           //创建者
	private String deleteFlag;           //删除标记
	private String expertAccounts;       //专家帐号
	private String expertBank;           //开户行
	private String expertEmail;          //专家Email
	private String expertKey;            //专家主键
	private String expertName;           //专家名称
	private String expertPassword;       //登录密码
	private String expertPhone;          //专家联系方式
	private String expertQQ;             //专家qq
	private String expertUserName;       //专家登录名
	private String expertUserState;      //专家用户状态：0启用，1停用
	private String expertYear;           //专家审核年份
	private String modifierKey;          //修改者
	private String modifyDate;           //修改时间
	private String workUnit;             //工作单位
	private String subjectName;          //学科
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public String getCreateDate() {
		return createDate;
	}
	public String getCreaterKey() {
		return createrKey;
	}
	public String getDeleteFlag() {
		return deleteFlag;
	}
	public String getExpertAccounts() {
		return expertAccounts;
	}
	public String getExpertBank() {
		return expertBank;
	}
	public String getExpertEmail() {
		return expertEmail;
	}
	public String getExpertKey() {
		return expertKey;
	}
	public String getExpertName() {
		return expertName;
	}
	public String getExpertPassword() {
		return expertPassword;
	}
	public String getExpertPhone() {
		return expertPhone;
	}
	public String getExpertQQ() {
		return expertQQ;
	}
	public String getExpertUserName() {
		return expertUserName;
	}
	public String getExpertUserState() {
		return expertUserState;
	}
	public String getExpertYear() {
		return expertYear;
	}
	public String getModifierKey() {
		return modifierKey;
	}
	public String getModifyDate() {
		return modifyDate;
	}
	public String getWorkUnit() {
		return workUnit;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public void setCreaterKey(String createrKey) {
		this.createrKey = createrKey;
	}
	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	public void setExpertAccounts(String expertAccounts) {
		this.expertAccounts = expertAccounts;
	}
	public void setExpertBank(String expertBank) {
		this.expertBank = expertBank;
	}
	public void setExpertEmail(String expertEmail) {
		this.expertEmail = expertEmail;
	}
	public void setExpertKey(String expertKey) {
		this.expertKey = expertKey;
	}
	public void setExpertName(String expertName) {
		this.expertName = expertName;
	}
	public void setExpertPassword(String expertPassword) {
		this.expertPassword = expertPassword;
	}
	public void setExpertPhone(String expertPhone) {
		this.expertPhone = expertPhone;
	}
	public void setExpertQQ(String expertQQ) {
		this.expertQQ = expertQQ;
	}
	public void setExpertUserName(String expertUserName) {
		this.expertUserName = expertUserName;
	}
	public void setExpertUserState(String expertUserState) {
		this.expertUserState = expertUserState;
	}
	public void setExpertYear(String expertYear) {
		this.expertYear = expertYear;
	}
	public void setModifierKey(String modifierKey) {
		this.modifierKey = modifierKey;
	}
	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}
	public void setWorkUnit(String workUnit) {
		this.workUnit = workUnit;
	}
	

}
