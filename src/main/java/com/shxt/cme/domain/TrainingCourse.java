package com.shxt.cme.domain;

public class TrainingCourse {

	private String trainingKey; // 培训班主键
	private String projectName; // 项目名称
	private String inSubject; // 所在学科（二、三级学科）
	private String hostPurpose; // 举办目的
	private String topicAndDescribe; // 项目讲授题目及内容简介
	private String levelAndStatus; // 项目水平及在国内外的地位
	private String relatedJobDescribe; // 主办单位近几年与项目有关的工作概况
	private String hostWay; // 举办方式
	private String charge; // 拟收费标准
	private String startingTime; // 起始时间
	private String endingTime; // 结束时间
	private String hostDeadline; // 举办期限（天）
	private String evaluationMethod; // 考核方式
	private String participant; // 教学对象
	private String takeInNumber; // 拟招生人数
	private String period; // 教学总学时数
	private String theoryPeriod; // 讲授理论学时数
	private String experimentPeriod; // 实验（技术示范）学时数
	private String hostPlace; // 举办地点
	private String grantCredit; // 拟授学员学分
	private String hostUnitKey; // 举办单位
	private String createrKey; // 创建者
	private String createDate; // 创建时间
	private String modifierKey; // 修改者
	private String modifyDate; // 修改时间
	private String deleteFlag; // 删除标记
	private String declareCode; // 申报编码
	private String modifyState; // 修改状态：0可修改，1不可修改
	private String declareTime; // 申报时间
	private String projectType; // 项目类型：0中医，1西医
	private String roleType;  //角色类型
	private String unitCode;//单位编码
	private String unitName;//单位编码
	private String secondSubject;
	private String declareState;    //申报状态：0未申报，1已申报
	private String LeaderName;
	private String leaderPhone;
	private String hostSecondPlace;
	private String standbyPlace;
	private String unitOpinion;
	private String approvalTime;
	private String subjectName;
	//专家意见字段显示
	private String expertOpinionKey;   //专家主键
	private String ynAgree;        //是否同意立项
	private String opinionDetail;   //专家意见
	private String definedOpinion;  //专家自定义意见
	private String projectRemark;
	private String opinionState;
	
	// 项目负责人
	private String memberKey1;
	private String name1; // 姓名
	private String position1; // 专业技术职位
	private String position21; // 专业技术职位
	private String placeUnitKey1; // 所在单位
	private String teachTopic1; // 讲授题目
	private String period1; // 学时数
	private String memberType1; // 成员类型：项目负责人、主要讲师、主持人、主讲人
	private String phone1; // 联系方式
	private String postalAddress1; // 通信地址
	private String postcode1; // 邮编
	private String notInUnit1;//不在单位列表中存此

	// 主要讲师
	private String memberKey2;
	private String name2; // 姓名
	private String position2; // 专业技术职位
	private String position22; // 专业技术职位
	private String placeUnitKey2; // 所在单位
	private String teachTopic2; // 讲授题目
	private String period2; // 学时数
	private String memberType2; // 成员类型：项目负责人、主要讲师、主持人、主讲人
	private String notInUnit2;//不在单位列表中存此
	
