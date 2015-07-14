package com.shxt.cme.domain;

public class TempProject {
	private String projectKey; // 项目主键
	private String projectName; // 项目名称
	private String projectDescribe; // 项目描述
	private String projectLeader; // 项目负责人
	
	private String postcode;
	
	private String inSubject;// 所属学科
	private String startingTime; // 开始时间
	private String endingTime; // 结束时间
	private String hostUnit;// 主办单位
	private String hostDay;// 举办天数
	private String hostPlace; // 举办地点
	private String period; // 学时总数
	private String grandCredit; // 拟授学分
	private String participant; // 参加对象
	private String takeInNumber; // 拟收人数
	private String declareNumber; // 申报号码
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
	private String remark;//备注
	private String declarantPhone;//填表人电话
	private String subjectName;
	private String unitName;
	private String unitName1;
	private String unitName2;
	private String unitName3;
	private String unitName4;
	private String unitName5;
	private String unitName6;
	private String unitName7;
	private String secondSubject;
	
	private Member member1;
	
	public String getSecondSubject() {
		return secondSubject;
	}

	public void setSecondSubject(String secondSubject) {
		this.secondSubject = secondSubject;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getDeclarantPhone() {
		return declarantPhone;
	}

	public void setDeclarantPhone(String declarantPhone) {
		this.declarantPhone = declarantPhone;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

	public String getUnitName1() {
		return unitName1;
	}

	public void setUnitName1(String unitName1) {
		this.unitName1 = unitName1;
	}

	public String getUnitName2() {
		return unitName2;
	}

	public void setUnitName2(String unitName2) {
		this.unitName2 = unitName2;
	}

	public String getUnitName3() {
		return unitName3;
	}

	public void setUnitName3(String unitName3) {
		this.unitName3 = unitName3;
	}

	public String getUnitName4() {
		return unitName4;
	}

	public void setUnitName4(String unitName4) {
		this.unitName4 = unitName4;
	}

	public String getUnitName5() {
		return unitName5;
	}

	public void setUnitName5(String unitName5) {
		this.unitName5 = unitName5;
	}

	public String getUnitName6() {
		return unitName6;
	}

	public void setUnitName6(String unitName6) {
		this.unitName6 = unitName6;
	}

	public String getUnitName7() {
		return unitName7;
	}

	public void setUnitName7(String unitName7) {
		this.unitName7 = unitName7;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public Member getMember1() {
		return member1;
	}

	public void setMember1(Member member1) {
		this.member1 = member1;
	}

	// 项目负责人
	private String memberKey1;
	private String name1; // 姓名
	private String position1; // 专业技术职位
	private String placeUnitKey1; // 所在单位
	private String teachTopic1;// 讲授题目
	private String period1;// 学时数
	// 主要教师
	private String memberKey2;
	private String name2; // 姓名
	private String position2; // 专业技术职位
	private String placeUnitKey2; // 所在单位
	private String teachTopic2;// 讲授题目
	private String period2;// 学时数

	private String memberKey3;
	private String name3; // 姓名
	private String position3; // 专业技术职位
	private String placeUnitKey3; // 所在单位
	private String teachTopic3;// 讲授题目
	private String period3;// 学时数

	private String memberKey4;
	private String name4; // 姓名
	private String position4; // 专业技术职位
	private String placeUnitKey4; // 所在单位
	private String teachTopic4;// 讲授题目
	private String period4;// 学时数

	private String memberKey5;
	private String name5; // 姓名
	private String position5; // 专业技术职位
	private String placeUnitKey5; // 所在单位
	private String teachTopic5;// 讲授题目
	private String period5;// 学时数

	private String memberKey6;
	private String name6; // 姓名
	private String position6; // 专业技术职位
	private String placeUnitKey6; // 所在单位
	private String teachTopic6;// 讲授题目
	private String period6;// 学时数

	private String memberKey7;
	private String name7; // 姓名
	private String position7; // 专业技术职位
	private String placeUnitKey7; // 所在单位
	private String teachTopic7;// 讲授题目
	private String period7;// 学时数
	private String grantCredit;

	public String getGrantCredit() {
		return grantCredit;
	}

	public void setGrantCredit(String grantCredit) {
		this.grantCredit = grantCredit;
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

	public String getHostPlace() {
		return hostPlace;
	}

	public void setHostPlace(String hostPlace) {
		this.hostPlace = hostPlace;
	}

	public String getGrandCredit() {
		return grandCredit;
	}

	public void setGrandCredit(String grandCredit) {
		this.grandCredit = grandCredit;
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

	public String getDeclareNumber() {
		return declareNumber;
	}

	public void setDeclareNumber(String declareNumber) {
		this.declareNumber = declareNumber;
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

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getCreaterKey() {
		return createrKey;
	}

	public void setCreaterKey(String createrKey) {
		this.createrKey = createrKey;
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

	public String getDeclareState() {
		return declareState;
	}

	public void setDeclareState(String declareState) {
		this.declareState = declareState;
	}

	public String getDeleteFlag() {
		return deleteFlag;
	}

	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
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

	public String getHostDay() {
		return hostDay;
	}

	public void setHostDay(String hostDay) {
		this.hostDay = hostDay;
	}

	public String getPeriod() {
		return period;
	}

	public void setPeriod(String period) {
		this.period = period;
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

	public String getTeachTopic1() {
		return teachTopic1;
	}

	public void setTeachTopic1(String teachTopic1) {
		this.teachTopic1 = teachTopic1;
	}

	public String getPeriod1() {
		return period1;
	}

	public void setPeriod1(String period1) {
		this.period1 = period1;
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

	public String getTeachTopic2() {
		return teachTopic2;
	}

	public void setTeachTopic2(String teachTopic2) {
		this.teachTopic2 = teachTopic2;
	}

	public String getPeriod2() {
		return period2;
	}

	public void setPeriod2(String period2) {
		this.period2 = period2;
	}

	public String getMemberKey3() {
		return memberKey3;
	}

	public void setMemberKey3(String memberKey3) {
		this.memberKey3 = memberKey3;
	}

	public String getName3() {
		return name3;
	}

	public void setName3(String name3) {
		this.name3 = name3;
	}

	public String getPosition3() {
		return position3;
	}

	public void setPosition3(String position3) {
		this.position3 = position3;
	}

	public String getPlaceUnitKey3() {
		return placeUnitKey3;
	}

	public void setPlaceUnitKey3(String placeUnitKey3) {
		this.placeUnitKey3 = placeUnitKey3;
	}

	public String getTeachTopic3() {
		return teachTopic3;
	}

	public void setTeachTopic3(String teachTopic3) {
		this.teachTopic3 = teachTopic3;
	}

	public String getPeriod3() {
		return period3;
	}

	public void setPeriod3(String period3) {
		this.period3 = period3;
	}

	public String getMemberKey4() {
		return memberKey4;
	}

	public void setMemberKey4(String memberKey4) {
		this.memberKey4 = memberKey4;
	}

	public String getName4() {
		return name4;
	}

	public void setName4(String name4) {
		this.name4 = name4;
	}

	public String getPosition4() {
		return position4;
	}

	public void setPosition4(String position4) {
		this.position4 = position4;
	}

	public String getPlaceUnitKey4() {
		return placeUnitKey4;
	}

	public void setPlaceUnitKey4(String placeUnitKey4) {
		this.placeUnitKey4 = placeUnitKey4;
	}

	public String getTeachTopic4() {
		return teachTopic4;
	}

	public void setTeachTopic4(String teachTopic4) {
		this.teachTopic4 = teachTopic4;
	}

	public String getPeriod4() {
		return period4;
	}

	public void setPeriod4(String period4) {
		this.period4 = period4;
	}

	public String getMemberKey5() {
		return memberKey5;
	}

	public void setMemberKey5(String memberKey5) {
		this.memberKey5 = memberKey5;
	}

	public String getName5() {
		return name5;
	}

	public void setName5(String name5) {
		this.name5 = name5;
	}

	public String getPosition5() {
		return position5;
	}

	public void setPosition5(String position5) {
		this.position5 = position5;
	}

	public String getPlaceUnitKey5() {
		return placeUnitKey5;
	}

	public void setPlaceUnitKey5(String placeUnitKey5) {
		this.placeUnitKey5 = placeUnitKey5;
	}

	public String getTeachTopic5() {
		return teachTopic5;
	}

	public void setTeachTopic5(String teachTopic5) {
		this.teachTopic5 = teachTopic5;
	}

	public String getPeriod5() {
		return period5;
	}

	public void setPeriod5(String period5) {
		this.period5 = period5;
	}

	public String getMemberKey6() {
		return memberKey6;
	}

	public void setMemberKey6(String memberKey6) {
		this.memberKey6 = memberKey6;
	}

	public String getName6() {
		return name6;
	}

	public void setName6(String name6) {
		this.name6 = name6;
	}

	public String getPosition6() {
		return position6;
	}

	public void setPosition6(String position6) {
		this.position6 = position6;
	}

	public String getPlaceUnitKey6() {
		return placeUnitKey6;
	}

	public void setPlaceUnitKey6(String placeUnitKey6) {
		this.placeUnitKey6 = placeUnitKey6;
	}

	public String getTeachTopic6() {
		return teachTopic6;
	}

	public void setTeachTopic6(String teachTopic6) {
		this.teachTopic6 = teachTopic6;
	}

	public String getPeriod6() {
		return period6;
	}

	public void setPeriod6(String period6) {
		this.period6 = period6;
	}

	public String getMemberKey7() {
		return memberKey7;
	}

	public void setMemberKey7(String memberKey7) {
		this.memberKey7 = memberKey7;
	}

	public String getName7() {
		return name7;
	}

	public void setName7(String name7) {
		this.name7 = name7;
	}

	public String getPosition7() {
		return position7;
	}

	public void setPosition7(String position7) {
		this.position7 = position7;
	}

	public String getPlaceUnitKey7() {
		return placeUnitKey7;
	}

	public void setPlaceUnitKey7(String placeUnitKey7) {
		this.placeUnitKey7 = placeUnitKey7;
	}

	public String getTeachTopic7() {
		return teachTopic7;
	}

	public void setTeachTopic7(String teachTopic7) {
		this.teachTopic7 = teachTopic7;
	}

	public String getPeriod7() {
		return period7;
	}

	public void setPeriod7(String period7) {
		this.period7 = period7;
	}

	public String getHostUnit() {
		return hostUnit;
	}

	public void setHostUnit(String hostUnit) {
		this.hostUnit = hostUnit;
	}

	public String getInSubject() {
		return inSubject;
	}

	public void setInSubject(String inSubject) {
		this.inSubject = inSubject;
	}
}
