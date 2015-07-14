package com.shxt.cme.domain;

public class Position {

	private String positionKey;
	private String positionName;
	private String positionLevel;
	private String upPositionKey;
	public String getUpPositionKey() {
		return upPositionKey;
	}
	public void setUpPositionKey(String upPositionKey) {
		this.upPositionKey = upPositionKey;
	}
	public String getPositionKey() {
		return positionKey;
	}
	public void setPositionKey(String positionKey) {
		this.positionKey = positionKey;
	}
	public String getPositionName() {
		return positionName;
	}
	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}
	public String getPositionLevel() {
		return positionLevel;
	}
	public void setPositionLevel(String positionLevel) {
		this.positionLevel = positionLevel;
	}

	
}