	// 主要讲师2
		private String memberKey3;
		private String name3; // 姓名
		private String position3; // 专业技术职位
		private String position23; // 专业技术职位
		private String placeUnitKey3; // 所在单位
		private String teachTopic3; // 讲授题目
		private String period3; // 学时数
		private String memberType3; // 成员类型：项目负责人、主要讲师、主持人、主讲人
		private String notInUnit3;//不在单位列表中存此
		// 主要讲师3
		private String memberKey4;
		private String name4; // 姓名
		private String position4; // 专业技术职位
		private String position24; // 专业技术职位
		private String placeUnitKey4; // 所在单位
		private String teachTopic4; // 讲授题目
		private String period4; // 学时数
		private String memberType4; // 成员类型：项目负责人、主要讲师、主持人、主讲人
		private String notInUnit4;//不在单位列表中存此
		// 主要讲师4
		private String memberKey5;
		private String name5; // 姓名
		private String position5; // 专业技术职位
		private String position25; // 专业技术职位
		private String placeUnitKey5; // 所在单位
		private String teachTopic5; // 讲授题目
		private String period5; // 学时数
		private String memberType5; // 成员类型：项目负责人、主要讲师、主持人、主讲人
		private String notInUnit5;//不在单位列表中存此
		// 主要讲师1
		private String memberKey6;
		private String name6; // 姓名
		private String position6; // 专业技术职位
		private String position26; // 专业技术职位
		private String placeUnitKey6; // 所在单位
		private String teachTopic6; // 讲授题目
		private String period6; // 学时数
		private String memberType6; // 成员类型：项目负责人、主要讲师、主持人、主讲人
		private String notInUnit6;//不在单位列表中存此
		// 主要讲师1
		private String memberKey7;
		private String name7; // 姓名
		private String position7; // 专业技术职位
		private String position27; // 专业技术职位
		private String placeUnitKey7; // 所在单位
		private String teachTopic7; // 讲授题目
		private String period7; // 学时数
		private String memberType7; // 成员类型：项目负责人、主要讲师、主持人、主讲人
		private String notInUnit7;//不在单位列表中存此
		// 主要讲师1
		private String memberKey8;
		private String name8; // 姓名
		private String position8; // 专业技术职位
		private String position28; // 专业技术职位
		private String placeUnitKey8; // 所在单位
		private String teachTopic8; // 讲授题目
		private String period8; // 学时数
		private String memberType8; // 成员类型：项目负责人、主要讲师、主持人、主讲人
		private String notInUnit8;//不在单位列表中存此
		// 主要讲师1
		private String memberKey9;
		private String name9; // 姓名
		private String position9; // 专业技术职位
		private String position29; // 专业技术职位
		private String placeUnitKey9; // 所在单位
		private String teachTopic9; // 讲授题目
		private String period9; // 学时数
		private String memberType9; // 成员类型：项目负责人、主要讲师、主持人、主讲人
		private String notInUnit9;//不在单位列表中存此
		// 主要讲师1
		private String memberKey10;
		private String name10; // 姓名
		private String position10; // 专业技术职位
		private String position30; // 专业技术职位
		private String placeUnitKey10; // 所在单位
		private String teachTopic10; // 讲授题目
		private String period10; // 学时数
		private String memberType10; // 成员类型：项目负责人、主要讲师、主持人、主讲人
		private String notInUnit10;//不在单位列表中存此
		// 主要讲师1
		private String memberKey11;
		private String name11; // 姓名
		private String position11; // 专业技术职位
		private String position31; // 专业技术职位
		private String placeUnitKey11; // 所在单位
		private String teachTopic11; // 讲授题目
		private String period11; // 学时数
		private String memberType11; // 成员类型：项目负责人、主要讲师、主持人、主讲人
		private String notInUnit11;//不在单位列表中存此
		// 主要讲师1
		private String memberKey12;
		private String name12; // 姓名
		private String position12; // 专业技术职位
		private String position32; // 专业技术职位
		private String placeUnitKey12; // 所在单位
		private String teachTopic12; // 讲授题目
		private String period12; // 学时数
		private String memberType12; // 成员类型：项目负责人、主要讲师、主持人、主讲人
		private String notInUnit12;//不在单位列表中存此
		// 主要讲师1
		private String memberKey13;
		private String name13; // 姓名
		private String position13; // 专业技术职位
		private String position33; // 专业技术职位
		private String placeUnitKey13; // 所在单位
		private String teachTopic13; // 讲授题目
		private String period13; // 学时数
		private String memberType13; // 成员类型：项目负责人、主要讲师、主持人、主讲人
		private String notInUnit13;//不在单位列表中存此
		
