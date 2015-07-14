package com.shxt.cme.domain;

public class TempProjectCheck {

	private String projectKey; // 项目主键
	private String projectName; // 项目名称
	private String projectDescribe; // 项目描述
	private String projectLeader; // 项目负责人
	private String inSubject;// 所属学科
	private String startingTime; // 开始时间
	private String endingTime; // 结束时间
	private String hostUnit;// 主办单位
	private String hostDay;// 举办天数
	private String hostPlace; // 举办地点
	private String period; // 学时总数
	private String grantCredit; // 拟授学分
	private String participant; // 参加对象
	private String takeInNumber; // 拟收人数
	private String projectType; // 项目类型：0中医 1西医
	private String hostWay; // 举办方式
	private String hostPurpose; // 举办目的
	private String topicAndDescribe; // 项目讲授题目及内容简介
	private String evaluationMethod; // 考核方式
	private String levelAndStatus; // 项目水平及在国内外的地位
	private String projectCode; // 项目编码
	private String createrKey;
	private String createDate;
	private String modifierKey;
	private String modifyDate;
	private String deleteFlag;
	private String declareState; // 申报状态:1已申报，0未申报
	private String declarant; // 申报人
	private String declareCode; // 申报号码
	private String declareTime; // 申报时间
	private String unitKey; // 所在单位
	private String modifyState; // 修改状态:0可修改，1不可修改
	private String roleType;  //角色类型
	private String unitCode;//单位编码
	private String secondSubject;
	
	private String opinionKey;
	private String userKey;
	private String unitOpinion;
	private String approvalTime;
	private String expertOpinion;
	private String expertRemark;
	
	
	public String getSecondSubject() {
		return secondSubject;
	}
	public void setSecondSubject(String secondSubject) {
		this.secondSubject = secondSubject;
	}
	public String getRoleType() {
		return roleType;
	}
	public void setRoleType(String roleType) {
		this.roleType = roleType;
	}
	public String getUnitCode() {
		return unitCode;
	}
	public void setUnitCode(String unitCode) {
		this.unitCode = unitCode;
	}
	public String getOpinionKey() {
		return opinionKey;
	}
	public void setOpinionKey(String opinionKey) {
		this.opinionKey = opinionKey;
	}
	public String getUserKey() {
		return userKey;
	}
	public void setUserKey(String userKey) {
		this.userKey = userKey;
	}
	public String getUnitOpinion() {
		return unitOpinion;
	}
	public void setUnitOpinion(String unitOpinion) {
		this.unitOpinion = unitOpinion;
	}
	public String getApprovalTime() {
		return approvalTime;
	}
	public void setApprovalTime(String approvalTime) {
		this.approvalTime = approvalTime;
	}
	public String getExpertOpinion() {
		return expertOpinion;
	}
	public void setExpertOpinion(String expertOpinion) {
		this.expertOpinion = expertOpinion;
	}
	public String getExpertRemark() {
		return expertRemark;
	}
	public void setExpertRemark(String expertRemark) {
		this.expertRemark = expertRemark;
	}
	public String getProjectKey() {
		return projectKey;
	}
	public void setProjectKey(String projectKey) {
		this.projectKey = projectKey;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getProjectDescribe() {
		return projectDescribe;
	}
	public void setProjectDescribe(String projectDescribe) {
		this.projectDescribe = projectDescribe;
	}
	public String getProjectLeader() {
		return projectLeader;
	}
	public void setProjectLeader(String projectLeader) {
		this.projectLeader = projectLeader;
	}
	public String getInSubject() {
		return inSubject;
	}
	public void setInSubject(String inSubject) {
		this.inSubject = inSubject;
	}
	public String getStartingTime() {
		return startingTime;
	}
	public void setStartingTime(String startingTime) {
		this.startingTime = startingTime;
	}
	public String getEndingTime() {
		return endingTime;
	}
	public void setEndingTime(String endingTime) {
		this.endingTime = endingTime;
	}
	public String getHostUnit() {
		return hostUnit;
	}
	public void setHostUnit(String hostUnit) {
		this.hostUnit = hostUnit;
	}
	public String getHostDay() {
		return hostDay;
	}
	public void setHostDay(String hostDay) {
		this.hostDay = hostDay;
	}
	public String getHostPlace() {
		return hostPlace;
	}
	public void setHostPlace(String hostPlace) {
		this.hostPlace = hostPlace;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public String getGrantCredit() {
		return grantCredit;
	}
	public void setGrantCredit(String grantCredit) {
		this.grantCredit = grantCredit;
	}
	public String getParticipant() {
		return participant;
	}
	public void setParticipant(String participant) {
		this.participant = participant;
	}
	public String getTakeInNumber() {
		return takeInNumber;
	}
	public void setTakeInNumber(String takeInNumber) {
		this.takeInNumber = takeInNumber;
	}

	public String getProjectType() {
		return projectType;
	}
	public void setProjectType(String projectType) {
		this.projectType = projectType;
	}
	public String getHostWay() {
		return hostWay;
	}
	public void setHostWay(String hostWay) {
		this.hostWay = hostWay;
	}
	public String getHostPurpose() {
		return hostPurpose;
	}
	public void setHostPurpose(String hostPurpose) {
		this.hostPurpose = hostPurpose;
	}
	public String getTopicAndDescribe() {
		return topicAndDescribe;
	}
	public void setTopicAndDescribe(String topicAndDescribe) {
		this.topicAndDescribe = topicAndDescribe;
	}
	public String getEvaluationMethod() {
		return evaluationMethod;
	}
	public void setEvaluationMethod(String evaluationMethod) {
		this.evaluationMethod = evaluationMethod;
	}
	public String getLevelAndStatus() {
		return levelAndStatus;
	}
	public void setLevelAndStatus(String levelAndStatus) {
		this.levelAndStatus = levelAndStatus;
	}
	public String getProjectCode() {
		return projectCode;
	}
	public void setProjectCode(String projectCode) {
		this.projectCode = projectCode;
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
	public String getDeclareState() {
		return declareState;
	}
	public void setDeclareState(String declareState) {
		this.declareState = declareState;
	}
	public String getDeclarant() {
		return declarant;
	}
	public void setDeclarant(String declarant) {
		this.declarant = declarant;
	}
	public String getDeclareCode() {
		return declareCode;
	}
	public void setDeclareCode(String declareCode) {
		this.declareCode = declareCode;
	}
	public String getDeclareTime() {
		return declareTime;
	}
	public void setDeclareTime(String declareTime) {
		this.declareTime = declareTime;
	}
	public String getUnitKey() {
		return unitKey;
	}
	public void setUnitKey(String unitKey) {
		this.unitKey = unitKey;
	}
	public String getModifyState() {
		return modifyState;
	}
	public void setModifyState(String modifyState) {
		this.modifyState = modifyState;
	}
}
