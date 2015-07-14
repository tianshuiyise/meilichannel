package com.shxt.cme.domain;

public class AcademicActivity {
	private String academicKey;				//学术活动主键
	private String theme;					//题目
	private String purposeAndDesricbe;		//主要内容及目的
	private String hostPlace;				//举办地点
	private String participant;				//参加对象
	private String period;					//拟讲授学时
	private String declarant;				//申报人
	private String medicalAssociation;		//各医科学（协）会
	public String getProfessionalCommittee1() {
		return professionalCommittee1;
	}
	public void setProfessionalCommittee1(String professionalCommittee1) {
		this.professionalCommittee1 = professionalCommittee1;
	}
	private String professionalCommittee;   //所属专业委员会
	private String professionalCommittee1;
	private String createrKey;
	private String createDate;
	private String modifierKey;
	private String modifyDate;
	private String deleteFlag;
	private String standbyPlace;//备用地点
	private String hostSecondPlace;
	
	
	public String getHostSecondPlace() {
		return hostSecondPlace;
	}
	public void setHostSecondPlace(String hostSecondPlace) {
		this.hostSecondPlace = hostSecondPlace;
	}
	public String getStandbyPlace() {
		return standbyPlace;
	}
	public void setStandbyPlace(String standbyPlace) {
		this.standbyPlace = standbyPlace;
	}
	private String  projectType;			//类型：中医，西医
	private String startingDate;			//开始时间
	private String endingDate;				//结束时间
	private String declareTime;
	private String declareUserKey;
	private String modifyState;
	private String declareState;    //申报状态：0未申报，1已申报
	private String roleType;
	
	//主讲人
	private String memberKey1;
	private String  name1;					//姓名
	private String position1;				//专业技术职位
	private String position11;
	private String placeUnitKey1;			//所在单位
	private String unitName1;				//所在单位
	private String phone1;					//联系方式
	private String email1;					//电子邮件
	private String memberType1;				//成员类型：项目负责人、主要讲师、主持人、主讲人
	private String notInUnit1;   //所在单位不在单位列表中的话，存储在这里
	
	//、主持人
	private String memberKey2;
	private String  name2;					//姓名
	private String position2;				//专业技术职位
	private String position12;
	private String placeUnitKey2;			//所在单位
	private String unitName2;				//所在单位
	private String phone2;					//联系方式
	private String email2;					//电子邮件
	private String memberType2;				//成员类型：项目负责人、主要讲师、主持人、主讲人
	private String isAgress;
	private String opinion;
	private String grantCredit;
	private String notInUnit2;
	
	
	public String getNotInUnit1() {
		return notInUnit1;
	}
	public void setNotInUnit1(String notInUnit1) {
		this.notInUnit1 = notInUnit1;
	}
	public String getNotInUnit2() {
		return notInUnit2;
	}
	public void setNotInUnit2(String notInUnit2) {
		this.notInUnit2 = notInUnit2;
	}
	public String getPosition11() {
		return position11;
	}
	public void setPosition11(String position11) {
		this.position11 = position11;
	}
	public String getPosition12() {
		return position12;
	}
	public void setPosition12(String position12) {
		this.position12 = position12;
	}
	public String getGrantCredit() {
		return grantCredit;
	}
	public void setGrantCredit(String grantCredit) {
		this.grantCredit = grantCredit;
	}
	public String getDeclareState() {
		return declareState;
	}
	public void setDeclareState(String declareState) {
		this.declareState = declareState;
	}
	public String getIsAgress() {
		return isAgress;
	}
	public void setIsAgress(String isAgress) {
		this.isAgress = isAgress;
	}
	public String getOpinion() {
		return opinion;
	}
	public void setOpinion(String opinion) {
		this.opinion = opinion;
	}
	public String getRoleType() {
		return roleType;
	}
	public void setRoleType(String roleType) {
		this.roleType = roleType;
	}
	public String getDeclareTime() {
		return declareTime;
	}
	public void setDeclareTime(String declareTime) {
		this.declareTime = declareTime;
	}
	public String getDeclareUserKey() {
		return declareUserKey;
	}
	public void setDeclareUserKey(String declareUserKey) {
		this.declareUserKey = declareUserKey;
	}
	public String getModifyState() {
		return modifyState;
	}
	public void setModifyState(String modifyState) {
		this.modifyState = modifyState;
	}
	public String getProjectType() {
		return projectType;
	}
	public void setProjectType(String projectType) {
		this.projectType = projectType;
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
	public String getStartingDate() {
		return startingDate;
	}
	public void setStartingDate(String startingDate) {
		this.startingDate = startingDate;
	}
	public String getEndingDate() {
		return endingDate;
	}
	public void setEndingDate(String endingDate) {
		this.endingDate = endingDate;
	}
	public String getMemberKey1() {
		return memberKey1;
	}
	public void setMemberKey1(String memberKey1) {
		this.memberKey1 = memberKey1;
	}
	public String getName1() {
		return name1;
	}
	public void setName1(String name1) {
		this.name1 = name1;
	}
	public String getPosition1() {
		return position1;
	}
	public void setPosition1(String position1) {
		this.position1 = position1;
	}
	public String getPlaceUnitKey1() {
		return placeUnitKey1;
	}
	public void setPlaceUnitKey1(String placeUnitKey1) {
		this.placeUnitKey1 = placeUnitKey1;
	}
	public String getUnitName1() {
		return unitName1;
	}
	public void setUnitName1(String unitName1) {
		this.unitName1 = unitName1;
	}
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public String getMemberType1() {
		return memberType1;
	}
	public void setMemberType1(String memberType1) {
		this.memberType1 = memberType1;
	}
	public String getMemberKey2() {
		return memberKey2;
	}
	public void setMemberKey2(String memberKey2) {
		this.memberKey2 = memberKey2;
	}
	public String getName2() {
		return name2;
	}
	public void setName2(String name2) {
		this.name2 = name2;
	}
	public String getPosition2() {
		return position2;
	}
	public void setPosition2(String position2) {
		this.position2 = position2;
	}
	public String getPlaceUnitKey2() {
		return placeUnitKey2;
	}
	public void setPlaceUnitKey2(String placeUnitKey2) {
		this.placeUnitKey2 = placeUnitKey2;
	}
	public String getUnitName2() {
		return unitName2;
	}
	public void setUnitName2(String unitName2) {
		this.unitName2 = unitName2;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public String getMemberType2() {
		return memberType2;
	}
	public void setMemberType2(String memberType2) {
		this.memberType2 = memberType2;
	}
	
	
	//学术表，成员表、单位表

	//学术活动 申报、修改

	


		
	
}