		//jjwh审批字段
		private String approveKey;
		private String approveAgree;
		private String opinion;
		private String userKey;
		private String projectKey;
		private String approveTime;
		private String expertIsChecked;
		
		//jjwb提交及修改意见字段
		private String submitState; //提交状态
		private String agreeToSetup;//是否同意立项
		private String agreeOpinion; //原因
		
		
		private String newGrandCredit;//新该学分
		private String newPeriod;  //新改学时
		private String newName;  //新改项目名称
		private String approveOpinion;//jjw审批意见
		
		
		
		
		
	
	
	public String getApproveOpinion() {
			return approveOpinion;
		}

		public void setApproveOpinion(String approveOpinion) {
			this.approveOpinion = approveOpinion;
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

	public String getExpertIsChecked() {
			return expertIsChecked;
		}

		public void setExpertIsChecked(String expertIsChecked) {
			this.expertIsChecked = expertIsChecked;
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

		public String getApproveTime() {
			return approveTime;
		}

		public void setApproveTime(String approveTime) {
			this.approveTime = approveTime;
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

		public String getOpinionState() {
			return opinionState;
		}

		public void setOpinionState(String opinionState) {
			this.opinionState = opinionState;
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

		public String getNotInUnit3() {
			return notInUnit3;
		}

		public void setNotInUnit3(String notInUnit3) {
			this.notInUnit3 = notInUnit3;
		}

		public String getNotInUnit4() {
			return notInUnit4;
		}

		public void setNotInUnit4(String notInUnit4) {
			this.notInUnit4 = notInUnit4;
		}

		public String getNotInUnit5() {
			return notInUnit5;
		}

		public void setNotInUnit5(String notInUnit5) {
			this.notInUnit5 = notInUnit5;
		}

		public String getNotInUnit6() {
			return notInUnit6;
		}

		public void setNotInUnit6(String notInUnit6) {
			this.notInUnit6 = notInUnit6;
		}

		public String getNotInUnit7() {
			return notInUnit7;
		}

		public void setNotInUnit7(String notInUnit7) {
			this.notInUnit7 = notInUnit7;
		}

		public String getNotInUnit8() {
			return notInUnit8;
		}

		public void setNotInUnit8(String notInUnit8) {
			this.notInUnit8 = notInUnit8;
		}

		public String getNotInUnit9() {
			return notInUnit9;
		}

		public void setNotInUnit9(String notInUnit9) {
			this.notInUnit9 = notInUnit9;
		}

		public String getNotInUnit10() {
			return notInUnit10;
		}

		public void setNotInUnit10(String notInUnit10) {
			this.notInUnit10 = notInUnit10;
		}

		public String getNotInUnit11() {
			return notInUnit11;
		}

		public void setNotInUnit11(String notInUnit11) {
			this.notInUnit11 = notInUnit11;
		}

		public String getNotInUnit12() {
			return notInUnit12;
		}

		public void setNotInUnit12(String notInUnit12) {
			this.notInUnit12 = notInUnit12;
		}

		public String getNotInUnit13() {
			return notInUnit13;
		}

		public void setNotInUnit13(String notInUnit13) {
			this.notInUnit13 = notInUnit13;
		}

	public String getPosition21() {
			return position21;
		}

		public void setPosition21(String position21) {
			this.position21 = position21;
		}

		public String getPosition22() {
			return position22;
		}

		public void setPosition22(String position22) {
			this.position22 = position22;
		}

		public String getPosition23() {
			return position23;
		}

		public void setPosition23(String position23) {
			this.position23 = position23;
		}

		public String getPosition24() {
			return position24;
		}

		public void setPosition24(String position24) {
			this.position24 = position24;
		}

		public String getPosition25() {
			return position25;
		}

		public void setPosition25(String position25) {
			this.position25 = position25;
		}

		public String getPosition26() {
			return position26;
		}

		public void setPosition26(String position26) {
			this.position26 = position26;
		}

		public String getPosition27() {
			return position27;
		}

		public void setPosition27(String position27) {
			this.position27 = position27;
		}

		public String getPosition28() {
			return position28;
		}

		public void setPosition28(String position28) {
			this.position28 = position28;
		}

		public String getPosition29() {
			return position29;
		}

		public void setPosition29(String position29) {
			this.position29 = position29;
		}

		public String getPosition30() {
			return position30;
		}

		public void setPosition30(String position30) {
			this.position30 = position30;
		}

		public String getPosition31() {
			return position31;
		}

		public void setPosition31(String position31) {
			this.position31 = position31;
		}

		public String getPosition32() {
			return position32;
		}

		public void setPosition32(String position32) {
			this.position32 = position32;
		}

		public String getPosition33() {
			return position33;
		}

		public void setPosition33(String position33) {
			this.position33 = position33;
		}

	public String getDeclareState() {
			return declareState;
		}

		public void setDeclareState(String declareState) {
			this.declareState = declareState;
		}

	public String getSecondSubject() {
			return secondSubject;
		}

		public void setSecondSubject(String secondSubject) {
			this.secondSubject = secondSubject;
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

		public String getMemberType3() {
			return memberType3;
		}

		public void setMemberType3(String memberType3) {
			this.memberType3 = memberType3;
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

		public String getMemberType4() {
			return memberType4;
		}

		public void setMemberType4(String memberType4) {
			this.memberType4 = memberType4;
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

		public String getMemberType5() {
			return memberType5;
		}

		public void setMemberType5(String memberType5) {
			this.memberType5 = memberType5;
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

		public String getMemberType6() {
			return memberType6;
		}

		public void setMemberType6(String memberType6) {
			this.memberType6 = memberType6;
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

		public String getMemberType7() {
			return memberType7;
		}

		public void setMemberType7(String memberType7) {
			this.memberType7 = memberType7;
		}

		public String getMemberKey8() {
			return memberKey8;
		}

		public void setMemberKey8(String memberKey8) {
			this.memberKey8 = memberKey8;
		}

		public String getName8() {
			return name8;
		}

		public void setName8(String name8) {
			this.name8 = name8;
		}

		public String getPosition8() {
			return position8;
		}

		public void setPosition8(String position8) {
			this.position8 = position8;
		}

		public String getPlaceUnitKey8() {
			return placeUnitKey8;
		}

		public void setPlaceUnitKey8(String placeUnitKey8) {
			this.placeUnitKey8 = placeUnitKey8;
		}

		public String getTeachTopic8() {
			return teachTopic8;
		}

		public void setTeachTopic8(String teachTopic8) {
			this.teachTopic8 = teachTopic8;
		}

		public String getPeriod8() {
			return period8;
		}

		public void setPeriod8(String period8) {
			this.period8 = period8;
		}

		public String getMemberType8() {
			return memberType8;
		}

		public void setMemberType8(String memberType8) {
			this.memberType8 = memberType8;
		}

		public String getMemberKey9() {
			return memberKey9;
		}

		public void setMemberKey9(String memberKey9) {
			this.memberKey9 = memberKey9;
		}

		public String getName9() {
			return name9;
		}

		public void setName9(String name9) {
			this.name9 = name9;
		}

		public String getPosition9() {
			return position9;
		}

		public void setPosition9(String position9) {
			this.position9 = position9;
		}

		public String getPlaceUnitKey9() {
			return placeUnitKey9;
		}

		public void setPlaceUnitKey9(String placeUnitKey9) {
			this.placeUnitKey9 = placeUnitKey9;
		}

		public String getTeachTopic9() {
			return teachTopic9;
		}

		public void setTeachTopic9(String teachTopic9) {
			this.teachTopic9 = teachTopic9;
		}

		public String getPeriod9() {
			return period9;
		}

		public void setPeriod9(String period9) {
			this.period9 = period9;
		}

		public String getMemberType9() {
			return memberType9;
		}

		public void setMemberType9(String memberType9) {
			this.memberType9 = memberType9;
		}

		public String getMemberKey10() {
			return memberKey10;
		}

		public void setMemberKey10(String memberKey10) {
			this.memberKey10 = memberKey10;
		}

		public String getName10() {
			return name10;
		}

		public void setName10(String name10) {
			this.name10 = name10;
		}

		public String getPosition10() {
			return position10;
		}

		public void setPosition10(String position10) {
			this.position10 = position10;
		}

		public String getPlaceUnitKey10() {
			return placeUnitKey10;
		}

		public void setPlaceUnitKey10(String placeUnitKey10) {
			this.placeUnitKey10 = placeUnitKey10;
		}

		public String getTeachTopic10() {
			return teachTopic10;
		}

		public void setTeachTopic10(String teachTopic10) {
			this.teachTopic10 = teachTopic10;
		}

		public String getPeriod10() {
			return period10;
		}

		public void setPeriod10(String period10) {
			this.period10 = period10;
		}

		public String getMemberType10() {
			return memberType10;
		}

		public void setMemberType10(String memberType10) {
			this.memberType10 = memberType10;
		}

		public String getMemberKey11() {
			return memberKey11;
		}

		public void setMemberKey11(String memberKey11) {
			this.memberKey11 = memberKey11;
		}

		public String getName11() {
			return name11;
		}

		public void setName11(String name11) {
			this.name11 = name11;
		}

		public String getPosition11() {
			return position11;
		}

		public void setPosition11(String position11) {
			this.position11 = position11;
		}

		public String getPlaceUnitKey11() {
			return placeUnitKey11;
		}

		public void setPlaceUnitKey11(String placeUnitKey11) {
			this.placeUnitKey11 = placeUnitKey11;
		}

		public String getTeachTopic11() {
			return teachTopic11;
		}

		public void setTeachTopic11(String teachTopic11) {
			this.teachTopic11 = teachTopic11;
		}

		public String getPeriod11() {
			return period11;
		}

		public void setPeriod11(String period11) {
			this.period11 = period11;
		}

		public String getMemberType11() {
			return memberType11;
		}

		public void setMemberType11(String memberType11) {
			this.memberType11 = memberType11;
		}

		public String getMemberKey12() {
			return memberKey12;
		}

		public void setMemberKey12(String memberKey12) {
			this.memberKey12 = memberKey12;
		}

		public String getName12() {
			return name12;
		}

		public void setName12(String name12) {
			this.name12 = name12;
		}

		public String getPosition12() {
			return position12;
		}

		public void setPosition12(String position12) {
			this.position12 = position12;
		}

		public String getPlaceUnitKey12() {
			return placeUnitKey12;
		}

		public void setPlaceUnitKey12(String placeUnitKey12) {
			this.placeUnitKey12 = placeUnitKey12;
		}

		public String getTeachTopic12() {
			return teachTopic12;
		}

		public void setTeachTopic12(String teachTopic12) {
			this.teachTopic12 = teachTopic12;
		}

		public String getPeriod12() {
			return period12;
		}

		public void setPeriod12(String period12) {
			this.period12 = period12;
		}

		public String getMemberType12() {
			return memberType12;
		}

		public void setMemberType12(String memberType12) {
			this.memberType12 = memberType12;
		}

		public String getMemberKey13() {
			return memberKey13;
		}

		public void setMemberKey13(String memberKey13) {
			this.memberKey13 = memberKey13;
		}

		public String getName13() {
			return name13;
		}

		public void setName13(String name13) {
			this.name13 = name13;
		}

		public String getPosition13() {
			return position13;
		}

		public void setPosition13(String position13) {
			this.position13 = position13;
		}

		public String getPlaceUnitKey13() {
			return placeUnitKey13;
		}

		public void setPlaceUnitKey13(String placeUnitKey13) {
			this.placeUnitKey13 = placeUnitKey13;
		}

		public String getTeachTopic13() {
			return teachTopic13;
		}

		public void setTeachTopic13(String teachTopic13) {
			this.teachTopic13 = teachTopic13;
		}

		public String getPeriod13() {
			return period13;
		}

		public void setPeriod13(String period13) {
			this.period13 = period13;
		}

		public String getMemberType13() {
			return memberType13;
		}

		public void setMemberType13(String memberType13) {
			this.memberType13 = memberType13;
		}

	public String getUnitCode() {
		return unitCode;
	}

	public void setUnitCode(String unitCode) {
		this.unitCode = unitCode;
	}

	public String getRoleType() {
		return roleType;
	}

	public void setRoleType(String roleType) {
		this.roleType = roleType;
	}

	public String getTrainingKey() {
		return trainingKey;
	}

	public void setTrainingKey(String trainingKey) {
		this.trainingKey = trainingKey;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getInSubject() {
		return inSubject;
	}

	public void setInSubject(String inSubject) {
		this.inSubject = inSubject;
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

	public String getLevelAndStatus() {
		return levelAndStatus;
	}

	public void setLevelAndStatus(String levelAndStatus) {
		this.levelAndStatus = levelAndStatus;
	}

	public String getRelatedJobDescribe() {
		return relatedJobDescribe;
	}

	public void setRelatedJobDescribe(String relatedJobDescribe) {
		this.relatedJobDescribe = relatedJobDescribe;
	}

	public String getHostWay() {
		return hostWay;
	}

	public void setHostWay(String hostWay) {
		this.hostWay = hostWay;
	}

	public String getCharge() {
		return charge;
	}

	public void setCharge(String charge) {
		this.charge = charge;
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

	public String getHostDeadline() {
		return hostDeadline;
	}

	public void setHostDeadline(String hostDeadline) {
		this.hostDeadline = hostDeadline;
	}

	public String getEvaluationMethod() {
		return evaluationMethod;
	}

	public void setEvaluationMethod(String evaluationMethod) {
		this.evaluationMethod = evaluationMethod;
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

	public String getPostcode1() {
		return postcode1;
	}

	public void setPostcode1(String postcode1) {
		this.postcode1 = postcode1;
	}

	public String getPeriod() {
		return period;
	}

	public void setPeriod(String period) {
		this.period = period;
	}

	public String getTheoryPeriod() {
		return theoryPeriod;
	}

	public void setTheoryPeriod(String theoryPeriod) {
		this.theoryPeriod = theoryPeriod;
	}

	public String getExperimentPeriod() {
		return experimentPeriod;
	}

	public void setExperimentPeriod(String experimentPeriod) {
		this.experimentPeriod = experimentPeriod;
	}

	public String getHostPlace() {
		return hostPlace;
	}

	public void setHostPlace(String hostPlace) {
		this.hostPlace = hostPlace;
	}

	public String getGrantCredit() {
		return grantCredit;
	}

	public void setGrantCredit(String grantCredit) {
		this.grantCredit = grantCredit;
	}

	public String getHostUnitKey() {
		return hostUnitKey;
	}

	public void setHostUnitKey(String hostUnitKey) {
		this.hostUnitKey = hostUnitKey;
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

	public String getDeclareTime() {
		return declareTime;
	}

	public void setDeclareTime(String declareTime) {
		this.declareTime = declareTime;
	}

	public String getProjectType() {
		return projectType;
	}

	public void setProjectType(String projectType) {
		this.projectType = projectType;
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

	public String getMemberType2() {
		return memberType2;
	}

	public void setMemberType2(String memberType2) {
		this.memberType2 = memberType2;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPostalAddress1() {
		return postalAddress1;
	}

	public void setPostalAddress1(String postalAddress1) {
		this.postalAddress1 = postalAddress1;
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
}
