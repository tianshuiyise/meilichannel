package com.shxt.cme.domain;

public class AcademicProject {
	private String academicKey;  //学术活动主键
	private String theme;			//题目
	private String purposeAndDesricbe;    //主要内容及目的
	private String hostPlace;    //举办地点
	private String participant;    //参加对象
	private String period;    //拟讲授学时
	private String declarant;    //申报人
	private String medicalAssociation;    //各医科学（协）会
	private String professionalCommittee;    //所属专业委员会
	private String createrKey;    //创建者
	private String createDate;    //创建时间
	private String modifierKey;    //修改者
	private String modifyDate;    //修改时间
	private String deleteFlag;    //删除标记
	private String declareCode;    //申报编码
	private String modifyState;    //修改状态：0可修改，1不可修改
	private String unitCode;  //申报单位代码
	private String roleType;   //上报单位
	private String projectType; //项目类型:0中医，1西医
	private String declareTime; //申报时间
	private String endingTime; //起始时间
	private String startingTime;//结束时间
	private String approvalTime; //审批时间
	private String unitOpinion;  //单位、专家批准、不批准意见
	private String expertOpinion;//专家意见
	private String remark;   //专家备注
	private String grantCredit;//拟授学分
	private String unitName;//申报单位名称
	private String LeaderName;
	private String leaderPhone;
	private String expertIsChecked;
	private String approveOpinion;//继教委会审批意见
	private String userName;//创办单位编码
	//专家意见字段显示
	private String expertOpinionKey;   //专家主键
	private String ynAgree;        //是否同意立项
	private String opinionDetail;   //专家意见
	private String definedOpinion;  //专家自定义意见
	private String projectRemark;
	private String opinionState;
	
	//jjwh评审字段显示
	private String approveKey;
	private String approveAgree;
	private String opinion;//jjwb审批意见
	private String userKey;
	private String projectKey;
	private String approveTime;
	
