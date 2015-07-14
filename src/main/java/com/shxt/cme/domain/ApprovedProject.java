/**
 * 
 */
package com.shxt.cme.domain;

/** 
 * CopyRright (c)2015-:   大连校联科技有限公司 
 * Project:                                         
 * Module ID: ApprovedProject
 * Comments:                                             
 * JDK version used:      JDK1.7                              
 * Author：      于呈翔               
 * Create Date：  2015年1月8日 
 * Modified By：                                           
 * Modified Date:                                      
 * Why & What is modified      
 * Version: 1.0                       
 */
public class ApprovedProject {
	private String declareCode;//项目编码
	private String projectRemark; //项目描述
	private String theme;	//题目
	private String userName;	//单位编码
	private String academyName;//申报单位名称
	private String name;    //申报人
	private String phone; //联系电话
	private String grantCredit;//拟授学分
	private String ynAgree; //是否同意立项
	private String definedOpinion; //专家意见1
	private String expertOpinion;//专家意见2
	private String opinionDetail;//专家意见2
	private String approveAgree;//继教委审批
	private String startingTime;//开始时间
	private String endingTime;//结束时间
	private String hostDeadline;//举办期限
	private	String period; //学时
	private String placeName;//举办地点
	private String participant;//教学对象
	private String takeInNumber;//拟招人数
	private String beizhu;//备注
	private String newName;//新项目名称
	private String newGrandGredit;//新拟授学分
	private String newPeriod;//新学时
	private String projectCode;//
	private String projectType;//
	
	/**
	 * @return the projectType
	 */
	public String getProjectType() {
		return projectType;
	}
	/**
	 * @param projectType the projectType to set
	 */
	public void setProjectType(String projectType) {
		this.projectType = projectType;
	}
	/**
	 * @return the endingTime
	 */
	public String getEndingTime() {
		return endingTime;
	}
	/**
	 * @param endingTime the endingTime to set
	 */
	public void setEndingTime(String endingTime) {
		this.endingTime = endingTime;
	}
	/**
	 * @return the projectCode
	 */
	public String getProjectCode() {
		return projectCode;
	}
	/**
	 * @param projectCode the projectCode to set
	 */
	public void setProjectCode(String projectCode) {
		this.projectCode = projectCode;
	}
	/**
	 * @return the opinionDetail
	 */
	public String getOpinionDetail() {
		return opinionDetail;
	}
	/**
	 * @param opinionDetail the opinionDetail to set
	 */
	public void setOpinionDetail(String opinionDetail) {
		this.opinionDetail = opinionDetail;
	}
	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}
	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	/**
	 * @return the placeName
	 */
	public String getPlaceName() {
		return placeName;
	}
	/**
	 * @param placeName the placeName to set
	 */
	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
	
	/**
	 * @return the newGrandGredit
	 */
	public String getNewGrandGredit() {
		return newGrandGredit;
	}
	/**
	 * @param newGrandGredit the newGrandGredit to set
	 */
	public void setNewGrandGredit(String newGrandGredit) {
		this.newGrandGredit = newGrandGredit;
	}
	/**
	 * @return the newPeriod
	 */
	public String getNewPeriod() {
		return newPeriod;
	}
	/**
	 * @param newPeriod the newPeriod to set
	 */
	public void setNewPeriod(String newPeriod) {
		this.newPeriod = newPeriod;
	}
	/**
	 * @return the newName
	 */
	public String getNewName() {
		return newName;
	}
	/**
	 * @param newName the newName to set
	 */
	public void setNewName(String newName) {
		this.newName = newName;
	}
	/**
	 * @return the startingTime
	 */
	
	
	public String getStartingTime() {
		return startingTime;
	}
	/**
	 * @return the declareCode
	 */
	public String getDeclareCode() {
		return declareCode;
	}
	/**
	 * @param declareCode the declareCode to set
	 */
	public void setDeclareCode(String declareCode) {
		this.declareCode = declareCode;
	}
	/**
	 * @return the hostDeadline
	 */
	public String getHostDeadline() {
		return hostDeadline;
	}
	/**
	 * @param hostDeadline the hostDeadline to set
	 */
	public void setHostDeadline(String hostDeadline) {
		this.hostDeadline = hostDeadline;
	}
	/**
	 * @return the period
	 */
	public String getPeriod() {
		return period;
	}
	/**
	 * @param period the period to set
	 */
	public void setPeriod(String period) {
		this.period = period;
	}


	/**
	 * @return the participant
	 */
	public String getParticipant() {
		return participant;
	}
	/**
	 * @param participant the participant to set
	 */
	public void setParticipant(String participant) {
		this.participant = participant;
	}
	/**
	 * @return the takeInNumber
	 */
	public String getTakeInNumber() {
		return takeInNumber;
	}
	/**
	 * @param takeInNumber the takeInNumber to set
	 */
	public void setTakeInNumber(String takeInNumber) {
		this.takeInNumber = takeInNumber;
	}
	/**
	 * @return the beizhu
	 */
	public String getBeizhu() {
		return beizhu;
	}
	/**
	 * @param beizhu the beizhu to set
	 */
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	
	/**
	 * @param startingTime the startingTime to set
	 */
	public void setStartingTime(String startingTime) {
		this.startingTime = startingTime;
	}
	/**
	 * @return the approveAgree
	 */
	public String getApproveAgree() {
		return approveAgree;
	}
	/**
	 * @param approveAgree the approveAgree to set
	 */
	public void setApproveAgree(String approveAgree) {
		this.approveAgree = approveAgree;
	}
	/**
	 * @return the projectRemark
	 */
	public String getProjectRemark() {
		return projectRemark;
	}
	/**
	 * @param projectRemark the projectRemark to set
	 */
	public void setProjectRemark(String projectRemark) {
		this.projectRemark = projectRemark;
	}
	/**
	 * @return the theme
	 */
	public String getTheme() {
		return theme;
	}
	/**
	 * @param theme the theme to set
	 */
	public void setTheme(String theme) {
		this.theme = theme;
	}
	/**
	 * @return the academyName
	 */
	public String getAcademyName() {
		return academyName;
	}
	/**
	 * @param academyName the academyName to set
	 */
	public void setAcademyName(String academyName) {
		this.academyName = academyName;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
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
	/**
	 * @return the grantCredit
	 */
	public String getGrantCredit() {
		return grantCredit;
	}
	/**
	 * @param grantCredit the grantCredit to set
	 */
	public void setGrantCredit(String grantCredit) {
		this.grantCredit = grantCredit;
	}
	/**
	 * @return the ynAgree
	 */
	public String getYnAgree() {
		return ynAgree;
	}
	/**
	 * @param ynAgree the ynAgree to set
	 */
	public void setYnAgree(String ynAgree) {
		this.ynAgree = ynAgree;
	}

	/**
	 * @return the definedOpinion
	 */
	public String getDefinedOpinion() {
		return definedOpinion;
	}
	/**
	 * @param definedOpinion the definedOpinion to set
	 */
	public void setDefinedOpinion(String definedOpinion) {
		this.definedOpinion = definedOpinion;
	}
	/**
	 * @return the expertOpinion
	 */
	public String getExpertOpinion() {
		return expertOpinion;
	}
	/**
	 * @param expertOpinion the expertOpinion to set
	 */
	public void setExpertOpinion(String expertOpinion) {
		this.expertOpinion = expertOpinion;
	}

	
}
