package com.shxt.cme.domain;

public class Academy {
	public String getAcademyKey() {
		return academyKey;
	}

	public void setAcademyKey(String academyKey) {
		this.academyKey = academyKey;
	}
	private String academyKey;
	private String academyName;
	private String academyLevel;
	private String upAcademyKey;
	public String getAcademyName() {
		return academyName;
	}

	public void setAcademyName(String academyName) {
		this.academyName = academyName;
	}

	public String getAcademyLevel() {
		return academyLevel;
	}

	public void setAcademyLevel(String academyLevel) {
		this.academyLevel = academyLevel;
	}

	public String getUpAcademyKey() {
		return upAcademyKey;
	}

	public void setUpAcademyKey(String upAcademyKey) {
		this.upAcademyKey = upAcademyKey;
	}

}