	//jjwb提交及修改意见字段
	private String submitState; //提交状态
	private String agreeToSetup;//是否同意立项
	private String agreeOpinion; //原因
	
	
	private String newGrandCredit;//新该学分
	private String newPeriod;  //新改学时
	private String newName;  //新改项目名称
	
	
	
	
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
	public String getApproveOpinion() {
		return approveOpinion;
	}
	public void setApproveOpinion(String approveOpinion) {
		this.approveOpinion = approveOpinion;
	}
	public String getNewGrandCredit() {
		return newGrandCredit;
	}
	public void setNewGrandCredit(String newGrandCredit) {
		this.newGrandCredit = newGrandCredit;
	}
	public String getNewPeriod() {
		return newPeriod;
	}
	public void setNewPeriod(String newPeriod) {
		this.newPeriod = newPeriod;
	}
	public String getNewName() {
		return newName;
	}
	public void setNewName(String newName) {
		this.newName = newName;
	}
	public String getSubmitState() {
		return submitState;
	}
	public void setSubmitState(String submitState) {
		this.submitState = submitState;
	}
	public String getAgreeToSetup() {
		return agreeToSetup;
	}
	public void setAgreeToSetup(String agreeToSetup) {
		this.agreeToSetup = agreeToSetup;
	}
	public String getAgreeOpinion() {
		return agreeOpinion;
	}
	public void setAgreeOpinion(String agreeOpinion) {
		this.agreeOpinion = agreeOpinion;
	}
	public String getApproveTime() {
		return approveTime;
	}
	public void setApproveTime(String approveTime) {
		this.approveTime = approveTime;
	}
	public String getApproveKey() {
		return approveKey;
	}
	public void setApproveKey(String approveKey) {
		this.approveKey = approveKey;
	}
	public String getApproveAgree() {
		return approveAgree;
	}
	public void setApproveAgree(String approveAgree) {
		this.approveAgree = approveAgree;
	}
	public String getOpinion() {
		return opinion;
	}
	public void setOpinion(String opinion) {
		this.opinion = opinion;
	}
	public String getUserKey() {
		return userKey;
	}
	public void setUserKey(String userKey) {
		this.userKey = userKey;
	}
	public String getProjectKey() {
		return projectKey;
	}
	public void setProjectKey(String projectKey) {
		this.projectKey = projectKey;
	}
	public String getExpertIsChecked() {
		return expertIsChecked;
	}
	public void setExpertIsChecked(String expertIsChecked) {
		this.expertIsChecked = expertIsChecked;
	}
	public String getOpinionState() {
		return opinionState;
	}
	public void setOpinionState(String opinionState) {
		this.opinionState = opinionState;
	}
	public String getExpertOpinionKey() {
		return expertOpinionKey;
	}
	public void setExpertOpinionKey(String expertOpinionKey) {
		this.expertOpinionKey = expertOpinionKey;
	}
	public String getYnAgree() {
		return ynAgree;
	}
	public void setYnAgree(String ynAgree) {
		this.ynAgree = ynAgree;
	}
	public String getOpinionDetail() {
		return opinionDetail;
	}
	public void setOpinionDetail(String opinionDetail) {
		this.opinionDetail = opinionDetail;
	}
	public String getDefinedOpinion() {
		return definedOpinion;
	}
	public void setDefinedOpinion(String definedOpinion) {
		this.definedOpinion = definedOpinion;
	}
	public String getProjectRemark() {
		return projectRemark;
	}
	public void setProjectRemark(String projectRemark) {
		this.projectRemark = projectRemark;
	}
	public String getLeaderName() {
		return LeaderName;
	}
	public void setLeaderName(String leaderName) {
		LeaderName = leaderName;
	}
	public String getLeaderPhone() {
		return leaderPhone;
	}
	public void setLeaderPhone(String leaderPhone) {
		this.leaderPhone = leaderPhone;
	}
	public String getUnitName() {
		return unitName;
	}
	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}
	public String getGrantCredit() {
		return grantCredit;
	}
	public void setGrantCredit(String grantCredit) {
		this.grantCredit = grantCredit;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getApprovalTime() {
		return approvalTime;
	}
	public void setApprovalTime(String approvalTime) {
		this.approvalTime = approvalTime;
	}
	public String getUnitOpinion() {
		return unitOpinion;
	}
	public void setUnitOpinion(String unitOpinion) {
		this.unitOpinion = unitOpinion;
	}
	public String getExpertOpinion() {
		return expertOpinion;
	}
	public void setExpertOpinion(String expertOpinion) {
		this.expertOpinion = expertOpinion;
	}
	public String getUnitCode() {
		return unitCode;
	}
	public void setUnitCode(String unitCode) {
		this.unitCode = unitCode;
	}
	public String getAcademicKey() {
		return academicKey;
	}
	public void setAcademicKey(String academicKey) {
		this.academicKey = academicKey;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	public String getPurposeAndDesricbe() {
		return purposeAndDesricbe;
	}
	public void setPurposeAndDesricbe(String purposeAndDesricbe) {
		this.purposeAndDesricbe = purposeAndDesricbe;
	}
	public String getHostPlace() {
		return hostPlace;
	}
	public void setHostPlace(String hostPlace) {
		this.hostPlace = hostPlace;
	}
	public String getParticipant() {
		return participant;
	}
	public void setParticipant(String participant) {
		this.participant = participant;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public String getDeclarant() {
		return declarant;
	}
	public void setDeclarant(String declarant) {
		this.declarant = declarant;
	}
	public String getMedicalAssociation() {
		return medicalAssociation;
	}
	public void setMedicalAssociation(String medicalAssociation) {
		this.medicalAssociation = medicalAssociation;
	}
	public String getProfessionalCommittee() {
		return professionalCommittee;
	}
	public void setProfessionalCommittee(String professionalCommittee) {
		this.professionalCommittee = professionalCommittee;
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
	public String getDeclareCode() {
		return declareCode;
	}
	public void setDeclareCode(String declareCode) {
		this.declareCode = declareCode;
	}
	public String getModifyState() {
		return modifyState;
	}
	public void setModifyState(String modifyState) {
		this.modifyState = modifyState;
	}
	public String getRoleType() {
		return roleType;
	}
	public void setRoleType(String roleType) {
		this.roleType = roleType;
	}
	public String getProjectType() {
		return projectType;
	}
	public void setProjectType(String projectType) {
		this.projectType = projectType;
	}
	public String getDeclareTime() {
		return declareTime;
	}
	public void setDeclareTime(String declareTime) {
		this.declareTime = declareTime;
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

	

}
