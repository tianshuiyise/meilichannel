package com.shxt.cme.domain;

public class Subject {

	private String subjectKey;
	private String subjectName;
	private String subjectNumber;//==subjictId
	private String subjectType;//学科类型
	private String subjectLevel;//二、三级
	private String relateSubjectKey;
	
	public String getSubjectLevel() {
		return subjectLevel;
	}
	public void setSubjectLevel(String subjectLevel) {
		this.subjectLevel = subjectLevel;
	}
	public String getRelateSubjectKey() {
		return relateSubjectKey;
	}
	public void setRelateSubjectKey(String relateSubjectKey) {
		this.relateSubjectKey = relateSubjectKey;
	}
	public String getSubjectType() {
		return subjectType;
	}
	public void setSubjectType(String subjectType) {
		this.subjectType = subjectType;
	}
	public String getSubjectKey() {
		return subjectKey;
	}
	public void setSubjectKey(String subjectKey) {
		this.subjectKey = subjectKey;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public String getSubjectNumber() {
		return subjectNumber;
	}
	public void setSubjectNumber(String subjectNumber) {
		this.subjectNumber = subjectNumber;
	}
	
	
	
}
